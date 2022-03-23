
import "./ConsumerSignUp.css";
import { useEffect, useRef, useState, useCallback } from "react";
import { Link, useNavigate } from 'react-router-dom';
import DaumPostcode from "./DaumPostCode";
import axios from 'axios';

const ConsumerSignUp = () => {

    const navigate = useNavigate();

    const [inputEmail, setInputEmail] = useState("");
    const [inputPwd, setInputPwd] = useState("");
    const [reCheckPwd, setReCheckPwd] = useState("");
    const [inputName, setInputName] = useState("");
    const [inputAddress1, setInputAddress1] = useState("");
    const [inputAddress2, setInputAddress2] = useState("");
    const [eupmyundongCode, setEupmyundongCode] = useState('');
    const [inputContact, setInputContact] = useState("");

    const [emailRegEx, setEmailRegEx] = useState("");
    const [pwdRegEx, setPwdRegEx] = useState("숫자, 영문(소·대문자), 특수문자를 포함한 8~16자리의 비밀번호");
    const [reCheckPwdRegEx, setReCheckPwdRegEx] = useState("");

    //input별 에러텍스트출력 div
    const idErrorText = useRef("");
    const pwdErrorText = useRef();
    const reCheckPwdText = useRef();

    //아이디(이메일) 정규표현식 검사
    useEffect(()=>{
        const idRegex = /[a-zA-Z0-9-_]+\@[a-zA-Z0-9-_.]+\.[a-zA-Z0-9-_.]+/; //이메일 아이디 정규표현식

        if(idRegex.test(inputEmail) === true){
            setEmailRegEx("올바른 이메일 형식입니다. 중복을 확인해주세요.");
            idErrorText.current.style.color ="black";
        } else if(idRegex.test(inputEmail) === false && inputEmail === ""){
            setEmailRegEx("");
        } else {
            setEmailRegEx("올바른 이메일 형식이 아닙니다.");
            idErrorText.current.style.color ="red";
        }
    },[inputEmail])

    const inputedEmail = (event) => {
        setInputEmail(event.target.value);
    }

    const inputedPwd = (event) => {
        setInputPwd(event.target.value);
    }

    const inputedRePwd = (e) => {
        setReCheckPwd(e.target.value);
    }


    useEffect(()=>{

        const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,16}$/; //비밀번호 정규표현식

        if(passwordRegex.test(inputPwd) === true){
            setPwdRegEx("올바른 비밀번호 형식입니다.")
            pwdErrorText.current.style.color="var(--accent-default)";
        } else if(inputPwd !== "" && passwordRegex.test(inputPwd) === false)  {
            setPwdRegEx("올바른 비밀번호 형식이 아닙니다.")
            pwdErrorText.current.style.color="red";
        }

        console.log(inputPwd);
        if(inputPwd === "" && reCheckPwd === ""){
            setReCheckPwdRegEx("");
            pwdErrorText.current.style.color ="var(--font-dark)";
        }else if(reCheckPwd === ""){
            setReCheckPwdRegEx("");
        }else if(reCheckPwd !== "" && inputPwd === reCheckPwd){
            setReCheckPwdRegEx("비밀번호가 정확히 입력되었습니다.");
            reCheckPwdText.current.style.color = "var(--accent-default)";
        } else if(inputPwd !== reCheckPwd){
            setReCheckPwdRegEx("비밀번호가 일치하지 않습니다.")
            reCheckPwdText.current.style.color = "red";
        }
    },[inputPwd, reCheckPwd])


    const inputedName = (event) => {
        setInputName(event.target.value);
    }
    const inputedAddress2 = (event) => {
        setInputAddress2(event.target.value);
    }
    const inputedContact = (event) => {
        setInputContact(event.target.value);
    }


    // 회원가입 버튼 클릭
    const clickSubmit = useCallback(() => {
        const data = {
            email: inputEmail,
            pwd: inputPwd,
            name: inputName,
            address1: inputAddress1,
            address2: inputAddress2,
            eupmyundongCode: eupmyundongCode,
            contact: inputContact,
        }
        axios.post('/api/consumer/signup', data)
        .then(response => {
            if(response.data) {
                navigate('/');
            } else {
                alert('회원가입에 실패했습니다.');
            }
        })
        .catch(err => {
            if(err.response) {
                alert(err.response.data);
            } else if (err.request) {
                alert('서버가 응답하지 않습니다.');
            } else {
                alert('잘못된 요청입니다.');
            }
        });
    }, [inputEmail, inputPwd, inputName, inputAddress1, inputAddress2, eupmyundongCode, inputContact])

    //아이디 중복확인 버튼 클릭시
    const clickEmailDuplicateCheck = async (e) => {
        e.preventDefault();
        if(inputEmail === "") {
            return alert("공백입니다.");
        }

        axios.get(`/api/public/consumer/duplicateCheck?email=${inputEmail}`)
        .then(response => {
            if(response.data) {
                alert("회원가입 가능한 아이디 입니다.😊");
                setEmailRegEx("올바른 이메일 형식입니다. 회원가입을 진행하세요.");
                idErrorText.current.style.color = 'var(--accent-default)';
            } else {
                alert("중복된 아이디 입니다.😥");
                setEmailRegEx("다른 아이디를 입력해주세요.");
                idErrorText.current.style.color = "red";
            }
        });
    }

    // 도로명 주소 API
    const [openDaumModal, setOpenDaumModal] = useState(false);

    const addressSearch = useCallback(() => {
        setOpenDaumModal(true);
    },[]);

    const onSelectAddress = useCallback((data) => {
        setInputAddress1(data.address1);
        setEupmyundongCode(data.bcode);
        setOpenDaumModal(false);
    },[]);

    // 이용약관 모달창 show/off
    const [showTermsOfUse, setShowTermsOfUse] = useState(false);

    const clickTermsOfUse = (event) => {
        event.preventDefault();
        setShowTermsOfUse(!showTermsOfUse);
    }

    // 뒤로가기 버튼
    const clickGoBack = (e) => {
        e.preventDefault();
    }


    return(
        <>
        {openDaumModal ?
            <DaumPostcode onSelectAddress={onSelectAddress} />
            : null }


        <div className="sign-up-form">
            <div className="logo-img-section">
                <img src="/img/pmu-logo-ex.png" alt="로고" />
            </div>
            <p>구매자 회원가입</p>
            <div className="form-container">
                <div id="id-label">아이디</div>
                <div id="id-input">
                    <input onChange={inputedEmail} type="text" value={inputEmail} placeholder="이메일을 입력해주세요" />
                </div>
                <div id="id-error" ref={idErrorText}>{emailRegEx}</div>

                <div id="id-check" onClick={clickEmailDuplicateCheck}><button>중복확인</button></div>

                <div id="pw-label">비밀번호</div>
                <div id="pw-input">
                    <input onChange={inputedPwd} type="password" value={inputPwd} placeholder="비밀번호를 입력해주세요" />
                </div>
                <div id="pw-error" ref={pwdErrorText}>{pwdRegEx}</div>

                <div id="pwchk-label">비밀번호 확인</div>
                <div id="pwchk-input">
                    <input onChange={inputedRePwd} type="password" value={reCheckPwd} placeholder="비밀번호를 한번 더 입력해주세요" />
                </div>
                <div id="pwchk-error" ref={reCheckPwdText}>{reCheckPwdRegEx}</div>

                <div id="name-label">이름</div>
                <div id="name-input">
                    <input onChange={inputedName} type="text" value={inputName} placeholder="이름을 입력해주세요" />
                </div>

                <div id="address-label">주소</div>
                <div id="address-input">
                    <input onClick={addressSearch} id="address_kakao" type="text" value={inputAddress1} placeholder="도로명 주소 검색하기" />
                    <button id="address-research-btn" onClick={addressSearch}>검색</button>
                </div>

                <div id="det-address-label">상세주소</div>
                <div id="det-address-input">
                    <input onChange={inputedAddress2} type="text" value={inputAddress2} placeholder="상세주소를 입력해주세요" />
                </div>

                <div id="phone-label">휴대폰</div>
                <div id="phone-input">
                    <input onChange={inputedContact} type="text" value={inputContact} placeholder="휴대폰 번호를 입력해주세요" />
                </div>
            </div>

            <div className="terms-of-use-container">
                <div id="terms-of-use-label">이용약관 동의</div>
                <div id="terms-of-use-checkbox">
                    <input id="terms-of-use-check" type="checkbox"/><label htmlFor="terms-of-use-check"> 이용약관 동의</label>
                </div>
                <div id="terms-of-use-show"><button id="terms-of-use-show-btn" onClick={clickTermsOfUse}>약관보기</button></div>
            </div>
            <div className="buttons-container">
                <button id="go-back" onClick={clickGoBack}><Link to="/">돌아가기</Link></button>
                <button id="c-sign-up-btn" onClick={clickSubmit}>회원가입</button>
            </div>
        </div>

        {showTermsOfUse ?
        <>
            <div className="csu-modal">
                <div className="csu-modal-inner">
                    <p>이용약관</p>
                    <textarea readOnly value=
                        "픽미업 이용약관">
                    </textarea>
                    <button onClick={clickTermsOfUse}>확인</button>
                </div>
            </div>
        </>
        : null}
        </>
    );
}

export default ConsumerSignUp;