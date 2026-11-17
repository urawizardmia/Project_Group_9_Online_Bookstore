function BookCard(props) {
	
	return (
		<div className = "bookCard" onClick = {props.onSelectBook}>
			<img src={props.book.cover_image} alt={props.book_title} />
		</div>
	);
}

export default BookCard; 