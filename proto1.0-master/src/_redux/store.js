import { createStore, applyMiddleware } from 'redux';
import ReduxThunk from 'redux-thunk';
import { createPromise } from 'redux-promise-middleware';
import Reducer from './reducers/index';
import { WAIT, OK, ERR } from './actions/types';

const customizedPromiseMiddleware = createPromise({
  promiseTypeSuffixes: [WAIT, OK, ERR],
});

const createStoreWithMiddleware = applyMiddleware(
  ReduxThunk,
  customizedPromiseMiddleware
)(createStore);

const store = createStoreWithMiddleware(
  Reducer,
  window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__()
);

export default store;
