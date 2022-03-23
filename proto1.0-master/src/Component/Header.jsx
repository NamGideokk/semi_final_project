import { faAngleDown, faMapMarkerAlt, faSearch, faShoppingBasket, faAngleRight, faHome, faExclamationCircle } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faHeart, faUser } from "@fortawesome/free-regular-svg-icons";
import { useCallback, useEffect, useRef, useState } from 'react';
import { Link, useNavigate, createSearchParams } from 'react-router-dom';
import { useSelector, useDispatch } from 'react-redux';
import { logout } from '../_redux/actions/user_actions';


import "./Header.css";


// 헤더 .react
const Header = () => {
    const dispatch = useDispatch();
    const navigate = useNavigate();

    const userInfo = useSelector((state) => state.user.userInfo);
    const location = useSelector((state) => state.user.location);

    const [showUserList, setShowUserList] = useState(false);
    const [showCscList, setShowCscList] = useState(false);

    // 클릭시 사용자목록 show/hidden
    const showUl = () => {
        setShowUserList(!showUserList);
    }

    // 클릭시 고객센터목록 show/hidden
    const showCl = () => {
        setShowCscList(!showCscList);
    }

    // 검색어 저장 변수
    const [searchWord, setSearchWord] = useState("");

    const onChangeSearchWord = useCallback((e) => {
        setSearchWord(e.target.value);
    }, [])

    // 상품 검색하기
    const clickSearch = useCallback(() => {
        navigate({
            pathname: '/search',
            search: createSearchParams({searchText: searchWord}).toString(),
        });
    }, [searchWord])

    const onClickLogout = useCallback((event) => {
        event.preventDefault();

        dispatch(logout())
            .then(() => navigate('/'))
            .catch(() => alert('로그아웃 실패'));
    }, []);

    const onKeyUpSearchText = useCallback((event) => {
        if(event.keyCode == 13) {
            event.preventDefault();
            clickSearch();
            window.scroll({
                top: 620,
                behavior: 'smooth',
            });
            return;
        }
    }, [clickSearch]);

    // 읽지않은 알림 true/false
    const [unreadNotice, setUnreadNotice] = useState(true);

    return(
        <>
            <header>
                <div className="header-contents">



                    {/* header 상단 */}
                    <div className="header-top">

                        <div className="header-top-left">
                            <Link to="/home"><FontAwesomeIcon icon={faHome} className="to-home-icon" /> 홈으로</Link>
                        </div>

                        <div className="down-drop-menu">

                            {unreadNotice ?
                                <FontAwesomeIcon icon={faExclamationCircle} className="notice-icon" title="회원님 알림이 있어요"/>
                            : null}

                            <div className="user-list" onClick={showUl}>
                                {userInfo?.name}님 <FontAwesomeIcon icon={faAngleDown} className='faAngleDown1' />
                                {showUserList ?
                                    <>
                                        {userInfo?.role == 'CONSUMER' ?
                                        <div className="user-list-wrapper">
                                            <div><Link to="/myInfo">마이페이지</Link></div>
                                            <div><Link to="/myInfo/cart">장바구니</Link></div>
                                            <div><Link to="/myInfo/orders">주문조회</Link></div>
                                            <div><Link to="/logout" onClick={onClickLogout}>로그아웃</Link></div>
                                        </div> : null}
                                        {userInfo?.role == 'SELLER' ?
                                        <div className="user-list-wrapper">
                                            <div><Link to="/sellerPage">마이페이지</Link></div>
                                            <div><Link to="/sellerPage/products">나의 상품 관리</Link></div>
                                            <div><Link to="/sellerPage/orders">주문/배송 관리</Link></div>
                                            <div><Link to="/logout" onClick={onClickLogout}>로그아웃</Link></div>
                                        </div> : null}
                                    </>
                                : null}
                            </div>
                            <div className="csc-list" onClick={showCl}>
                                고객센터 <FontAwesomeIcon icon={faAngleDown} className='faAngleDown2' />
                                {showCscList ?
                                    <div className="csc-list-wrapper">
                                        <div><Link to="/serviceCenter/notice">공지사항</Link></div>
                                        <div><Link to="/serviceCenter/company">회사소개</Link></div>
                                        <div><Link to="/serviceCenter/FAQ">FAQ</Link></div>
                                        <div><Link to="/serviceCenter/contactUs">1:1 문의</Link></div>
                                    </div> :
                                null}
                            </div>
                        </div>
                    </div>




                    {/* <header 중단 (로고이미지) */}
                    <div className="header-mid">
                        <img src="/img/pmu-logo-ex.png" alt="logo" title="우리 동네 마트 온라인 쇼핑몰" />
                    </div>
                </div>


            </header>

            {/* <header 하단 */}
            <div className="header-bottom-wrapper">

                <div className="header-bottom">

                    <div className="geo" title="내 위치">
                        <FontAwesomeIcon icon={faMapMarkerAlt} className='faMapMarkerAlt' />{location}
                    </div>

                    <div className="search-bar">
                        <div id="search-bar-form">
                            <input
                                type="text"
                                list="search-products"
                                value={searchWord}
                                onChange={onChangeSearchWord}
                                onKeyUp={onKeyUpSearchText}
                                placeholder="상품을 검색하세요"
                            />
                            <button onClick={clickSearch}><FontAwesomeIcon icon={faSearch} className="faSearch-icon" /></button>
                        </div>
                    </div>

                    <div className="icons">
                        {userInfo?.role == 'CONSUMER' ?
                            <>
                                <Link to="/myInfo"><FontAwesomeIcon icon={faUser} className="faUser" title="마이페이지" /></Link>
                                <Link to="/myInfo/cart"><FontAwesomeIcon icon={faShoppingBasket} className="faShoppingBasket" title="장바구니" /></Link>
                                <Link to="/myInfo/like"><FontAwesomeIcon icon={faHeart} className='faHeart' title="찜한 상품"/></Link>
                            </>
                        :null}
                        {userInfo?.role == 'SELLER' ?
                            <>
                                <Link to="/sellerPage"><FontAwesomeIcon icon={faUser} className="faUser" title="마이페이지" /></Link>
                            </>
                        :null}
                    </div>

                </div>

            </div>

        </>
    );
}

export default Header;