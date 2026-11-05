import Button from "@mui/material/Button";
import ShoppingCartIcon from "@mui/icons-material/ShoppingCart";
import Rating from "@mui/material/Rating";

function ProductPage() {

  const products = [
    {
      id: 1,
      name: "Wireless Headphones",
      price: 1999,
      rating: 4.5,
      image: "https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=500"
    },
    {
      id: 2,
      name: "Smart Watch",
      price: 2499,
      rating: 4,
      image: "https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=500"
    },
    {
      id: 3,
      name: "Running Shoes",
      price: 2999,
      rating: 4.5,
      image: "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500"
    },
    {
      id: 4,
      name: "Camera",
      price: 15999,
      rating: 5,
      image: "https://images.unsplash.com/photo-1516035069371-29a1b244cc32?w=500"
    },
    {
      id: 5,
      name: "Backpack",
      price: 1499,
      rating: 4,
      image: "https://images.unsplash.com/photo-1553062407-98eeb64c6a62?w=500"
    },
    {
      id: 6,
      name: "Sunglasses",
      price: 999,
      rating: 4.5,
      image: "https://images.unsplash.com/photo-1511499767150-a48a237f0083?w=500"
    }
  ];

  const handleAddToCart = (product) => {
    alert(product.name + " added to cart!");
  };

  return (
    <div className="bg-gray-100 py-12 px-6">

      <h1 className="text-3xl font-bold text-center mb-10">
        Our Products
      </h1>

      <div className="max-w-7xl mx-auto grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">

        {products.map((product) => (

          <div
            key={product.id}
            className="bg-white rounded-xl shadow-md overflow-hidden
                       hover:shadow-xl transition"
          >

            <img
              src={product.image}
              alt={product.name}
              className="w-full h-52 object-cover"
            />

            <div className="p-5">

              <h2 className="text-xl font-bold text-gray-800">
                {product.name}
              </h2>

              <p className="text-green-600 font-bold text-lg mt-2">
                ₹{product.price}
              </p>

              <Rating
                value={product.rating}
                precision={0.5}
                readOnly
              />

              <Button
                variant="contained"
                fullWidth
                startIcon={<ShoppingCartIcon />}
                onClick={() => handleAddToCart(product)}
                className="mt-4"
              >
                Add to Cart
              </Button>

            </div>
          </div>

        ))}

      </div>
    </div>
  );
}

export default ProductPage;