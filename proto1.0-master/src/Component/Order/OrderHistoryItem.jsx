import './OrderHistoryItem.css';

import { useCallback, useMemo, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import axios from 'axios';
import qs from 'qs';
import moment from 'moment';
import ReviewWriteModal from '../Review/ReviewWriteModal'

const OrderHistoryItem = ({orderInfo, onChangeOnderInfo }) => {

    const navigate = useNavigate();

    const [showReviewModal, setShowReviewModal] = useState(false);

    const [state, image, price, isCancelable, isCanReviewWrite] = useMemo(() => {
        let state;
        let image;
        let price = 0;
        let isCancelable = false;
        let isCanReviewWrite = false;

        if(orderInfo) {
            image = process.env.REACT_APP_BACKEND_HOST.concat(orderInfo.imagePath);
            if (orderInfo.orderState == 0) {
                state = '상품준비중';
                isCancelable = true;
            } else if (orderInfo.orderState == 10) {
                state = '상품준비완료';
            } else if (orderInfo.orderState == 20) {
                state = '픽업완료';
                isCanReviewWrite = true;
            } else if (orderInfo.orderState == 30) {
                state = '취소됨';
            } else if (orderInfo.orderState == 100) {
                state = '완료됨';
            }
            price = (orderInfo.productPrice * ((100 - orderInfo.productDiscountRate) / 100)) * orderInfo.qty;
        }
        return [state, image, price, isCancelable, isCanReviewWrite];
    }, [orderInfo]);

    const convertTime = useCallback((time) => {
        return moment(time).format('YYYY/MM/DD');
    }, []);

    const moveToProductPage = useCallback(() => {
        if(!(orderInfo?.salesPageId)) {
            return;
        }
        navigate(`/prdpg?page=${orderInfo.salesPageId}&prd=${orderInfo.salesProductId}`);
        window.scroll({
            top: 0
        });
    }, [orderInfo]);

    const onClickCancle = useCallback((event) => {
        event.stopPropagation();

        if(window.confirm('주문을 취소 하시겠습니까?')) {
            axios
                .put('/api/consumer/cancelOrder', qs.stringify({
                    orderId: orderInfo.id,
                }))
                .then(() => {
                    orderInfo.orderState = 30;
                    orderInfo = { ...orderInfo };
                    onChangeOnderInfo?.(orderInfo);
                })
                .catch((err) => {
                    if (err.response) {
                        alert(err.response.data);
                    } else if (err.request) {
                        alert('서버가 응답하지 않습니다.');
                    } else {
                        alert('잘못된 요청입니다.');
                    }
                });
        }
    }, [orderInfo]);

    const clickReviewWrite = useCallback((e) => {
        e.stopPropagation();
        setShowReviewModal(true);
    }, []);

    const onReviewWrited = useCallback(() => {
        setShowReviewModal(false);
        orderInfo.orderState = 100;
        orderInfo = { ...orderInfo };
        onChangeOnderInfo?.(orderInfo);
    }, [orderInfo]);

    const onClickReviewModalClose = useCallback(() => {
        setShowReviewModal(false);
    }, []);

    return(
        <>
            <div className="order-container-wrapper">
                <div className="order-container">
                    <div className="oc01">
                        <p>주문번호 {orderInfo?.id}</p>
                    </div>
                    <div className="oc02">
                        <p>{convertTime(orderInfo?.regTime ?? 0)}</p>
                    </div>
                    <div className="oc03">
                        <div className="oc03-img-container" onClick={moveToProductPage}>
                            <img src={image} alt="상품이미지" />
                        </div>
                    </div>
                    <div className="oc04">
                        <p>상품명</p>
                        <p>결제금액</p>
                        <p>주문상태</p>
                    </div>
                    <div className="oc05">
                        <p onClick={moveToProductPage}>{orderInfo?.productName}</p>
                        <p>{price}원</p>
                        <p>{state}</p>
                    </div>

                    <div className="oc06">
                        {isCancelable ?
                        <div className="oc06-detail-btn" onClick={onClickCancle}>
                            <p>주문 취소</p>
                        </div>
                        : null}
                        {isCanReviewWrite ?
                        <div className="oc06-review-btn" onClick={clickReviewWrite}>
                            <p>리뷰 쓰기</p>
                        </div>
                        : null}
                    </div>
                </div>

                {showReviewModal ?
                    <ReviewWriteModal orderInfo={orderInfo} onReviewWrited={onReviewWrited} onClickClose={onClickReviewModalClose}/>
                : null }
            </div>
        </>
    );
}

export default OrderHistoryItem;