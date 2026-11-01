import { useState } from "react";

function Task8() {
  const [customers, setCustomers] = useState([
    "Aswinth",
    "Arun",
    "Kumar"
  ]);

  const [name, setName] = useState("");

  function addCustomer() {
    if (name.trim() === "") {
      return;
    }

    setCustomers([...customers, name.trim()]);
    setName("");
  }

  function deleteCustomer(index) {
    setCustomers(
      customers.filter((customer, i) => i !== index)
    );
  }

  return (
    <div>
      <h3>Task 8: Add and Delete Customers</h3>

      <input
        type="text"
        placeholder="Enter customer name"
        value={name}
        onChange={(event) => setName(event.target.value)}
      />

      <button onClick={addCustomer}>Add Customer</button>

      <ul>
        {customers.map((customer, index) => (
          <li key={index}>
            {customer}
            <button onClick={() => deleteCustomer(index)}>
              Delete
            </button>
          </li>
        ))}
      </ul>
    </div>
  );
}

export default Task8;