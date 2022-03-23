import axios from "axios";
import qs from "qs";
import { LOGIN, MY_INFO, LOGOUT, USER_ADDRESS } from "./types";

export function loginConsumer(data) {
  const result = axios.post("/login", qs.stringify(data));

  return {
    type: LOGIN,
    payload: result,
  };
}

export function myInfo() {
  const result = axios.get("/api/myInfo").then((response) => response.data);

  return {
    type: MY_INFO,
    payload: result,
  };
}

export function logout() {
  const result = axios.get("/logout");

  return {
    type: LOGOUT,
    payload: result,
  };
}

export function getAddress(eupmyundongCode) {
  const result = axios
    .get(`/api/public/area/eupmyundong/${eupmyundongCode}`)
    .then((response) =>
      response.data.sido.name.concat(
        " ",
        response.data.sigungu.name,
        " ",
        response.data.name
      )
    );

  return {
    type: USER_ADDRESS,
    payload: result,
  };
}

export function loginSeller(data) {
  const result = axios.post("/seller/login", qs.stringify(data));
  return {
    type: LOGIN,
    payload: result,
  };
}
