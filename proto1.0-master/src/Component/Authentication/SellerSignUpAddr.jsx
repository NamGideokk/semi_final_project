import { useState } from "react";
import DaumPost from "./DaumPostCode";
// import DaumPostcode from "react-daum-postcode";

import "./SellerSignUp.css";


const SellerSignUpAddr = ({setAddress1, setAddress2, setDongCode}) => {
     //도로명 주소 API
     const [reOpenDaumModal, setReOpenDaumModal] = useState(false);


     return(
            <>

                        {reOpenDaumModal &&
                            <DaumPost setAddress1={setAddress1} setDongCode={setDongCode} />
                        }
                     <div className="input" id="input5">
                            <input id="address_kakao" type="text" name="address1" onChange={(event) => {
                                if(setAddress1) {
                                    setAddress1(event.currentTarget.value);
                                }
                            }} readOnly/>
                        </div>
                        <div className="button" id="button5" onClick={() => setReOpenDaumModal(true)}><button id="reBtn" type="button" >재검색</button></div>
                        <div className="nav" id="nav6"><label htmlFor="address_detail">상세주소</label></div>
                        <div className="input" id="input6">
                            <input id="address_detail" type="text" name="address2" placeholder="상세주소를 입력해주세요" onChange={(event) => {
                                if(setAddress2) {
                                    setAddress2(event.currentTarget.value);
                                }
                            }}/>
                        </div>
            </>

     )
}

export default SellerSignUpAddr;
