import "./Containers.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faCommentDots, faCreditCard, faHeart, faThumbsUp } from "@fortawesome/free-regular-svg-icons";
import { faCoins, faMinus, faPlus, faStar, faUserCircle } from "@fortawesome/free-solid-svg-icons";


const ReviewContainer = () => {

    // 리뷰 섹션 클릭이벤트
    const clickReviewLike = (e) => {
        alert("도움돼요 버튼, 서비스 준비중입니다.");
    }
    const clickComment = (e) => {
        alert("댓글달기 버튼, 서비스 준비중입니다.");
    }
    
    return(
        <>
        <div className="review-container">
            <div className="reviewC1">
                <div className="reviewC1-img-container">
                    <FontAwesomeIcon icon={faUserCircle} className="userrricon" />
                </div>
            </div>
            <div className="reviewC2">
                <p>이름(남** 처리로)</p>
            </div>
            <div className="reviewC3">
                <p>2022/02/08</p>
            </div>
            <div className="reviewC4">
                <p>5</p><FontAwesomeIcon icon={faStar} className="writer-rating-icon" />
            </div>
            <div className="reviewC5">
                <p>너무 맛있어요 다음에 또 살거에요!</p>
            </div>
            <div className="reviewC6" onClick={clickReviewLike}>
                <FontAwesomeIcon icon={faThumbsUp} className="review-like-icon" />
                <p>도움돼요</p>
            </div>
            <div className="reviewC7" onClick={clickComment}>
                <FontAwesomeIcon icon={faCommentDots} className="review-comment-icon" />
                <p>댓글달기</p>
            </div>
            <div className="reviewC8">
            <div className="reviewC8-img-container">
                    <img src="https://contents.lotteon.com/review/ctnts/5084131/P5E6609DFED7FAE67FDFE043C7DCB250F8C63B157C45677BDEDE03E88FE44177E/file/dims/resize/1200X1024" alt="리뷰사진" />
                </div>
                <div className="reviewC8-img-container">
                    <img src="https://contents.lotteon.com/review/ctnts/578175/P7E03B5F307AE42B92777335F599AC9B2AD1EA248FBC30D43C70F2EF404356A0C/file/dims/resize/1200X1024" alt="리뷰사진" />
                </div>
                <div className="reviewC8-img-container">
                    <img src="https://contents.lotteon.com/review/ctnts/252990/PE10592C854397518F7EE24A98C73C91A3C585468EADA34512EFE92D262DEE45A/file/dims/resize/1200X1024" alt="리뷰사진" />
                </div>
                <div className="reviewC8-img-container">
                    <img src="https://contents.lotteon.com/review/ctnts/948920/P911C8CDD1417EE12C68570E33AA3B32B3EDAB1F735C98C8FF592E6D8FC9E39E9/file/dims/resize/1200X1024" alt="리뷰사진" />
                </div>
                <div className="reviewC8-img-container">
                    <img src="https://contents.lotteon.com/review/ctnts/948920/P911C8CDD1417EE12C68570E33AA3B32B3EDAB1F735C98C8FF592E6D8FC9E39E9/file/dims/resize/1200X1024" alt="리뷰사진" />
                </div>
            </div>
        </div>
        </>
    );
}

export default ReviewContainer;