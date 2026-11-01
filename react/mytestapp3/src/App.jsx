
import ProfileCard from "./component/profilecard.jsx";
import Button from "./component/button.jsx";
import Card from "./component/card.jsx";
import "./App.css";

function App() {
  return (
    <div className="app">
      <h1>Props and Children</h1>

      <h2>User Profile Cards</h2>

      <div className="profile-container">
        <ProfileCard name="John" age={25} role="Developer">
          <p>Likes React </p>
        </ProfileCard>

        <ProfileCard name="Priya" age={23} role="Designer">
          <p>Loves UI and UX </p>
        </ProfileCard>

        <ProfileCard name="Aswinth" age={22} role="Software Engineer">
          <p>Interested in Python</p>
        </ProfileCard>
      </div>

      {/* 2. Reusable Buttons */}
      <h2>Reusable Buttons</h2>

      <div className="button-container">
        <Button color="blue" size="large">
          Submit
        </Button>

        <Button color="green" size="medium">
          Success
        </Button>

        <Button color="red" size="small">
          Cancel
        </Button>
      </div>

      {/* 3. Reusable Cards */}
      <h2>Reusable Cards</h2>

      <div className="card-container">
        <Card title="Product" footer="rs 999">
          <p>This is a great product.</p>
        </Card>

        <Card title="About" footer="Learn More">
          <p>We build useful software applications.</p>
        </Card>

        <Card title="Contact" footer="Contact Us">
          <p>Email: example@gmail.com</p>
        </Card>
      </div>
    </div>
  );
}

export default App;