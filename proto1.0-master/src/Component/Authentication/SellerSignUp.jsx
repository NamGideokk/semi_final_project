import { useRef, useEffect, useState, useCallback } from "react";
// import DaumPostcode from "react-daum-postcode";
import DaumPost from "./DaumPostCode";
import SellerSignUpAddr from "./SellerSignUpAddr";
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import { styled } from '@mui/material/styles';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import InputBase from '@mui/material/InputBase';
import axios from 'axios';

import "./SellerSignUp.css";
import { useNavigate } from 'react-router-dom';


const BootstrapInput = styled(InputBase)(({ theme }) => ({
    'label + &': {
        marginTop: theme.spacing(0.9),
    },
    '& .MuiInputBase-input': {
        borderRadius: 4,
        position: 'relative',
        backgroundColor: theme.palette.background.paper,
        border: '1px solid rgb(165, 165, 165)',
        fontSize: 13,
        padding: '0px 20px 0px 12px',
        transition: theme.transitions.create(['border-color', 'box-shadow']),
        // Use the system font instead of the default Roboto font.
        fontFamily: ['Welcome'].join(','),

        '&:focus': {
        borderRadius: 4,
        borderColor: '#80bdff',
        boxShadow: '0 0 0 0.2rem rgb(76, 204, 71)',
        },
    },
}));

