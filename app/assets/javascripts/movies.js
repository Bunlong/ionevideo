$(function() {
	options = {
		autoPlay: true,
		addThumbs: true,
		autoPlay: false,
		holderId: 'play-movie',
		playerWidth: "642",
		playerHeight: "391",
		thumbSize: 'large'
	};

	$("ul.movie-list").ytplaylist(options);
});