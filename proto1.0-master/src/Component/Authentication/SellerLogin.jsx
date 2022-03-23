import { useCallback, useState } from "react";
import { useDispatch } from "react-redux";
import { Link, useNavigate } from "react-router-dom";
import { loginConsumer, loginSeller } from "../../_redux/actions/user_actions";

import "./ConsumerLogin";

const SellerLogin = () => {
  const dispatch = useDispatch();

  const [email, setEmail] = useState("");
  const [pwd, setPwd] = useState("");

  const navigate = useNavigate();

  const onEmailChanged = useCallback((event) => {
    setEmail(event.currentTarget.value);
  }, []);
  const onPwdChanged = useCallback((event) => {
    setPwd(event.currentTarget.value);
  }, []);
  const onSubmit = useCallback(
    (event) => {
      event.preventDefault();
      console.log(email);
      console.log(pwd);
      dispatch(loginSeller({ email: email, pwd: pwd }))
        .then(() => navigate("/home"))
        .catch(() => alert("로그인 실패"));
    },
    [email, pwd]
  );

  return (
    <div className="main-container">
      <div className="lc1">
        <div className="lc1-img-container">
          <img src="/img/pmu-logo-ex.png" alt="로고" />
        </div>
      </div>

      {/* <div className="login-form"> */}
      <div className="lc2">
        <h3>판매자 로그인</h3>
      </div>

      <form className="lc3">
        <input
          type="text"
          className="text-field"
          placeholder="아이디"
          name="uid"
          onChange={onEmailChanged}
        />
        <input
          type="password"
          className="text-field"
          placeholder="비밀번호"
          name="pwd"
          onChange={onPwdChanged}
        />
      </form>

      <div className="links">
        <a href="/!">아이디찾기</a>
        <a href="/!"> 비밀번호찾기</a>
      </div>

      <div className="lc4">
        {/* <input type="submit" value="로그인" className="submit-btn btn"/> */}
        <p onClick={onSubmit}>로그인</p>
      </div>

      <div className="lc5">
        {/* <input type="button" value="회원가입" className="submit-btn btn"/> */}
        <Link to="/seller/signup">
        <p>회원가입</p>
        </Link>
      </div>

      <div className="lc6">
        <Link to="/">
          {/* <input type="button" value="처음으로" className="change-btn submit-btn btn"/> */}
          <p>처음으로</p>
        </Link>
      </div>
    </div>
    // </div>
  );
};

export default SellerLogin;