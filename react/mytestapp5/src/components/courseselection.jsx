
import React, { useState } from "react";

function CourseSelection() {
  const [course, setCourse] = useState("");

  return (
    <div className="card">
      <h2>3. Course Selection</h2>

      <select
        value={course}
        onChange={(e) => setCourse(e.target.value)}
      >
        <option value="">Select Course</option>
        <option value="React">React</option>
        <option value=".NET">.NET</option>
        <option value="Java">Java</option>
      </select>

      <h3>Selected Course: {course}</h3>
    </div>
  );
}

export default CourseSelection;
