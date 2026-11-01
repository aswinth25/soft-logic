
import React, { useState } from "react";

function TermsConditions() {
  const [accepted, setAccepted] = useState(false);

  return (
    <div className="card">
      <h2>4. Terms and Conditions</h2>

      <label>
        <input
          type="checkbox"
          checked={accepted}
          onChange={(e) => setAccepted(e.target.checked)}
        />
        I accept Terms and Conditions
      </label>

      <br /><br />

      <button disabled={!accepted}>
        Submit
      </button>
    </div>
  );
}

export default TermsConditions;
