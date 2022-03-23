import { BrowserRouter, Routes, Route } from "react-router-dom";
import AuthHoc from './hoc/auth';
import ConsumerHoc from './hoc/consumer';
import SellerHoc from './hoc/seller';

import "./App.css";

import SelectLogin from './Component/Authentication/SelectLogin';
import SelectLoginFooter from './Component/Authentication/SelectLoginFooter';
import ConsumerSignUp from './Component/Authentication/ConsumerSignUp';
import ConsumerLogin from './Component/Authentication/ConsumerLogin';
import SellerSignUp from './Component/Authentication/SellerSignUp';
import SellerLogin from './Component/Authentication/SellerLogin';


import Header from "./Component/Header";
import MiniBar from "./Component/Authentication/MiniBar";
import ProductCategory from './Component/ProductCategory';
import DetailedCategory from "./Component/DetailedCategory";
import MainPrdContBackgrd from "./Component/MainPrdContBackgrd";
import PrdContBackgrd from "./Component/PrdContBackgrd";
import {MainBanner, GradientBanner, BtnSlideBanner, BasicBanner} from "./Component/Banners";
import UpBtn from './Component/UpBtn';
import Footer from "./Component/Footer";
import ProductPage from "./Component/ProductPage";
import PurchasePage from "./Component/PurchasePage";

//고객센터//
import CustomerCenter from "./Component/CustomerCenter/CustomerCenter";

//마이페이지//
import MyPage from "./Component/Mypage/MyPage";
import UserInfoContainer from "./Component/Mypage/UserInfoContainer";
import CartContainer from './Component/CartContainer';
import OrderHistory from './Component/Mypage/OrderHistory'
import MyReviews from './Component/Mypage/MyReviews';
import Myinfo from './Component/Mypage/Myinfo';

//판매자 마이페이지//
import SellerMyPage from './Component/Mypage/SellerMyPage';
import SellerPrd from './Component/SellerPrd';
import SellerOrder from './Component/SellerOrder';
import SellerMyinfo from './Component/Mypage/SellerMyinfo';

// 메인에서 상품 검색후 출력할 페이지
import SearchPage from "./Component/SearchPage";
import SearchCategory from "./Component/Search/SearchCategory"
import SearchResults from "./Component/Search/SearchResults"
import Logo from './assets/pick.png';

