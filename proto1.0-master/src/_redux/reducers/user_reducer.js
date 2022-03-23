import {
  LOGIN_WAIT,
  LOGIN_OK,
  MY_INFO_OK,
  MY_INFO_ERR,
  LOGOUT_OK,
  USER_ADDRESS_WAIT,
  USER_ADDRESS_OK,
} from '../actions/types';

export default function (state = {}, action) {
  switch (action.type) {
    case LOGIN_WAIT:
      return { ...state, isLoggedIn: false };
    case LOGIN_OK:
      return { ...state, isLoggedIn: true };
    case MY_INFO_OK:
      return { ...state, userInfo: action.payload };
    case MY_INFO_ERR:
      delete state.userInfo;
      return { ...state, isLoggedIn: false };
    case LOGOUT_OK:
      delete state.userInfo;
      return { ...state, isLoggedIn: false };
    case USER_ADDRESS_WAIT:
      delete state.location;
      return { ...state };
    case USER_ADDRESS_OK:
      return { ...state, location: action.payload };
    default:
      return state;
  }
}
