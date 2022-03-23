import axios from "axios";
import qs from "qs";

export function showCart() {
  const result = axios
    .get("/api/consumer/showCart")
    .then((response) => response.data);

  return {
    payload: result,
  };
}

export function removeCart(cartId) {
  const result = axios.delete("/api/consumer/deleteCart/" + cartId);
  return {
    payload: result,
  };
}

export function updateCart(cartId, qty) {
  const params = new URLSearchParams();
  params.append("count", qty);
  const result = axios.put("/api/consumer/updateCart/" + cartId, params);
  return {
    payload: result,
  };
}
