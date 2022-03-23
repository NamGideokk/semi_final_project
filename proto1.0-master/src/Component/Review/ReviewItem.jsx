import './ReviewItem.css';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faCommentDots, faThumbsUp } from '@fortawesome/free-regular-svg-icons';
import { faStar, faUserCircle } from '@fortawesome/free-solid-svg-icons';
import { useCallback, useMemo } from 'react';
import moment from 'moment';

const ReviewItem = ({ reviewInfo }) => {
  // 리뷰 섹션 클릭이벤트
  const clickReviewLike = (e) => {
    alert('도움돼요 버튼, 서비스 준비중입니다.');
  };
  const clickComment = (e) => {
    alert('댓글달기 버튼, 서비스 준비중입니다.');
  };

  const images = useMemo(() => {
    return reviewInfo?.images.map(v => process.env.REACT_APP_BACKEND_HOST.concat(v)) ?? [];
  }, [reviewInfo]);


  console.log(reviewInfo);

  const convertTime = useCallback((time) => {
    return moment(time).format('YYYY/MM/DD');
  }, []);

  return (
    <>
      <div className='review-container'>
        <div className='reviewC1'>
          <div className='reviewC1-img-container'>
            <FontAwesomeIcon icon={faUserCircle} className='userrricon' />
          </div>
        </div>
        <div className='reviewC2'>
          <p>{reviewInfo?.writer.name}</p>
        </div>
        <div className='reviewC3'>
          <p>{convertTime(reviewInfo?.regTime ?? 0)}</p>
        </div>
        <div className='reviewC4'>
          <p>{reviewInfo?.reviewPoint}</p>
          <FontAwesomeIcon icon={faStar} className='writer-rating-icon' />
        </div>
        <div className='reviewC5'>
          <p>{reviewInfo?.content}</p>
        </div>
        <div className='reviewC6' onClick={clickReviewLike}>
          <FontAwesomeIcon icon={faThumbsUp} className='review-like-icon' />
          <p>도움돼요</p>
        </div>
        <div className='reviewC7' onClick={clickComment}>
          <FontAwesomeIcon
            icon={faCommentDots}
            className='review-comment-icon'
          />
          <p>댓글달기</p>
        </div>
        <div className='reviewC8'>
          {images?.map((v) => (
            <div className='reviewC8-img-container'>
              <img src={v} alt='리뷰사진' />
            </div>
          ))}
        </div>
      </div>
    </>
  );
};

export default ReviewItem;
