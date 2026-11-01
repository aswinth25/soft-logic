
function Button({ color, size, children }) {
  const buttonStyle = {
    backgroundColor: color,
    color: "white",
    border: "none",
    borderRadius: "5px",
    cursor: "pointer",
    padding:
      size === "small"
        ? "5px 10px"
        : size === "large"
        ? "15px 30px"
        : "10px 20px",
    fontSize:
      size === "small"
        ? "12px"
        : size === "large"
        ? "20px"
        : "16px",
  };

  return <button style={buttonStyle}>{children}</button>;
}

export default Button;
