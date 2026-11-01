import { useState } from "react";

function Task1() {
  const [name, setName] = useState("");
  const [result, setResult] = useState("");

  function handleSubmit(event) {
    event.preventDefault();
    setResult(name);
  }

  return (
    <div>
      <h3>Task 1: Submit User Input</h3>

      <form onSubmit={handleSubmit}>
        <input
          type="text"
          placeholder="Enter your name"
          value={name}
          onChange={(event) => setName(event.target.value)}
        />

        <button type="submit">Submit</button>
      </form>

      <p>Entered Name: {result}</p>
    </div>
  );
}

export default Task1;