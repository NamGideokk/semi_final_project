import "./PurchasePage.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { useDispatch } from "react-redux";
import { useSearchParams, useNavigate } from 'react-router-dom';

import {
  faCoins,
  faShoppingBasket,
  faTicketAlt,
  faTimes,
} from "@fortawesome/free-solid-svg-icons";
import { useEffect, useMemo, useRef, useState, useCallback } from "react";
import {
  removeCart,
  showCart,
  updateCart,
} from "../_redux/actions/cart_action";



//마이페이지 -> 장바구니 탭 컨테이너
const CartContainer = () => {
  const navigate = useNavigate();
  const [searchParams] = useSearchParams();

  const [carts, setCarts] = useState([]);
  const [count, setCount] = useState("");
  const [isChecked, setChecked] = useState(true);
  const [checkedItems, setCheckedItems] = useState(new Set());

  const onClickOrder = useCallback(() => {
    searchParams.delete('cartIds');
    searchParams.set('type', 'cart');
    checkedItems.forEach((v) => searchParams.append('cartIds', v));
    navigate({
      pathname: '/payment',
      search: searchParams.toString(),
    });
  });

  const checkHandler = ({ target }, id) => {
    console.log(isChecked);
    setChecked(!isChecked);
    console.log(id);
    checkedItemHandler(id, target.checked);
  };

  const checkedItemHandler = (id, isChecked) => {
    console.log(isChecked);
    console.log(checkedItems);
    if (isChecked) {
      checkedItems.add(id);
      setCheckedItems(checkedItems);
      console.log(checkedItems);
    } else if (!isChecked && checkedItems.has(id)) {
      checkedItems.delete(id);
      setCheckedItems(checkedItems);
      console.log(checkedItems);
    }
    return checkedItems;
  };

  const dispatch = useDispatch();

  useEffect(() => {
    dispatch(showCart).payload.then((result) => {
      setCarts(result);
    });
  }, [count]);

  const remove = (id) => {
    setCarts((carts) => {
      return carts.filter((cart) => cart.id !== id);
    }, []);
    dispatch(removeCart(id));
  };

  useEffect(() => {
    dispatch(showCart).payload.then((result) => {
      result.map((cart) => {
        checkedItems.add(cart.id);
      });
    });
  }, []);

  /**
   *
   * @param {*} event
   * @param {*} cartId
   * 개수 변경하기
   */
  const qtyChange = (event, cartId) => {
    updateCart(cartId.id, event.target.value).payload.then((result) => {
      setCount(event.target.value);
    });
  };

  useEffect(() => {
    dispatch(showCart).payload.then((result) => {
      setCarts(result);
    });
  }, [count, isChecked]);

  /**
   * 총 가격 구하기
   */
  const totalPrice = useMemo(() => {
    return carts
      .map((cart) => {
        if (checkedItems.has(cart.id)) {
          const price = cart.salesProductInfo.productInfo.price;
          const qty = cart.qty;
          return price * qty;
        } else {
          return 0;
        }
      })
      .reduce((left, right) => left + right, 0);
  }, [carts]);
  /**
   * qty 개수 랜더링하기
   */
  let defaultValue = 0;
  const rendering = (qty) => {
    const result = [];
    for (let i = 1; i < qty; i++) {
      result.push(
        <option value={i} key={i}>
          {i}
        </option>
      );
    }
    return result;
  };

  /**
   * 카트에 값이 없을 때 출력될 UI
   */
  if (carts.length === 0) {
    return <div className="empty-cart"
                style={{
                  color: "var(--font-light)",
                  width:"100%",
                  height:"200px",
                  textAlign: "center",
                  paddingTop: "50px",

                }}><FontAwesomeIcon icon={faShoppingBasket}
                style={{
                  fontSize:"50px",
                  marginBottom: "20px"
                }}

                /><br/>
                  장바구니가 비어있습니다</div>;
  }
  return (
    <>
      {carts.map((cart) => {
        const id = cart.id;
        const clickDelete = () => {
          remove(id);
        };
        /**
         * 리턴
         */
        return (
          <div className="root" key={id}>
            <div className="purchase-product-container">
              <div className="ppc1">
                <div className="ppc1-img-container">
                  <img
                    src={cart.salesProductInfo.productInfo.images.length
                      ? process.env.REACT_APP_BACKEND_HOST.concat(cart.salesProductInfo.productInfo.images[0])
                      : null}
                    alt={cart.salesProductInfo.productInfo.name}
                  />
                </div>
              </div>
              <div className="ppc2-copy">
                <p title="상품명">{cart.salesProductInfo.productInfo.name}</p>
                <p>{cart.salesProductInfo.productInfo.price} 원</p>
              </div>
              <div className="ppc3-copy">
                <select
                  defaultValue={
                    (defaultValue =
                      cart.qty <= cart.salesProductInfo.productInfo.stockCount
                        ? cart.qty
                        : cart.salesProductInfo.productInfo.stockCount)
                  }
                  name="qty"
                  onChange={(event) => qtyChange(event, { id })}
                >
                  {rendering(cart.salesProductInfo.productInfo.stockCount)};
                </select> 개
              </div>
              <div className="ppc4">
                <p title="총 금액">
                  {cart.qty * cart.salesProductInfo.productInfo.price} 원
                </p>
              </div>
              <div className="ppc5">
                <input
                  type="checkbox"
                  defaultChecked={isChecked}
                  onChange={(e) => checkHandler(e, id)}
                />
                <p>
                  <FontAwesomeIcon
                    icon={faTimes}
                    className="prd-delete-btn"
                    title="삭제하기"
                    onClick={clickDelete}
                  />
                </p>
              </div>
            </div>
          </div>
        );
      })}
      <div className="ppc6-total-price">
        <p>총 결제금액 <h2>{totalPrice}</h2> 원</p>
        <button onClick={onClickOrder}>주문하기</button>
      </div>
    </>
  );
};

export default CartContainer;
