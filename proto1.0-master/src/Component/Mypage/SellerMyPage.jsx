import React, { useCallback } from 'react';
import { Outlet, useNavigate } from 'react-router-dom';
import './MyPage.css';

const SellerMyPage = () => {

    const navigate = useNavigate();

    const onClick = useCallback((event) => {
        navigate(event.target.dataset.path);
    },[]);


    return (
        <div className='user-section-wrapper'>
            <div className="us-left-container">
                    <h2 className="user-section-title">마이 페이지</h2>
                    <ul className="user-section-menu" onClick={onClick}>
                        <li id="usm-product" data-path='products'>나의 상품 관리</li>
                        <li id="usm-order" data-path='orders'>주문/배송 관리</li>
                        <li id="usm-sellerCo" data-path='reviews'>상품 리뷰 내역</li>
                        <li id="usm-myinfo" data-path='info'>나의 정보 관리</li>
                    </ul>
            </div>

            <div className='us-right-container'>

                <Outlet/>

            </div>

        </div>
    );

}

export default SellerMyPage;