import { useState } from "react";

function Task6() {
  const [empid, setEmpid] = useState(101);
  const [empname, setEmpname] = useState("Aswinth");
  const [salary, setSalary] = useState(25000);
  const [desg, setDesg] = useState("Developer");
  const [deptno, setDeptno] = useState(10);

  return (
    <div>
      <h3>Task 6: Employee Details</h3>

      <p>Employee ID: {empid}</p>
      <p>Employee Name: {empname}</p>
      <p>Salary: ₹{salary}</p>
      <p>Designation: {desg}</p>
      <p>Department Number: {deptno}</p>

      <button onClick={() => setSalary(salary + 1000)}>
        Increase Salary
      </button>
    </div>
  );
}

export default Task6;