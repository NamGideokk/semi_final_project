import "./MiniBar.css";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faTimes } from "@fortawesome/free-solid-svg-icons"
import { useState } from "react";


const Minibar = () => {

// 상단 광고바 숨기기
const [showMinibar, setShowMinibar] = useState(true);
const hiddenMinibar = () => {
    setShowMinibar(false);
    if(showMinibar === false){
        setShowMinibar(true)
    };
}

    return(
        <>
            {showMinibar ? 
                <div className="minibar-wrapper">
                    <div className="empty-box"></div>
                    <div className="minibar-inner">
                        지금 회원가입 하고 픽미업을 시작하세요!
                    </div>
                    <div className="empty-box">
                        <FontAwesomeIcon icon={faTimes} className="x-mark" title="닫기" onClick={hiddenMinibar}/>
                    </div>
                </div> : 
            null}
        </>
    );
}

export default Minibar;