import React from "react";
import { useLocation, Link } from "react-router-dom";

function Dashboard() {
  const location = useLocation();

  const username = location.state?.username || "User";

  return (
    <div className="page">
      <h1>Welcome to Dashboard</h1>

      <h2>Hello, {username}!</h2>

      <p>You have successfully navigated to Dashboard.</p>

      <Link to="/">Go to Home</Link>
    </div>
  );
}

export default Dashboard;