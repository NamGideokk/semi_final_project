import { Component, useEffect, useRef, useState } from "react";
import { faAngleRight } from "@fortawesome/free-solid-svg-icons";
import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";

import "./Banners.css";


// 메인 상단 배너
const MainBanner = () => {

    const mainBannerSlider = useRef();
    const [mainBannerImgSrc, setMainBannerImgSrc] = useState([
        "https://img-cf.kurly.com/banner/main/pc/img/a2d4d7ba-29c9-4d80-b4d6-214b64c0e18d",
        "https://img-cf.kurly.com/banner/main/pc/img/6c18d549-edb2-4564-9a93-fc22a0fca4aa",
        "https://img-cf.kurly.com/banner/main/pc/img/72a90f92-861a-47fd-bd79-830ff2fd7756",
        "https://img-cf.kurly.com/banner/main/pc/img/92f2f534-a0a1-4a7f-9e02-fca0445b67b1",
        "https://img-cf.kurly.com/banner/main/pc/img/90d1cd65-8ba0-4da3-b855-1ca458d3234e"
    ]);

    // setInterval(imgSlider,1000);
    
    // const mainBannerSlider = document.querySelector("#main-banner-slider"), //상단 메인 배너
    // let imgsIndex = 0;

    // // 3초마다 이미지 변경
    // function imgSlider(){
    //     mainBannerSlider.setAttribute("src", mainBannerimgs[imgsIndex]);
    //     imgsIndex++;
    //     if(imgsIndex >= mainBannerimgs.length){
    //         imgsIndex = 0;
    //     }
    // };
    


    return(
        <div className="main-banner">
            <img id="main-banner-slider" ref={mainBannerSlider} src="https://img-cf.kurly.com/banner/main/pc/img/a2d4d7ba-29c9-4d80-b4d6-214b64c0e18d" alt="banner"/>
        </div>
    );
}

// 글씨 왼쪽 슬라이딩 그라디언트배경 대형 배너
const GradientBanner = () => {

    useEffect(()=>{
    
    },[])

    // if(yValue > 1530){
    //     slidingH1.style.animation = "fontSlide 1.5s forwards";
    // }
    // if(yValue > 1780){
    //     slidingH3.style.animation = "fontSlide 1.5s forwards";
    // }
    // if(yValue > 1830){
    //     slidingP.style.animation = "fontSlide 1.5s forwards";
    // }


    return(
        <div className="gradient-background" >
            <div className="gradient-background-inner">
                <h3>프리미엄 라면</h3>
                <h1>우리밀 바다가득 해물라면</h1>
                <p><a href="#!">구매하러 가기 ＞</a></p>
                <img src="http://andos.co.kr/wp-content/uploads/2016/04/20160421_075537.png" alt="product" />
            </div>
        </div>
    );
}

// 버튼 슬라이드 배너 .react
const BtnSlideBanner = () => {

    const slidingContainer = useRef();
    
    useEffect(()=>{

    },[slidingContainer]);

    const clickLeftBtn = (event) => {
        slidingContainer.current.style.transform = "translate(0)";
    }
    const clickMidBtn = (event) => {
        slidingContainer.current.style.transform = "translate(-1100px)";
    }
    const clickRightBtn = (event) => {
        slidingContainer.current.style.transform = "translate(-2200px)";
    }

    return(
        <div>
            <div className="of-div">
                <div ref={slidingContainer} className="slider-container">
                    <div className="slider-inner">
                        <img src="https://img-cf.kurly.com/banner/main/pc/img/92f2f534-a0a1-4a7f-9e02-fca0445b67b1" alt="banner" />
                    </div>
                    <div className="slider-inner">
                        <img src="https://img-cf.kurly.com/banner/main/pc/img/0618af6d-26c5-4140-aa34-d3940589b9a5" alt="banner" />
                    </div>
                    <div className="slider-inner">
                        <img src="https://img-cf.kurly.com/banner/main/pc/img/ab2389bf-5bef-4886-b1f8-8696ddd309b3" alt="banner" />
                    </div>
                </div>
            </div>
            <div className="slider-btns">
                <button onClick={clickLeftBtn} className="btn1"></button>
                <button onClick={clickMidBtn} className="btn2"></button>
                <button onClick={clickRightBtn} className="btn3"></button>
            </div>
        </div>
    );
}

// 일반 이미지 배너 .react
const BasicBanner = () => {
    
    return(
        <div className="banner-01">
            <img src="https://img-cf.kurly.com/banner/main/pc/img/f3f3c9e4-c80a-49e8-a64d-9251c36b446e" alt="banner" />
            <a href="#!"><p>설음식 준비하러 가기 ＞</p></a>
        </div>
    );
}

export {MainBanner, GradientBanner, BtnSlideBanner, BasicBanner};