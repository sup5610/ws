import ReactDOM from "react-dom/client";
import './index.css';
import App from './App.tsx';

const container : HTMLElement | null= document.getElementById("root");
const root = ReactDOM.createRoot(container!);
root.render(<App />);