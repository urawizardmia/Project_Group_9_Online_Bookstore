function BookDetails(props) {

	const date = new Date(props.book.publication_date).toLocaleDateString("en-US", {
		year: "numeric",
		month: "long",
		day: "numeric"
	});

	return (
		<div className="details" onClick={props.onClose}>
			<div className = "detailsPanel" onClick={(event) => event.stopPropagation()}>
				<button className = "closePanel" onClick = {props.onClose}>close</button>
				<img src = {props.book.cover_image} alt = {props.book.title}/>

				<div className = "detailsInfo">
					<h2>{props.book.title}</h2>
					<p className="author">Written by: {props.book.author}</p>
					<p className="genre"> Genre: {props.book.genre} </p>
					<p className="publication"> Published: {date} </p>
					<p className="description">Description: {props.book.description}</p>
				</div>
			</div>
		</div>
	);
}

export default BookDetails;