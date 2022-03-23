export function showReview() {
  const result = axios
    .get("/api/consumer/showCart")
    .then((response) => response.data);

  return {
    payload: result,
  };
}
