import React from "react";
import "../styles/Pages.css";

function Products() {
  const products = [
    {
      id: 1,
      name: "Laptop",
      price: "₹55,000",
      icon: "💻"
    },
    {
      id: 2,
      name: "Mobile",
      price: "₹25,000",
      icon: "📱"
    },
    {
      id: 3,
      name: "Headphones",
      price: "₹2,000",
      icon: "🎧"
    }
  ];

  return (
    <div className="page">
      <h1>Our Products</h1>

      <div className="product-container">
        {products.map((product) => (
          <div className="product-card" key={product.id}>
            <h1>{product.icon}</h1>
            <h2>{product.name}</h2>
            <p>{product.price}</p>
          </div>
        ))}
      </div>
    </div>
  );
}

export default Products;