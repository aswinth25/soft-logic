
function Product() {
  let isAvailable = false;

  return (
    <div>
      <h2>{isAvailable ? "Product In Stock" : "Out of Stock"}</h2>
    </div>
  );
}

export default Product;