import React, { Component } from 'react';

import './LeftNav.css';

const LeftNavMyPage = () => {
    return (
        <div class="leftNav">
        <div>
            <h3 class="sub-title">마이페이지</h3>
        </div>
         
        <nav class="navigation">
            <ul class="sub-menu">
                <li><a href="./basket.html" id="basket">장바구니</a></li>
                <li><a href="./notice.html" id="like">찜한 상품</a></li>
                <li><a href="./faq.html" id="orderList">주문/배송조회</a></li>
                <li><a href="./question.html" id="comment">나의 상품평</a></li>
                <li><a href="./question.html" id="info">개인 정보 수정</a></li>
            </ul>
        </nav>
    </div>
    );    
    
}


export default LeftNavMyPage;