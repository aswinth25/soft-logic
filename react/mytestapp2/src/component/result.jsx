
function Result() {
  let mark = 75;

  return (
    <div>
      <h2>{mark >= 35 ? "Pass" : "Fail"}</h2>
    </div>
  );
}

export default Result;
