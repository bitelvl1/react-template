import { useState } from 'react'
import reactLogo from './assets/react.svg'
import viteLogo from '/vite.svg'
import './App.css'
import Pig from "./components/Pig.jsx";

function App() {
  const [count, setCount] = useState(0)

  return (
    <>
      <h1 class="font-bold text-4xl text-red-500">Vite + React + Tailwind CSS + Docker</h1>
    </>
  )
}

export default App
