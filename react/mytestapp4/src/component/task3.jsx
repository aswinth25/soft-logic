import { useState } from "react";

function Task3() {
  const [message, setMessage] = useState("");

  function showMessage(value) {
    setMessage(value);
  }

  return (
    <div>
      <h3>Task 3: Passing a Value to an Event</h3>

      <button onClick={() => showMessage("Hello Aswinth!")}>
        Click Me
      </button>

      <p>{message}</p>
    </div>
  );
}

export default Task3;