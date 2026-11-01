import { useState } from "react";

function Task5() {
  const [name, setName] = useState("");
  const [result, setResult] = useState("");

  return (
    <div>
      <h3>Task 5: Input on Blur</h3>

      <input
        type="text"
        placeholder="Enter your name"
        value={name}
        onChange={(event) => setName(event.target.value)}
        onBlur={() => setResult(name)}
      />

      <p>Entered Name: {result}</p>
    </div>
  );
}

export default Task5;