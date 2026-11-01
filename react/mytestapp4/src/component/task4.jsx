import { useState } from "react";

function Task4() {
  const [message, setMessage] = useState("Perform an event");

  return (
    <div>
      <h3>Task 4: Multiple Events</h3>

      <button
        onClick={() => setMessage("Button clicked!")}
        onMouseOver={() => setMessage("Mouse is over the button!")}
      >
        Try Events
      </button>

      <p>{message}</p>
    </div>
  );
}

export default Task4;