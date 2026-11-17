function LandingPage(props) {
	
	return (
		<div className = "landingPage">
			<h1>Fae Tomes</h1>
			<p>The bookstore for all of your reading desires</p>

			<div className = "landingSearchBar">
				<input type = "text" placeholder="Search for your next read" />
				<button>Search</button>
			</div>

			<button onClick={props.onBrowseBooks}>Or, Browse the Shelves</button>
		</div>
	);
}

export default LandingPage; 