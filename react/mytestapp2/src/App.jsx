import { useState } from 'react'
import heroImg from './assets/hero.png'
import reactLogo from './assets/react.svg'
import viteLogo from './assets/vite.svg'
import './App.css'
import Student from "./component/agecheck.jsx";
import LoginStatus from "./component/logincheck.jsx";
import Result from "./component/result.jsx";
import Product from "./component/product.jsx";
import AgeCheck from "./component/student.jsx";

function App() {
  return (
    <div>
      <Student />
      <hr />

      <LoginStatus />
      <hr />

      <Result />
      <hr />

      <Product />
      <hr />

      <AgeCheck />
    </div>
  );
}

export default App;
