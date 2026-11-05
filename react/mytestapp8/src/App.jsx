import Navbar from "./components/navbar.jsx";
import ProfileCard from "./components/profilecard.jsx";
import ProductPage from "./components/productpage.jsx";

function App() {
  return (
    <>
      <Navbar />

      <section id="home">
        <ProfileCard />
      </section>

      <section id="about">
        <ProductPage />
      </section>
    </>
  );
}

export default App;