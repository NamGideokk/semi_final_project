import { faChevronUp } from "@fortawesome/free-solid-svg-icons"
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome"
import "./UpBtn.css";

// 화면 최상단 이동 버튼 .react
const UpBtn = () => {

    const scrollToTop = () => {
        window.scroll({
            behavior: "smooth",
            top: 0
          });
    };

    return(
        <button onClick={scrollToTop} className="up-btn">
            <FontAwesomeIcon icon={faChevronUp} className="up-icon" />
        </button>
    );
};

export default UpBtn;