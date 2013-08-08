$(function() {
	options = {
		autoPlay: true,
		addThumbs: true,
		autoPlay: false,
		holderId: 'play-music',
		playerWidth: "642",
		playerHeight: "391",
		thumbSize: 'large'
	};

	$("ul.music-list").ytplaylist(options);
});