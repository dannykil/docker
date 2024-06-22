import { useEffect, useState } from "react";
import "./App.css";
import Card from "./components/Card";

function App() {
  const [products, setProducts] = useState([]);

  async function onLoad() {
    // let response = await fetch("http://localhost:8081/products");
    let response = await fetch("/api/products");
    let responseBody = await response.json();
    console.log("onLoad : ", responseBody);
    setProducts(responseBody);
  }

  // 1) 빈 배열인 경우 해당 페이지가 열릴 때 실행(초기화)
  // 2) 종속배열에 변수가 선언되는 경우 해당 값이 변경될 때 다시 그림
  useEffect(() => {
    onLoad();
  }, []);

  return (
    <div>
      <h1>상품목록 페이지</h1>
      <hr />
      <div>
        {products.map((product) => (
          <Card product={product} />
        ))}
      </div>
    </div>
  );
}

export default App;
