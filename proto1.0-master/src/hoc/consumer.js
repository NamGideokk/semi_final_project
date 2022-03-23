import React, { useEffect } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import { useNavigate } from 'react-router-dom';
import { myInfo, getAddress } from '../_redux/actions/user_actions';

// 로그인 된 사용자 중 구매자만 접근 가능하도록 처리하는 hoc
export default function (WrappedComponent) {
  function ConsumerCheck() {
    const navigate = useNavigate();
    const dispatch = useDispatch();

    const isLoggedIn = useSelector((state) => state.user.isLoggedIn);

    useEffect(() => {
      if (isLoggedIn) {
        dispatch(myInfo())
          .catch(() => {
            navigate('/');
          })
          .then((result) => {
            if (result.value.role == 'CONSUMER') {
              dispatch(getAddress(result.value.eupmyundongCode));
              return;
            }
            navigate('/home');
          });
      } else {
        navigate('/');
      }
    }, []);

    return WrappedComponent;
  }

  return <ConsumerCheck />;
}
