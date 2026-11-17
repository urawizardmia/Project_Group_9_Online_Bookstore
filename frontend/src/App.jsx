import { useState } from 'react'
import LandingPage from "./pages/landingPage"
import BookPage from "./pages/bookPage"
import './App.css'

function App() {
  const [page, setPage] = useState("landing")

  if (page === "books") {
    return <BookPage onReturnLanding = {() => setPage("landing")} />;
  }

  return <LandingPage onBrowseBooks = {() => setPage("books")} />;

  }

export default App
