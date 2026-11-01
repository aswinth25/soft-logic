import { useState } from "react";

function Task7() {
  const [product, setProduct] = useState({
    id: 1,
    name: "Laptop",
    price: 50000,
    quantity: 2
  });

  function updatePrice() {
    setProduct({
      ...product,
      price: 45000
    });
  }

  return (
    <div>
      <h3>Task 7: Product Information</h3>

      <p>Product ID: {product.id}</p>
      <p>Product Name: {product.name}</p>
      <p>Price: ₹{product.price}</p>
      <p>Quantity: {product.quantity}</p>

      <button onClick={updatePrice}>
        Update Price
      </button>
    </div>
  );
}

export default Task7;