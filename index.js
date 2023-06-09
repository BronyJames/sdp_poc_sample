const app = require("express")();

app.get("/", (req, res) => {
  res.json({
    message: "Success",
  });
});

app.get("/hello", (req, res) => {
  res.json({
    message: "hello",
  });
});

// 테스트용
app.get("/test", (req, res) => {
  res.json({
    message: "Test",
  });
});

app.listen(3000, () => {
  console.log("Server starting on port 80");
});