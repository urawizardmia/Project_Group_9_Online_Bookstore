import { useState, useEffect } from "react";
import BookCard from "../pages/bookCard";
import BookDetails from "../pages/bookDetails";

function BookPage(props) {
	
	const [books, setBooks] = useState([]);
	const [selectedBook, setSelectedBook] = useState(null);

	useEffect(() => {
		fetch("http://localhost:3000/books")
			.then((response) => response.json())
			.then((data) => setBooks(data));
	}, []);

	return (
    
    <div className="bookPage">
    	<button onClick={props.onReturnLanding}>Return to landing page</button>

    <div className="bookShelf">
    	{books.map((book) => (
    		<BookCard
    			key = {book.id}
    			book = {book}
    			onSelectBook = {()=> setSelectedBook(book)}/>
    	))} </div>

	{selectedBook && (
		<BookDetails
			book = {selectedBook}
			onClose = {() => setSelectedBook(null)}/>
		)} </div>
);
}

export default BookPage; 