
function AgeCheck() {
  let age = 20;

  if (age >= 18) {
    return <h2>Eligible to Vote</h2>;
  } else {
    return <h2>Not Eligible to Vote</h2>;
  }
}

export default AgeCheck;
