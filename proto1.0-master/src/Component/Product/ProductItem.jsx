import { useCallback, useState, useRef } from 'react';
import moment from 'moment';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faTimes } from '@fortawesome/free-solid-svg-icons';
import axios from 'axios';
import qs from 'qs';

import '@toast-ui/editor/dist/toastui-editor.css';
import { Editor } from '@toast-ui/react-editor';

const ProductItem = ({ productInfo, onProductRemoved, onRegisteredSalesPage }) => {

  const [showPrdSalesRegi, setShowPrdSalesRegi] = useState(false);

  const editorRef = useRef();

  const deleteAlert = useCallback(() => {
    if(window.confirm('상품을 삭제 하시겠습니까?\n삭제후 해당 상품의 실적 데이터는 복구할 수 없습니다.')) {
      axios.delete(`/api/seller/product/${productInfo?.id}`)
      .then(() => {
        onProductRemoved?.(productInfo);
      })
      .catch(err => {
        if (err.response) {
          alert(err.response.data);
        } else if (err.request) {
          alert('서버가 응답하지 않습니다.');
        } else {
          alert('잘못된 요청입니다.');
        }
      });
    }
  }, [productInfo]);

  const convertTime = useCallback((time) => {
    return moment(time).format('YYYY/MM/DD');
  }, []);

  const onClickSales = useCallback(() => {
    setShowPrdSalesRegi(true);
  }, []);

  const onClickRegisterSales = useCallback(() => {
    const editor = editorRef.current.getInstance();
    const html = editor.getHTML();

    axios
      .post('/api/seller/salespage', qs.stringify({
        name: productInfo?.name,
        content: html,
        productList: [productInfo?.id]
      }))
      .then(() => {
        onRegisteredSalesPage?.(productInfo);
        setShowPrdSalesRegi(false);
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
  }, [editorRef]);

  return (
    <>
      <tr>
        <td>{productInfo?.id}</td>
        <td>{productInfo?.name}</td>
        <td>{productInfo?.stockCount ?? 0}개</td>
        <td>{convertTime(productInfo?.lastModTime ?? (productInfo?.regTime ?? 0))}</td>
        <th>
          {productInfo?.sales ? (
            '판매중'
          ) : (
            <>
              <button className='sales-regi-btn' onClick={onClickSales}>판매 등록</button>
            </>
          )}
        </th>
        <td onClick={deleteAlert}>X</td>
      </tr>
      {showPrdSalesRegi && (
        <div className='prd-sales-resi-wrapper'>
          <p>상품의 상세정보를 입력하세요</p>
          <FontAwesomeIcon
            icon={faTimes}
            className='off-sales-resi-form-icon'
            onClick={() => {
              setShowPrdSalesRegi(false);
            }}
          />
          <Editor initialEditType='wysiwyg' ref={editorRef}/>
          <button className='prd-sales-resi-btn' onClick={onClickRegisterSales}>판매 등록</button>
        </div>
      )}
    </>
  );
};

export default ProductItem;
