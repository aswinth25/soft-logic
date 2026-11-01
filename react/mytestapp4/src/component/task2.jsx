import { useState } from "react";

function Task2() {
  const [name, setName] = useState("");

  return (
    <div>
      <h3>Task 2: Display Input on Click</h3>

      <input
        type="text"
        id="name"
        placeholder="Enter your name"
      />

      <button
        onClick={() => {
          const input = document.getElementById("name");
          setName(input.value);
        }}
      >
        Display
      </button>

      <p>Your Name: {name}</p>
    </div>
  );
}

export default Task2;