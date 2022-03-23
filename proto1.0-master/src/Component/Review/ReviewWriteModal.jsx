import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faStar as fullStar, faTimes } from '@fortawesome/free-solid-svg-icons';
import { faStar } from '@fortawesome/free-regular-svg-icons';
import { useCallback, useState } from 'react';
import axios from 'axios';
import { width } from '@mui/system';

const ReviewWriteModal = ({ orderInfo, onReviewWrited, onClickClose }) => {

  const [content, setContent] = useState('');
  const [reviewPoint, setReviewPoint] = useState(5);
  const [images, setImages] = useState([]);

  const clickReviewBtn = useCallback((e) => {
    e.preventDefault();
    e.stopPropagation();

    if(content == '') {
      alert('내용을 입력해주세요');
      return;
    }

    const formData = new FormData();
    formData.set('orderId', orderInfo?.id);
    formData.set('content', content);
    formData.set('reviewPoint', reviewPoint);
    images.forEach(v => formData.append('images', v.file))

    axios.post('/api/consumer/review', formData, {
      headers: {
        "Content-Type": "multipart/form-data"
      }
    })
    .then(() => {
      alert('리뷰가 작성되었습니다.');
      onReviewWrited?.();
    })
    .catch((err) => {
      if (err.response) {
        alert(err.response.data);
      } else if (err.request) {
        alert('서버가 응답하지 않습니다.');
      } else {
        alert('잘못된 요청입니다.');
      }
    });
  }, [content, images, reviewPoint]);

  const offModal = useCallback((e) => {
    e.stopPropagation();
    onClickClose?.();
  }, []);

  const onImageSelected = useCallback((e) => {
    e.preventDefault();
    if(images.length >= 5) {
      alert('5개까지만 등록할 수 있습니다.');
      return;
    }
    if(e.target.files.length == 0) {
      return;
    }

    const image = e.target.files[0];
    document.querySelector('#uldri1').files = new DataTransfer().files;

    const reader = new FileReader();
    reader.readAsDataURL(image);
    reader.onloadend = () => {
      setImages([...images, { file: image, url: reader.result }]);
    };
  }, [images]);

  const resetImages = useCallback((e) => {
    e.preventDefault();
    setImages([]);
  }, []);

  const onChangeContent = useCallback((e) => {
    e.preventDefault();
    setContent(e.target.value);
  }, []);

  const onChangeReviewPoint = useCallback((e) => {
    e.preventDefault();
    setReviewPoint(e.target.value);
  }, []);

  return (
    <>
      <div className='review-form-container'>
        <p>{orderInfo?.productName}</p>
        <FontAwesomeIcon
          icon={faTimes}
          className='off-modal'
          onClick={offModal}
        />
        <form encType='multipart/form-data'>
          <textarea
            value={content}
            onChange={onChangeContent}
            maxLength='400'
            placeholder='리뷰를 작성해주세요.
            (사진은 최대 5장까지 첨부할 수 있습니다.)'
          />
          <br />
          <label htmlFor='uldri1'>사진 추가</label>
          <input
            type='file'
            id='uldri1'
            className='uldri'
            accept='image/*'
            onChange={onImageSelected}
          />
          <label onClick={resetImages}>사진 리셋</label>
          <br />
          <div 
            style={{
              width:"100%",
              margin:"24px auto 0 auto",

            }}>
            {images?.map((v, i) => (
              <div className='reviewC8-img-container'
                style={{
                  width:"43px",
                  height:"43px",
                  padding:"0",
                  margin:"0 8px",
                  border:"1px solid var(--font-light)"
                }}
              key={i}>
                <img src={v.url} alt='리뷰사진' />
              </div>
            ))}
          </div>
          <br />
          <select
            name='reviewPoint'
            value={reviewPoint}
            onChange={onChangeReviewPoint}
          >
            <option value='5'>아주 좋아요 ★★★★★</option>
            <option value='4'>맘에 들어요 ★★★★☆</option>
            <option value='3'>보통이에요 ★★★☆☆</option>
            <option value='2'>그냥 그래요 ★★☆☆☆</option>
            <option value='1'>별로에요 ★☆☆☆☆</option>
          </select>
          <button onClick={clickReviewBtn}>리뷰 쓰기</button>
        </form>
      </div>
    </>
  );
};

export default ReviewWriteModal;
