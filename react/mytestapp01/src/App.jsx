import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'

import Footer from "./components/footer.jsx";
import Header from "./components/header.jsx";
import Profile from "./components/profile.jsx";
import "./App.css";

function App() {
  return (
    <div>
      <Header />
      <Profile />
      <Footer />
    </div>
  );
}

export default App;


