import React, { useEffect, useState } from "react";

import "./SellerOrder.css";

import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import {
  faAngleDoubleLeft,
  faAngleDoubleRight,
  faChevronLeft,
  faChevronRight,
} from "@fortawesome/free-solid-svg-icons";
import { useDispatch } from "react-redux";
import {
  deleteOrderState,
  sellerOrderPaging,
  showOrderCancel,
  showOrderCancelAll,
  showOrderPickup,
  showOrderPickupAll,
  showOrderReady,
  showOrderReadyAll,
  showOrderReadyFinish,
  showOrderReadyFinishAll,
  updateOrderState,
} from "../_redux/actions/sellerorder_action";

const SellerOrder = () => {
  const [clickButton, setClickButton] = useState("");
  const [orderReady, setOrderReady] = useState([]);
  const [orderReadyFinish, setOrderReadyFinish] = useState([]);
  const [orderPickup, setOrderPickup] = useState([]);
  const [orderCancel, setOrderCancel] = useState([]);
  const [renderCount, setRenderCount] = useState();

  const [orderReadyCount, setOrderReadyCount] = useState(0);
  const [orderReadyFinishCount, setOrderReadyFinishCount] = useState(0);
  const [orderPickupCount, setOrderPickupCount] = useState(0);
  const [orderCancelCount, setOrderCancelCount] = useState(0);

  const [tab, setTab] = useState(1);
  const [test, setTest] = useState(0);
  useEffect(() => {
    dispatch(showOrderReadyAll).payload.then((result) => {
      setOrderReadyCount(result.length);
    });
  }, [renderCount]);

  useEffect(() => {
    dispatch(showOrderReadyFinishAll).payload.then((result) => {
      setOrderReadyFinishCount(result.length);
    });
  }, [renderCount]);

  useEffect(() => {
    dispatch(showOrderPickupAll).payload.then((result) => {
      setOrderPickupCount(result.length);
    });
  }, [renderCount]);

  useEffect(() => {
    dispatch(showOrderCancelAll).payload.then((result) => {
      setOrderCancelCount(result.length);
    });
  }, [renderCount]);

  const dispatch = useDispatch();

  const getShowReadyOrder = async () => {
    const showReadyOrder = await dispatch(showOrderReady).payload;
  };

  useEffect(() => {
    getShowReadyOrder();
  }, []);

  useEffect(() => {
    dispatch(showOrderReady).payload.then((result) => {
      setOrderReady(result);
    });
  }, [renderCount]);

  useEffect(() => {
    dispatch(showOrderReadyFinish).payload.then((result) => {
      setOrderReadyFinish(result);
    });
  }, [renderCount]);

  useEffect(() => {
    dispatch(showOrderPickup).payload.then((result) => {
      setOrderPickup(result);
    });
  }, [renderCount]);

  useEffect(() => {
    dispatch(showOrderCancel).payload.then((result) => {
      setOrderCancel(result);
    });
  }, [renderCount]);

  //db 시간 convert
  const convertTime = (time) => {
    return new Date(time).toLocaleString("ko-kr", {
      timeZone: "Asia/Seoul",
    });
  };

  const sellerOrdering = (state, pageId) => {
    if (pageId < 0) {
      return;
    }
    if (pageId === 0) {
      setTab(1);
      setTest(0);
    } else {
      setTest(parseInt(pageId / 10));
      setTab(pageId);
    }
    if (state === 0) {
      sellerOrderPaging(state, pageId).payload.then((result) => {
        setOrderReady(result);
      });
    } else if (state === 10) {
      sellerOrderPaging(state, pageId).payload.then((result) => {
        setOrderReadyFinish(result);
      });
    } else if (state === 20) {
      sellerOrderPaging(state, pageId).payload.then((result) => {
        setOrderPickup(result);
      });
    } else {
      sellerOrderPaging(state, pageId).payload.then((result) => {
        setOrderCancel(result);
      });
    }
  };

  const paingRendering = (state, page) => {
    const result = [];
    console.log(test);
    let flag = test === 0 ? 1 : 0;
    for (let i = flag + test * 10; i <= 10 * (test + 1); i++) {
      result.push(
        i === 1 ? (
          <span
            className={"btn " + (tab === i ? "active" : "")}
            key={i}
            onClick={() => sellerOrdering(state, i)}
          >
            {i}
          </span>
        ) : (
          <span
            className={"btn " + (tab === i ? "active" : " ")}
            key={i}
            onClick={() => sellerOrdering(state, i)}
          >
            {i}
          </span>
        )
      );
    }
    return result;
  };

  const stateChange = (orderState, orderId) => {
    if (orderState === 0) {
      if (window.confirm("해당 주문을 상품준비완료로 바꾸시겠습니까?")) {
        setOrderReadyFinish(orderReady.find((order) => order.id === orderId));
        setOrderReady(orderReady.filter((order) => order.id !== orderId));
        dispatch(updateOrderState(orderId, 10));
      } else {
        return 0;
      }
    } else {
      if (window.confirm("해당 주문을 픽업완료로 바꾸시겠습니까?")) {
        setOrderPickup(orderReadyFinish.find((order) => order.id === orderId));
        setOrderReadyFinish(
          orderReadyFinish.filter((order) => order.id !== orderId)
        );
        dispatch(updateOrderState(orderId, 20));
      } else {
        return 0;
      }
    }
    setTimeout(() => {
      setRenderCount(count + 1);
    }, 800);
  };
  const cancelOrder = (orderState, orderId) => {
    if (window.confirm("해당 주문을 취소하시겠습니까?")) {
      if (orderState === 0) {
        setOrderCancel(orderReady.find((order) => order.id === orderId));
        setOrderReady(orderReady.filter((order) => order.id !== orderId));
        dispatch(deleteOrderState(orderId));
      } else {
        setOrderCancel(orderReadyFinish.find((order) => order.id === orderId));
        setOrderReadyFinish(
          orderReadyFinish.filter((order) => order.id !== orderId)
        );
        dispatch(deleteOrderState(orderId));
      }
      setTimeout(() => {
        setRenderCount(count + 1);
      }, 800);
    } else {
      return 0;
    }
  };

  const chaneStateButton = (value) => {
    setTab(1);
    setClickButton(value);
    if (value === "1") {
      sellerOrdering(0, 0);
      setTest(0);
    } else if (value === "2") {
      sellerOrdering(10, 0);
      setTest(0);
    } else if (value === "3") {
      sellerOrdering(20, 0);
      setTest(0);
    } else {
      sellerOrdering(30, 0);
      setTest(0);
    }
  };

  //개수
  let count = 1 + (tab - 1) * 5;
  return (
    <>
      <div className="sellerBoard">
        <div className="delivery" onClick={() => chaneStateButton("1")}>
          <h2>상품준비중</h2>
          <p>{orderReadyCount ?? 0}건</p>
        </div>

        <div className="deliveryDone" onClick={() => chaneStateButton("2")}>
          <h2>상품준비완료</h2>
          <p>{orderReadyFinishCount ?? 0}건</p>
        </div>

        <div className="takeOut" onClick={() => chaneStateButton("3")}>
          <h2>픽업완료</h2>
          <p>{orderPickupCount ?? 0}건</p>
        </div>

        <div className="canceled" onClick={() => chaneStateButton("4")}>
          <h2>주문취소</h2>
          <p>{orderCancelCount ?? 0}건</p>
        </div>
      </div>

      {clickButton === "1" ? (
        <>
          <article>
            <table>
              <thead>
                <tr>
                  <th>번호</th>
                  <th>상품명</th>
                  <th>수량</th>
                  <th>가격</th>
                  <th>상태</th>
                  <th>날짜</th>
                </tr>
              </thead>
              <tbody>
                {orderReady.map((order) => {
                  return (
                    <tr
                      key={order.id}
                      onClick={(event) => {
                        stateChange(order.orderState, order.id);
                      }}
                    >
                      <td>{count}</td>
                      <td>{order.productName}</td>
                      <td>{order.qty}</td>
                      <td>
                        {Math.ceil(
                          order.qty *
                            (order.productPrice -
                              order.productPrice *
                                0.01 *
                                order.productDiscountRate)
                        )}
                      </td>
                      <td>상품준비중</td>
                      <td>{convertTime(order.regTime)}</td>
                      <td>
                        <button
                          onClick={(e) => {
                            e.stopPropagation();
                            cancelOrder(order.orderState, order.id);
                          }}
                        >
                          취소
                        </button>
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
          </article>

          <div className="sellerPrd-paging">
            <FontAwesomeIcon
              icon={faAngleDoubleLeft}
              className="to-left-end"
              onClick={() => sellerOrdering(0, parseInt(tab / 10 - 1) * 10)}
            />
            <FontAwesomeIcon
              icon={faChevronLeft}
              className="to-left"
              onClick={() => sellerOrdering(0, tab - 1)}
            />
            {paingRendering(0)}
            <FontAwesomeIcon
              icon={faChevronRight}
              className="to-right"
              onClick={() => sellerOrdering(0, tab + 1)}
            />
            <FontAwesomeIcon
              icon={faAngleDoubleRight}
              className="to-left-end"
              onClick={() => sellerOrdering(0, parseInt(tab / 10 + 1) * 10)}
            />
          </div>
        </>
      ) : clickButton === "2" ? (
        <>
          <article>
            <table>
              <thead>
                <tr>
                  <th>번호</th>
                  <th>상품명</th>
                  <th>수량</th>
                  <th>가격</th>
                  <th>상태</th>
                  <th>날짜</th>
                  <th></th>
                </tr>
              </thead>
              <tbody>
                {orderReadyFinish.map((order) => {
                  return (
                    <tr
                      key={order.id}
                      onClick={() => stateChange(order.orderState, order.id)}
                    >
                      <td>{count++}</td>
                      <td>{order.productName}</td>
                      <td>{order.qty}</td>
                      <td>
                        {Math.ceil(
                          order.qty *
                            (order.productPrice -
                              order.productPrice *
                                0.01 *
                                order.productDiscountRate)
                        )}
                      </td>
                      <td>상품준비완료</td>
                      <td>{convertTime(order.regTime)}</td>
                      <td>
                        <button
                          onClick={(e) => {
                            e.stopPropagation();
                            cancelOrder(order.orderState, order.id);
                          }}
                        >
                          취소
                        </button>
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
          </article>

          <div className="sellerPrd-paging">
            <FontAwesomeIcon
              icon={faAngleDoubleLeft}
              className="to-left-end"
              onClick={() => sellerOrdering(10, parseInt(tab / 10 - 1) * 10)}
            />
            <FontAwesomeIcon
              icon={faChevronLeft}
              className="to-left"
              onClick={() => sellerOrdering(10, tab - 1)}
            />
            {paingRendering(10)}
            <FontAwesomeIcon
              icon={faChevronRight}
              className="to-right"
              onClick={() => sellerOrdering(10, tab + 1)}
            />
            <FontAwesomeIcon
              icon={faAngleDoubleRight}
              className="to-left-end"
              onClick={() => sellerOrdering(10, parseInt(tab / 10 + 1) * 10)}
            />
          </div>
        </>
      ) : clickButton === "3" ? (
        <>
          <article>
            <table>
              <thead>
                <tr>
                  <th>번호</th>
                  <th>상품명</th>
                  <th>수량</th>
                  <th>가격</th>
                  <th>상태</th>
                  <th>날짜</th>
                </tr>
              </thead>
              <tbody>
                {orderPickup.map((order) => {
                  console.log(order);

                  return (
                    <tr key={order.id}>
                      <td>{count++}</td>
                      <td>{order.productName}</td>
                      <td>{order.qty}</td>
                      <td>
                        {Math.ceil(
                          order.qty *
                            (order.productPrice -
                              order.productPrice *
                                0.01 *
                                order.productDiscountRate)
                        )}
                      </td>
                      <td>픽업완료</td>
                      <td>{convertTime(order.regTime)}</td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
          </article>
          <div className="sellerPrd-paging">
            <FontAwesomeIcon
              icon={faAngleDoubleLeft}
              className="to-left-end"
              onClick={() => sellerOrdering(20, parseInt(tab / 10 - 1) * 10)}
            />
            <FontAwesomeIcon
              icon={faChevronLeft}
              className="to-left"
              onClick={() => sellerOrdering(20, tab - 1)}
            />
            {paingRendering(20)}
            <FontAwesomeIcon
              icon={faChevronRight}
              className="to-right"
              onClick={() => sellerOrdering(20, tab + 1)}
            />
            <FontAwesomeIcon
              icon={faAngleDoubleRight}
              className="to-left-end"
              onClick={() => sellerOrdering(20, parseInt(tab / 10 + 1) * 10)}
            />
          </div>
        </>
      ) : clickButton === "4" ? (
        <>
          <article>
            <table>
              <thead>
                <tr>
                  <th>번호</th>
                  <th>상품명</th>
                  <th>수량</th>
                  <th>가격</th>
                  <th>상태</th>
                  <th>날짜</th>
                </tr>
              </thead>
              <tbody>
                {orderCancel.map((order) => {
                  return (
                    <tr key={order.id}>
                      <td>{count++}</td>
                      <td>{order.productName}</td>
                      <td>{order.qty}</td>
                      <td>
                        {Math.ceil(
                          order.qty *
                            (order.productPrice -
                              order.productPrice *
                                0.01 *
                                order.productDiscountRate)
                        )}
                      </td>
                      <td>주문 취소</td>
                      <td>{convertTime(order.regTime)}</td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
          </article>

          <div className="sellerPrd-paging">
            <FontAwesomeIcon
              icon={faAngleDoubleLeft}
              className="to-left-end"
              onClick={() => sellerOrdering(30, parseInt(tab / 10 - 1) * 10)}
            />
            <FontAwesomeIcon
              icon={faChevronLeft}
              className="to-left"
              onClick={() => sellerOrdering(30, tab - 1)}
            />
            {paingRendering(30)}
            <FontAwesomeIcon
              icon={faChevronRight}
              className="to-right"
              onClick={() => sellerOrdering(30, tab + 1)}
            />
            <FontAwesomeIcon
              icon={faAngleDoubleRight}
              className="to-left-end"
              onClick={() => sellerOrdering(30, parseInt(tab / 10 + 1) * 10)}
            />
          </div>
        </>
      ) : null}
    </>
  );
};

export default SellerOrder;
