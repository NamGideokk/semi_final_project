import axios from "axios";
import qs from "qs";

export function showOrderReady() {
  const result = axios
    .get("/api/seller/showOrder/?state=0&&size=5")
    .then((response) => response.data);
  return {
    payload: result,
  };
}

export function showOrderReadyAll() {
  const result = axios
    .get("/api/seller/showOrder/?state=0")
    .then((response) => response.data);
  return {
    payload: result,
  };
}

export function showOrderReadyFinish() {
  const result = axios
    .get("/api/seller/showOrder/?state=10&&size=5")
    .then((response) => response.data);
  return {
    payload: result,
  };
}

export function showOrderReadyFinishAll() {
  const result = axios
    .get("/api/seller/showOrder/?state=10")
    .then((response) => response.data);
  return {
    payload: result,
  };
}

export function showOrderPickup() {
  const result = axios
    .get("/api/seller/showOrder/?state=20&&size=5")
    .then((response) => response.data);
  return {
    payload: result,
  };
}

export function showOrderPickupAll() {
  const result = axios
    .get("/api/seller/showOrder/?state=20")
    .then((response) => response.data);
  return {
    payload: result,
  };
}

export function showOrderCancel() {
  const result = axios
    .get("/api/seller/showOrder/?state=30&&size=5")
    .then((response) => response.data);
  return {
    payload: result,
  };
}

export function showOrderCancelAll() {
  const result = axios
    .get("/api/seller/showOrder/?state=30")
    .then((response) => response.data);
  return {
    payload: result,
  };
}

export function updateOrderState(orderId, orderState) {
  const formData = new FormData();
  console.log(orderId);
  console.log(orderState);
  formData.append("orderId", orderId);
  formData.append("orderState", orderState);
  const result = axios.put("/api/seller/setOrderStatus", formData);
  return {
    payload: result,
  };
}

export function deleteOrderState(orderId) {
  const formData = new FormData();
  formData.append("orderId", orderId);
  const result = axios.put("/api/seller/cancelOrder", formData);
  return {
    payload: result,
  };
}

export function sellerOrderPaging(state, pageId) {
  const result = axios
    .get("/api/seller/showOrder/?state=" + state + "&&size=5&&page=" + pageId)
    .then((response) => response.data);
  return {
    payload: result,
  };
}
