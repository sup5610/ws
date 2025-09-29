import { BrowserRouter, Routes, Route } from "react-router-dom";
import { useState, useEffect } from "react";
import React from "react";
import ReactDOM from "react-dom";

import HomePage from "./pages/HomePage.tsx";


function App() {


  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<HomePage />}/>
        <Route path="/home" element={<HomePage />}/>



      </Routes>
    </BrowserRouter>
  );



}


export default App;