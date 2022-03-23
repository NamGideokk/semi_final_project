import "./Containers.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faBell } from "@fortawesome/free-solid-svg-icons";
import { useEffect, useRef, useState } from "react";
import { useSelector } from 'react-redux';
import axios from 'axios';
import { useNavigate } from 'react-router-dom';

const SellerMyinfo = () => {
    const navigate = useNavigate();

    const userInfo = useSelector((state) => state.user.userInfo);

    // 읽지않은 알림 true/false
    const [unreadNotice, setUnreadNotice] = useState(true);

    // 회원탈퇴 버튼 클릭
    const [showDeleteModal, setShowDeleteModal] = useState(false);
    const delpwdinput = useRef();
    const deleteMyAccount = (e) => {
        setShowDeleteModal(true);
    }
    // 모달창에서 탈퇴 버튼 클릭
    const deleteInProgress = (e) => {
        if(delpwdinput.current.value === ""){
            alert("비밀번호를 입력해주세요.");
            return
        }

        axios.delete('/api/seller', {
            headers: {
                pwd: delpwdinput.current.value,
            }
        })
        .then(() => {
            navigate('/');
            setShowDeleteModal(false);
        })
        .catch(err => {
            if (err.response && err.response.status == 401) {
                alert('비밀번호가 일치하지 않습니다.');
            } else if (err.request) {
                alert('서버가 응답하지 않습니다.');
            } else {
                alert('잘못된 요청입니다.');
            }
        });
    }

    const convertTime = (time) => {
    return new Date(time).toLocaleString("ko-kr", {
        timeZone: "Asia/Seoul",
        });
    };

    return(
        <>
        <div className="myinfo-container">

            <div id="myinfo-id">아이디</div>
            <div id="myinfoii">
                {userInfo?.email}
            </div>

            <div id="myinfo-notice">
                <FontAwesomeIcon icon={faBell} className="my-notice-icon" title="읽지 않은 알람" />

                {unreadNotice ?
                <div className="notice-count">
                    {/* 알람갯수 */}
                    <p>{userInfo?.unreadNotiCount > 99 ? '99+' : (userInfo?.unreadNotiCount ?? 0)}</p>
                </div>
                : null}

            </div>

            <div id="myinfo-name">상점 이름</div>
            <div id="myinfon">
                {userInfo?.name}
            </div>

            <div id="myinfo-contact">휴대폰</div>
            <div id="myinfoc">
                {userInfo?.contact}
            </div>

            <div id="myinfo-address1">주소1</div>
            <div id="myinfoa1">
                {userInfo?.address1}
            </div>

            <div id="myinfo-address2">주소2</div>
            <div id="myinfoa2">
                {userInfo?.address2}
            </div>

            <div id="myinfo-adrres-code">사업자번호</div>
            <div id="myinfoac">
                {userInfo?.companyCode}
            </div>

            <div id="myinfo-total-quantity">사업자등록명</div>
            <div id="myinfotq">
                {userInfo?.companyName}
            </div>

            <div id="myinfo-total-price">대표자명</div>
            <div id="mytp">
                {userInfo?.companyOwnerName}
            </div>

            <div id="myinfo-reg-date">회원가입일</div>
            <div id="myrd">{convertTime(userInfo?.regTime ?? 0)}</div>

            <div id="myinfo-last-access">마지막 접속일</div>
            <div id="myla">{convertTime(userInfo?.lastAccessTime ?? 0)}</div>

            <div id="mybtn">
                <button onClick={deleteMyAccount} id="delete-my-account-btn">회원탈퇴</button>
            </div>

        </div>

            {showDeleteModal ?

                    <div className="delete-modal">
                        <div className="ddmm01"><p>탈퇴를 누르시면 모든 정보가 사라집니다.<br/>탈퇴 하시겠습니까?</p>
                            <input ref={delpwdinput} type="password" name="pwd" placeholder="비밀번호를 입력해주세요."/>
                        </div>
                        <div className="ddmm02">
                            <button className="ddmm02n" onClick={()=>{setShowDeleteModal(!showDeleteModal);}}>취소</button>
                            <button className="ddmm02y" onClick={deleteInProgress}>탈퇴</button>
                        </div>
                    </div>

            : null}

        </>
    );
}

export default SellerMyinfo;