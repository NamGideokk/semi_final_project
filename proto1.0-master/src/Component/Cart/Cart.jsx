import React, { useState, useEffect, useMemo, useRef } from "react";
import { useDispatch } from "react-redux";

import {
  removeCart,
  showCart,
  updateCart,
} from "../../_redux/actions/cart_action";

function Cart() {
  const [carts, setCarts] = useState([]);
  const [count, setCount] = useState("");
  const [isChecked, setChecked] = useState(true);
  const [checkedItems, setCheckedItems] = useState(new Set());
  const [CheckList, setCheckList] = useState([]);
  const [isAllChecked, setIsAllChecked] = useState(true);
  const allCheckedHandler = (event) => {
    if (event.target.checked) {
      setCheckedItems(new Set(carts.map((cart) => cart.id)));
      setIsAllChecked(true);
    } else {
      checkedItems.clear();
      setCheckedItems(setCheckedItems);
      setIsAllChecked(false);
    }
  };

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
      result.map((cart) => {
        checkedItems.add(cart.id);
      });
    });
  }, []);

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

  /**
   *
   * @param {*} id (cartId)
   * 카트 제거하기
   */
  const remove = (id) => {
    setCarts((carts) => {
      return carts.filter((cart) => cart.id !== id);
    }, []);
    dispatch(removeCart(id));
  };

  useEffect(() => {
    dispatch(showCart).payload.then((result) => {
      setCarts(result);
    });
  }, [count, isChecked]);

  if (carts.length === 0) {
    return <div>장바구니가 비어있습니다</div>;
  }

  return (
    <>
      <input
        type="checkbox"
        defaultChecked={isAllChecked}
        onChange={(e) => allCheckedHandler(e)}
      />
      {carts.map((cart) => {
        const id = cart.id;
        const deleteClick = () => {
          remove(id);
        };
        return (
          <div className="root" key={id}>
            <ul>
              <input
                type="checkbox"
                defaultChecked={isChecked}
                onChange={(e) => checkHandler(e, id)}
              />
              <li>{cart.salesProductInfo.productInfo.images}</li>
              <li>{cart.salesProductInfo.salesPageInfo.name}</li>
              <li>{cart.salesProductInfo.productInfo.price}</li>
              <li>{cart.qty * cart.salesProductInfo.productInfo.price}</li>
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
              </select>
              <button className="btn btn--delete" onClick={deleteClick}>
                삭제
              </button>
            </ul>
          </div>
        );
      })}
      <div className="totalPrice">
        <h3>Total</h3>
        <h4>{totalPrice}</h4>
      </div>
    </>
  );
}
export default Cart;
