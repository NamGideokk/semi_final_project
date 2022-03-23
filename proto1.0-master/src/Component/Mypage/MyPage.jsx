import React, { useCallback } from 'react';
import './MyPage.css';

import { Outlet, useNavigate } from 'react-router-dom';



const MyPage = () => {

    const navigate = useNavigate();

    const onClick = useCallback((event) => {
        navigate(event.target.dataset.path);
    },[]);


    return (
        <div className='user-section-wrapper'>
            <div className="us-left-container">
                    <h2 className="user-section-title">마이 페이지</h2>
                    <ul className="user-section-menu" onClick={onClick}>
                        <li id="usm-basket" data-path='cart'>장바구니</li>
                        <li id="usm-order" data-path='orders'>주문/배송 조회</li>
                        <li id="usm-like" data-path='like'>나의 찜한 상품</li>
                        <li id="usm-comment" data-path='reviews'>나의 리뷰 내역</li>
                        <li id="usm-myinfo" data-path='info'>나의 정보 관리</li>
                    </ul>
            </div>

            <div className='us-right-container'>
                <Outlet/>

            </div>

        </div>
    );

}


export default MyPage;