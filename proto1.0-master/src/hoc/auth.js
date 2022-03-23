import React, { useEffect } from 'react';
import { useSelector, useDispatch } from 'react-redux';
import { useNavigate } from 'react-router-dom';
import { myInfo, getAddress } from '../_redux/actions/user_actions';

export default function (WrappedComponent, option = true) {
  function AuthenticationCheck() {
    const navigate = useNavigate();
    const dispatch = useDispatch();

    const isLoggedIn = useSelector((state) => state.user.isLoggedIn);

    useEffect(() => {
      if (isLoggedIn) {
        if (!option) {
          navigate('/home');
          return;
        }
      } else {
        if (!option) {
          return;
        }
        navigate('/');
      }

      dispatch(myInfo())
        .catch(() => {
          navigate('/')
          return;
        })
        .then((result) => {
          dispatch(getAddress(result.value.eupmyundongCode))
        });
    }, []);

    return WrappedComponent;
  }

  return <AuthenticationCheck />;
}
