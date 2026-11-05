import { useState } from "react";
import Button from "@mui/material/Button";
import MenuIcon from "@mui/icons-material/Menu";
import CloseIcon from "@mui/icons-material/Close";

function Navbar() {
  const [menuOpen, setMenuOpen] = useState(false);

  return (
    <nav className="bg-gray-900 text-white px-6 py-4 shadow-lg">
      <div className="max-w-7xl mx-auto flex justify-between items-center">

        <h1 className="text-2xl font-bold text-blue-400">
          MyStore
        </h1>

        <div className="hidden md:flex items-center gap-8">
          <a href="#home" className="hover:text-blue-400">Home</a>
          <a href="#about" className="hover:text-blue-400">About</a>
          <a href="#services" className="hover:text-blue-400">Services</a>
          <a href="#contact" className="hover:text-blue-400">Contact</a>

          <Button variant="contained" color="primary">
            Login
          </Button>
        </div>

        <button
          className="md:hidden"
          onClick={() => setMenuOpen(!menuOpen)}
        >
          {menuOpen ? <CloseIcon /> : <MenuIcon />}
        </button>
      </div>

      {menuOpen && (
        <div className="md:hidden flex flex-col gap-4 mt-5">
          <a href="#home">Home</a>
          <a href="#about">About</a>
          <a href="#services">Services</a>
          <a href="#contact">Contact</a>
          <Button variant="contained">Login</Button>
        </div>
      )}
    </nav>
  );
}

export default Navbar;