import { Link } from "react-router-dom";
import "./SelectLogin.css";

const SelectLogin = () => {

    return(
        <>
        <div className="login-container">
            <div className="lc1">
                <div className="lc1-img-container">
                    <img src="/img/pmu-logo-ex.png" alt="로고" />
                </div>
            </div>
            <div className="lc2">
                <Link to="/login"><button>구매자 회원 로그인</button></Link>
            </div>
            <div className="lc3">
                <Link to="/seller/login"><button>판매자 회원 로그인</button></Link>
            </div>
            <div className="lc4s">
                <Link to="/consumer/signup"><p>구매자<br/>회원가입</p></Link>
            </div>
            <div className="lc5s">
                <Link to="/seller/signup"><p>판매자<br/>회원가입</p></Link>
            </div>
        </div>
        </>
    );
}

export default SelectLogin;