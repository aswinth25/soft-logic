
import React, { useState } from "react";

function StudentDetails() {
  const [name, setName] = useState("");
  const [age, setAge] = useState("");
  const [department, setDepartment] = useState("");
  const [details, setDetails] = useState(null);

  function handleSubmit(e) {
    e.preventDefault();

    setDetails({
      name,
      age,
      department
    });
  }

  return (
    <div className="card">
      <h2>2. Student Details</h2>

      <form onSubmit={handleSubmit}>
        <input
          placeholder="Student Name"
          value={name}
          onChange={(e) => setName(e.target.value)}
          required
        />

        <input
          type="number"
          placeholder="Age"
          value={age}
          onChange={(e) => setAge(e.target.value)}
          required
        />

        <input
          placeholder="Department"
          value={department}
          onChange={(e) => setDepartment(e.target.value)}
          required
        />

        <button type="submit">Submit</button>
      </form>

      {details && (
        <div>
          <h3>Student Information</h3>
          <p>Name: {details.name}</p>
          <p>Age: {details.age}</p>
          <p>Department: {details.department}</p>
        </div>
      )}
    </div>
  );
}

export default StudentDetails;
