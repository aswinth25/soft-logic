
import React, { useEffect } from "react";

import LoginForm from "./components/loginform.jsx";
import StudentDetails from "./components/studentdetais.jsx";
import CourseSelection from "./components/courseselection.jsx";
import TermsConditions from "./components/termcondition.jsx";
import RegistrationForm from "./components/reg.jsx";

import "./App.css";

function App() {

  useEffect(() => {
    document.title = "Day 42 Assignment";
  }, []);

  return (
    <div className="container">
      <h1>Day 42 React Assignment</h1>

      <LoginForm />
      <StudentDetails />
      <CourseSelection />
      <TermsConditions />
      <RegistrationForm />

    </div>
  );
}

export default App;
