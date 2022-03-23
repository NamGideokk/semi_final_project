import "./Containers.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCoins, faTicketAlt, faTimes } from "@fortawesome/free-solid-svg-icons";

//마이페이지 -> 나의 찜한 상품 컨테이너
const LikePrdContainer = () => {

    const clickDelete = (e) => {
        alert("장바구니 삭제하기, 서비스 준비중입니다.");
    }

    return(
        <>
        <div className="like-product-wrapper">
            <div className="like-product-container">
                <div className="lpc1">
                    <div className="lpc1-img-container">
                        <img src="https://contents.lotteon.com/itemimage/_v162644/LM/88/01/11/75/40/41/8_/00/1/LM8801117540418_001_1.jpg/dims/resizef/554X554" alt="상품이미지" />
                    </div>
                </div>
                <div className="lpc2">
                    <p title="상품명">오리온 후레쉬베리 (28G*12입)</p>
                </div>
                <div className="lpc3">
                    <p title="상품 가격">3,400원<br/>(수량표시없음 1개가격)</p>
                </div>
                <div className="lpc4">
                    <div className="lpc4-btn">
                        <p>상품으로 이동</p>
                    </div>
                </div>
                <div className="lpc5">
                    <p><FontAwesomeIcon icon={faTimes} className="prd-delete-btn" title="삭제하기" onClick={clickDelete} /></p>
                </div>
            </div>
        </div>
        </>
    );
}

export default LikePrdContainer;