const App = () => {
  const m2mAlert = () => {
      alert("서비스 준비중입니다.");
  }
  return (
    <BrowserRouter>
      <Routes>
        /* 로그인 선택 페이지 (최초 접속 페이지) */
        <Route
          path='/'
          element={AuthHoc(
            <>
              <MiniBar />
              <SelectLogin />
              <SelectLoginFooter />
            </>,
            false
          )}
        />
        /* 구매자 로그인 */
        <Route
          path='/login'
          element={AuthHoc(
            <>
              <MiniBar />
              <ConsumerLogin />
              <SelectLoginFooter />
            </>,
            false
          )}
        />
        /* 판매자 로그인 */
        <Route
          path='/seller/login'
          element={AuthHoc(
            <>
              <MiniBar />
              <SellerLogin />
              <SelectLoginFooter />
            </>,
            false
          )}
        />
        /* 구매자 회원가입 */
        <Route
          path='/consumer/signup'
          element={AuthHoc(
            <>
              <MiniBar />
              <ConsumerSignUp />
              <SelectLoginFooter />
            </>,
            false
          )}
        />
        /* 판매자 회원가입 */
        <Route
          path='/seller/signup'
          element={AuthHoc(
            <>
              <MiniBar />
              <SellerSignUp />
              <SelectLoginFooter />
            </>,
            false
          )}
        />
        /* 메인 */
        <Route
          path='/home'
          element={AuthHoc(
            <>
              <Header />
              <MainBanner />
              <ProductCategory />
              <MainPrdContBackgrd
                title='이번주 인기 상품'
                sort='product.sellCount,desc'
              />
              <BtnSlideBanner />
              <MainPrdContBackgrd
                title='오늘 들어온 상품'
                sort='product.id,desc'
              />
              <GradientBanner />
              <UpBtn />
              <MainPrdContBackgrd
                title='놓치면 후회할 가격'
                sort='product.discountRate,desc'
              />
              <BasicBanner />
              <Footer />
            </>
          )}
        />
        {/* 메인에서 상품 검색후 출력할 페이지 */}
        <Route
          path='/search'
          element={AuthHoc(
            <>
              <Header />
              <MainBanner />
              <SearchPage />
              <SearchCategory />
              <SearchResults />
              <Footer />
            </>
          )}
        />
        <Route
          path='/mainProducts'
          element={AuthHoc(
            <>
              <Header />
              <MainBanner />
              <ProductCategory />
              <DetailedCategory />
              <PrdContBackgrd />
              <UpBtn />
              <Footer />
            </>
          )}
        />
        /* 상품 상세페이지 경로는 가제 */
        <Route
          path='/prdpg'
          element={AuthHoc(
            <>
              <Header />
              <UpBtn />
              <ProductPage />
              <UpBtn />
              <Footer />
            </>
          )}
        />
        /* 상품 구매하기 페이지 (주문서) */
        <Route
          path='/payment'
          element={ConsumerHoc(
            <>
              <Header />
              <PurchasePage />
              <Footer />
            </>
          )}
        />
        /* 판매자 상품 업로드 */
        /* 고객센터 */ /* 공지사항 */
        <Route
          path='/serviceCenter'
          element={AuthHoc(
            <>
              <Header />
              <CustomerCenter />
              <Footer />
            </>
          )}
        >
          <Route path='notice' element={
            <div className="rc-mycart">
                <h3>공지사항</h3>
                <div className="rc-purchase-product-wrapper">
                    <article>
                        <header className="post-info">
                            <h2 className="post-title">공지사항</h2>
                            <p className="post-cat">새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</p>
                        </header>
                        <table>
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>제목</th>
                                    <th>날짜</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1</td>
                                    <td>픽미업 홈페이지 개설</td>
                                    <td>2022-02-01</td>
                                </tr>
                            </tbody>
                        </table>
                    </article>
                </div>
            </div>
          }/>
          <Route path="company" element={
            <div className="rc-mycart">
                <h3>회사소개</h3>
                <div className="rc-purchase-product-wrapper">
                    <article>
                        <header className="post-info">
                            {/* <h2 className="post-title">회사소개</h2> */}
                            <div className="chap chap1">
                                <img src={Logo} />
                                <p className="mini-title">나와 내 가족이 사고 싶은 상품을 판매합니다.</p>
                                <p className="mini-content">픽미업은 미각적, 심미적으로 만족감을 주면서 사람의 몸에 이로운 상품이 우리의 삶까지 변화시킬 수 있다고 믿습니다. <br/>
                                    내가 먹고 쓰는 것이 곧 '나'이니까요. 안정성, 맛, 상업성 등 여러 면에서 만족스러울만한, 최상의 상품을 고르기 위해 직접 먹어보고 사용해보며 여러 차례에 걸쳐 꼼꼼하게
                                    검증합니다.</p>
                            </div>
                        </header>
                    </article>
                </div>
            </div>
          }/>
          <Route path="FAQ" element={
            <div className="rc-mycart">
                <h3>FAQ</h3>
                <div className="rc-purchase-product-wrapper">
                    <article>
                        <header className="post-info">
                            <h2 className="post-title">FAQ</h2>
                            <p className="post-cat">고객님들께서 가장 자주하시는 질문을 모두 모았습니다.</p>
                        </header>
                        <ul className="sub-menu">
                            <li><a>content</a></li>
                        </ul>
                    </article>
                </div>
            </div>
          }/>
          <Route path="contactUs" element={
            <div className="rc-mycart">
                <h3>1:1 문의</h3>
                <div className="rc-purchase-product-wrapper">
                    <article>
                        <header class="post-info">
                            <h2 class="post-title">1대1 문의게시판</h2>
                            <p class="post-cat">문의게시판입니다.</p>
                        </header>
                        <table>
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>문의내용</th>
                                    <th>날짜</th>
                                    <th>답변현황</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>number</td>
                                    <td>title</td>
                                    <td>day</td>
                                    <td>answer</td>
                                </tr>
                            </tbody>
                        </table>
                        <input type="button" value="작성하기" id="write" onClick={m2mAlert}/>
                    </article>
                </div>
            </div>
          }/>
        </Route>
        /* 마이페이지 */
        <Route
          path='/myInfo'
          element={ConsumerHoc(
            <>
              <Header />
              <UserInfoContainer />
              <MyPage />
              <Footer />
            </>
          )}
        >
          <Route
            path='cart'
            element={
              <div className='rc-mycart'>
                <h3>장바구니</h3>
                <div className='rc-purchase-product-wrapper'>
                  <CartContainer />
                </div>
              </div>
            }
          />
          <Route
            path='orders'
            element={
              <div className='rc-order'>
                <h3>주문/배송 조회</h3>
                <div className='rc-order-list-wrapper'>
                  <OrderHistory />
                </div>
              </div>
            }
          />
          <Route
            path='like'
            element={
              <div className='rc-like'>
                <h3>나의 찜한 상품</h3>
                <div className='rc-like-list-wrapper'></div>
              </div>
            }
          />
          <Route
            path='reviews'
            element={
              <div className='rc-review'>
                <h3>나의 리뷰 내역</h3>
                <div className='rc-review-list-wrapper'>
                  <MyReviews />
                </div>
              </div>
            }
          />
          <Route
            path='info'
            element={
              <div className='rc-myinfo'>
                <h3>나의 정보 조회</h3>
                <div className='rc-myinfo-wrapper'>
                  <Myinfo />
                </div>
              </div>
            }
          />
        </Route>
        /* 판매자 마이페이지 */
        <Route
          path='/sellerPage'
          element={SellerHoc(
            <>
              <Header />
              <UserInfoContainer />
              <SellerMyPage />
              <Footer />
            </>
          )}
        >
          <Route
            path='products'
            element={
              <div className='rc-mycart'>
                <h3>나의 상품 관리</h3>
                <div className='rc-purchase-product-wrapper'>
                  <SellerPrd />
                </div>
              </div>
            }
          />
          <Route
            path='orders'
            element={
              <div className='rc-mycart'>
                <h3>주문/배송 관리</h3>
                <div className='rc-purchase-product-wrapper'>
                  <SellerOrder />
                </div>
              </div>
            }
          />
          <Route
            path='reviews'
            element={
              <div className='rc-mycart'>
                <h3>상품 리뷰 내역</h3>
                <div className='rc-purchase-product-wrapper'>
                  <MyReviews />
                </div>
              </div>
            }
          />
          <Route
            path='info'
            element={
              <div className='rc-myinfo'>
                <h3>나의 정보 관리</h3>
                <div className='rc-myinfo-wrapper'>
                  <SellerMyinfo />
                </div>
              </div>
            }
          />
        </Route>
      </Routes>
    </BrowserRouter>
  );
}
export default App;