import React, { useCallback } from "react";
import { Outlet, useNavigate } from 'react-router-dom';

// import './CustomerCenter.css';
// import './CustomerCenter2.css';
import '../Mypage/MyPage.css';
import './CustomerCenter.css';


const CustomerCenter = () => {
    const navigate = useNavigate();

    const onClick = useCallback((event) => {
        navigate(event.target.dataset.path);
    }, []);
    return (
        <div className='user-section-wrapper'>

        <div className="us-left-container">
                <h2 className="user-section-title">마이 페이지</h2>
                <ul className="user-section-menu" onClick={onClick}>
                    <li id="notice" data-path='notice'>공지사항</li>
                    <li id="companyInfo" data-path='company'>회사소개</li>
                    <li id="faq" data-path='FAQ'>FAQ</li>
                    <li id="1:1" data-path='contactUs'>1:1 문의</li>
                </ul>
        </div>

        <div className='us-right-container'>
            <Outlet/>
        </div>

    </div>

    );

}


export default CustomerCenter;