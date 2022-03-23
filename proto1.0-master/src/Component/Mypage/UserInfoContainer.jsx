import "./MyPage.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faQuestionCircle, faUserCircle } from "@fortawesome/free-solid-svg-icons";
import { Link } from "react-router-dom";
import { useSelector } from 'react-redux';
import { useEffect, useRef } from "react";



const UserInfoContainer = () => {

    const userInfo = useSelector((state) => state.user.userInfo);

    const clickShowMemberLevel = (e) => {
        alert("서비스 준비중입니다.");
    }

    const nameLength = useRef();

    useEffect(()=>{
        // 유저 이름 길이에 반응하는 폰트 사이즈
        let userNameLength = nameLength.current.innerText.length;
        console.log(userNameLength);

        if(userNameLength > 6){
            nameLength.current.style.fontSize = "16px";
        }
    },[])

    return(
        <>
        <div className="user-info-container">
            <div className="uic01">
                <div className="uic01-img-container">
                    <FontAwesomeIcon icon={faUserCircle} className="userricon" />
                </div>
                <div className="uic01-user-name">
                    <p>
                        {userInfo?.role === "SELLER" ?
                        "사장님 오늘도 파이팅!"
                        :
                        "즐거운 쇼핑 되세요!"
                        }
                    </p>
                    <p ref={nameLength}>{userInfo?.name} 님</p>
                </div>
            </div>
            <div className="uic02">
                <div><p>회원등급</p></div>
                <div><p>브론즈</p><FontAwesomeIcon icon={faQuestionCircle} className="show-user-class" title="등급보기" onClick={clickShowMemberLevel}/></div>
            </div>
            <div className="uic03">
                <div><p><mark className="mark-green">픽미업</mark> 포인트</p></div>
                <div><p>0 P</p></div>
            </div>
            <div className="uic04">
                <div><p>보유 쿠폰</p></div>
                <div><p className="users-coupon" title="쿠폰 보러 가기">0 개</p></div>
            </div>
        </div>
        </>
    );
}

export default UserInfoContainer;