const SellerSignUp = () => {
    const navigate = useNavigate();

    const [inputEmail, setInputEmail] = useState("");
    const [inputPwd, setInputPwd] = useState("");
    const [reCheckPwd, setReCheckPwd] = useState("");
    const [pwdRegEx, setPwdRegEx] = useState("숫자, 영문(소·대문자), 특수문자를 포함한 8~16자리의 비밀번호");
    const [reCheckPwdRegEx, setReCheckPwdRegEx] = useState("");
    const [sellerName, setSellerName] = useState('');
    const [address1, setAddress1] = useState('');
    const [address2, setAddress2] = useState('');
    const [eupmyundongCode, setEupmyundongCode] = useState('');
    const [contact, setContact] = useState('');
    const [companyClass, setCompanyClass] = useState();
    const [companyCode, setCompanyCode] = useState('');
    const [companyName, setCompanyName] = useState('');
    const [companyOwnerName, setCompanyOwnerName] = useState('');
    const [sidoInfo, setSidoInfo] = useState([]);
    const [selectedSido, setSelectedSido] = useState();
    const [selectedSigungu, setSelectedSigungu] = useState();
    const [selectedEupmyundong, setSelectedEupmyundong] = useState();
    const [selectedEupmyundongList, setSelectedEupmyundongList] = useState(new Set());

    const [emailRegEx, setEmailRegEx] = useState("");

    useEffect(()=>{
        axios.get('/api/public/area/sido/list?depth=eupmyundong')
        .then(response => setSidoInfo(response.data));
    },[])

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

            //input별 에러텍스트출력 div
        const idErrorText = useRef("");
        const pwdErrorText = useRef();
        const reCheckPwdText = useRef();



            //아이디 중복확인 버튼 클릭시
    const clickEmailDuplicateCheck = useCallback((e) => {
        e.preventDefault();
        if(inputEmail === "") {
            return alert("공백입니다.");
        }

        axios.get(`/api/public/seller/duplicateCheck?email=${inputEmail}`)
        .then(response => {
            if(response.data) {
                alert("회원가입 가능한 아이디 입니다.😊");
                setEmailRegEx("올바른 이메일 형식입니다. 회원가입을 진행하세요.");
                idErrorText.current.style.color = "var(--accent-default)";
            } else {
                alert("중복된 아이디 입니다.😥");
                setEmailRegEx("다른 아이디를 입력해주세요.");
                idErrorText.current.style.color = "red";
            }
        });
    }, [inputEmail]);

        //비밀번호 유효성 검사 - 기덕님 코드

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






    // //비밀번호 유효성 검사
    // const [regPwd, setRegPwd] = useState(false);

    // //비밀번호 확인
    // const [inputPwd, setInputPwd] = useState("");
    // const [reCheckPwd, setReCheckPwd] = useState("");

    // const inputTest = (e) => {
    //     if(e != 'undefined' && e != null) {
    //     setInputPwd(e.target.value);

    //      //  8 ~ 10자 영문, 숫자 조합
    //      const regExp = /^(?=.*\d)(?=.*[a-zA-Z])[0-9a-zA-Z]{8,10}$/
    //      // 형식에 맞는 경우 true 리턴
    //      // console.log('비밀번호 유효성 검사 :: ', regExp.test(e.target.value))
    //      setRegPwd(regExp.test(e.target.value));
    //     }
    // }

    // const reCheckTest = (e) => {
    //     if(e != 'undefined' && e != null) {
    //         setReCheckPwd(e.target.value);
    //     }
    // }


    //도로명 주소 API
    const [openDaumModal, setOpenDaumModal] = useState(false);

    const addressSearch = useCallback((e) => {
        setOpenDaumModal(true);
    },[])

    const onSelectAddress = useCallback((data) => {
        setAddress1(data.address1);
        setEupmyundongCode(data.bcode);
        setOpenDaumModal(false);
    },[])


    //이용약관 모달창
    const [showTermsOfUse, setShowTermsOfUse] = useState(false);

    const clickTermsOfUse = (event) => {
        event.preventDefault();
        setShowTermsOfUse(!showTermsOfUse);
    }

    const onChangeSellerName = useCallback((event) => {
        setSellerName(event.currentTarget.value);
    }, []);

    const onChangeAddress2 = useCallback((event) => {
        setAddress2(event.currentTarget.value);
    }, []);

    const onChangeContact = useCallback((event) => {
        setContact(event.currentTarget.value);
    }, []);

    const onChangeCompanyClass = useCallback((event) => {
        setCompanyClass(event.currentTarget.value);
    }, []);

    const onChangeCompanyCode = useCallback((event) => {
        setCompanyCode(event.currentTarget.value);
    }, []);

    const onChangeCompanyName = useCallback((event) => {
        setCompanyName(event.currentTarget.value);
    }, []);

    const onChangeCompanyOwnerName = useCallback((event) => {
        setCompanyOwnerName(event.currentTarget.value);
    }, []);

    const onChangeSido = useCallback((e) => {
        setSelectedSido(e.target.value);
        setSelectedSigungu();
        setSelectedEupmyundong();
    }, [])

    const onChangeSigungu = useCallback((e) => {
        setSelectedSigungu(e.target.value);
        setSelectedEupmyundong();
    }, [])

    const onChangeEupmyundong = useCallback((e) => {
        setSelectedEupmyundong(e.target.value);
        if(selectedEupmyundongList.size < 5) {
            setSelectedEupmyundongList(new Set([...selectedEupmyundongList, e.target.value]));
        }
    }, [selectedEupmyundongList]);

    const resetArea = useCallback(() => {
        setSelectedEupmyundongList(new Set());
    }, []);

    const onClickSignUp = useCallback((event) => {
        const data = {
            email: inputEmail,
            pwd: inputPwd,
            name: sellerName,
            address1,
            address2,
            eupmyundongCode,
            contact,
            companyClass,
            companyCode,
            companyName,
            companyOwnerName,
            availableAreaCodes: [...selectedEupmyundongList].map(v => v.code),
        }
        axios.post('/api/seller/signup', data)
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
    }, [
        inputEmail,
        inputPwd,
        sellerName,
        address1,
        address2,
        eupmyundongCode,
        contact,
        companyClass,
        companyCode,
        companyName,
        companyOwnerName,
        selectedEupmyundongList,
    ]);

    return(
        <>
            {openDaumModal &&
                <DaumPost onSelectAddress={onSelectAddress} />
            }

            <div className="form">

            <div className="logo-img-section">
                <img src="/img/pmu-logo-ex.png" alt="로고" />
            </div>

            <h2>판매자 회원가입</h2>

                <div className="container">
                    <div className="nav" id="nav1"><label htmlFor="email">아이디</label></div>
                    <div className="input" id="input1"><input id="email" onChange={inputedEmail} type="text" value={inputEmail} placeholder="이메일을 입력해주세요"/></div>
                    <div className="button" id="button1"><button type="button" onClick={clickEmailDuplicateCheck}>중복 확인</button></div>
                    <div id="id-error" ref={idErrorText}>{emailRegEx}</div>


                    <div className="nav" id="nav2"><label htmlFor="pwd">비밀번호</label></div>
                    <div className="input" id="input2"><input id="pwd" onChange={inputedPwd} type="password" value={inputPwd} placeholder="비밀번호를 입력해주세요"/></div>
                    <div id="pw-error" ref={pwdErrorText}>{pwdRegEx}</div>

                    <div className="nav" id="nav3"><label htmlFor="pwd_check">비밀번호 확인</label></div>
                    <div className="input" id="input3"><input id="pwd_check" onChange={inputedRePwd} type="password" value={reCheckPwd} placeholder="비밀번호를 다시 확인해주세요"/></div>
                    <div id="pwchk-error" ref={reCheckPwdText}>{reCheckPwdRegEx}</div>

                    {/* {inputPwd.target.value == "" || reCheckPwd.target.value == "" ? null : inputPwd.target.value == reCheckPwd.target.value ? "비밀번호를 정확히 입력하셨습니다" : "올바른 비밀번호를 입력해주세요"} */}

                    <div className="nav" id="nav4"><label htmlFor="seller_name">상점 이름</label></div>
                    <div className="input" id="input4"><input id="seller_name" onChange={onChangeSellerName} value={sellerName} type="text" placeholder="상점의 이름을 입력해주세요."/></div>

                    <div className="nav" id="nav5"><label htmlFor="address_kakao">주소</label></div>

                    <div className="input" id="input5">
                        <input id="address_kakao" type="text" value={address1} readOnly/>
                    </div>
                    <div className="button" id="button5" onClick={addressSearch}><button id="reBtn" type="button" >검색</button></div>
                    <div className="nav" id="nav6"><label htmlFor="address_detail">상세주소</label></div>
                    <div className="input" id="input6">
                        <input id="address_detail" type="text" value={address2} placeholder="상세주소를 입력해주세요" onChange={onChangeAddress2}/>
                    </div>
                    <div className="nav" id="nav7"><label htmlFor="contact1">연락처</label></div>
                    <div className="input" id="input7"><input id="contact1" onChange={onChangeContact} value={contact} placeholder="연락처를 입력해주세요"/></div>


                    <div className="nav" id="nav8"><label >사업자 구분</label></div>
                    <div className="input" id="input8">
                        <input type="radio" id="personal" onChange={onChangeCompanyClass} checked={companyClass == 0} value='0' name="company_classNameification"/>
                            <label htmlFor="personal"></label><label htmlFor="personal" id="personalLabel">개인</label>
                        <input type="radio" id="company" onChange={onChangeCompanyClass} checked={companyClass == 1} value='1' name="company_classNameification"/>
                            <label htmlFor="company"></label><label htmlFor="company" id="companyLabel">법인</label>
                    </div>


                    <div className="nav" id="nav9"><label htmlFor="company_code">사업자번호</label></div>
                    <div className="input" id="input9"><input id="company_code" onChange={onChangeCompanyCode} value={companyCode} placeholder="사업자번호를 입력해주세요"/></div>

                    <div className="nav" id="nav10"><label htmlFor="market_name">사업자등록 이름</label></div>
                    <div className="input" id="input10"><input id="company_name" onChange={onChangeCompanyName} value={companyName} placeholder="사업자등록 이름을 입력해주세요"/></div>

                    <div className="nav" id="nav11"><label htmlFor="market_name">대표자 이름</label></div>
                    <div className="input" id="input11"><input id="market_name" onChange={onChangeCompanyOwnerName} value={companyOwnerName} placeholder="대표자의 이름 입력해주세요"/></div>

                    <div className="nav" id="nav12">판매위치 설정</div>
                    <div id="input12">
                        <FormControl sx={{ m: 1, minWidth: 120 }}>
                        <InputLabel id="demo-simple-select-helper-label">시도 선택*</InputLabel>
                            <Select
                                labelId="demo-simple-select-helper-label"
                                id="demo-simple-select-helper"
                                value={selectedSido}
                                label="시도 입력"
                                onChange={onChangeSido}
                                input={<BootstrapInput />}
                            >
                                {sidoInfo.map(v => (
                                    <MenuItem value={v}>{v.name}</MenuItem>
                                ))}
                            </Select>
                        </FormControl>

                        {selectedSido ?
                        <FormControl sx={{ m: 1, minWidth: 120 }}>
                        <InputLabel id="demo-simple-select-helper-label">시군구 선택*</InputLabel>
                            <Select
                                labelId="demo-simple-select-helper-label"
                                id="demo-simple-select-helper"
                                value={selectedSigungu}
                                label="시군구 선택"
                                onChange={onChangeSigungu}
                                input={<BootstrapInput />}
                            >
                                {selectedSido?.sigunguList.map(v => (
                                    <MenuItem value={v}>{v.name}</MenuItem>
                                ))}
                            </Select>
                        </FormControl>
                        : null}

                        {selectedSigungu ?
                        <FormControl sx={{ m: 1, minWidth: 120 }}>
                        <InputLabel id="demo-simple-select-helper-label">행정동 선택*</InputLabel>
                            <Select
                                labelId="demo-simple-select-helper-label"
                                id="demo-simple-select-helper"
                                value={selectedEupmyundong}
                                label="행정동 선택"
                                onChange={onChangeEupmyundong}
                                input={<BootstrapInput />}
                            >
                                {selectedSigungu?.eupmyundongList.map(v => (
                                    <MenuItem value={v}>{v.name}</MenuItem>
                                ))}
                            </Select>
                        </FormControl>
                        : null}
                    </div>
                    <div className="nav" id="nav13">(최대 5군데 가능)</div>
                    <div id="input13">
                        {[...selectedEupmyundongList].map(v => (
                            <span>{v.name}</span>
                        ))}
                    </div>
                    <div className="button" id="button13"><button type="button" onClick={resetArea}>리셋</button></div>
                </div>




            <div className="wrapper">
                <div className="nav" id="policy">이용약관동의</div>
                <div className="input" id="policyCheck">
                    <input type="checkbox" id="checkBtn"/>
                    <label htmlFor="checkBtn"></label>
                    <label htmlFor="checkBtn"><h3>약관에 동의합니다.</h3></label>
                </div>
                {/* <div className="button" id="policyBtn"><button>약관보기</button></div> */}
                <div id="terms-of-use-show" onClick={clickTermsOfUse}>약관보기＞</div>
            </div>

            <button id="sign-up-btn" onClick={onClickSignUp}>회원가입</button>

            </div>

            {/* 모달 팝업 만들기 */}
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

export default SellerSignUp;