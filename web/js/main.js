(function ($global) { "use strict";
var Main = function() { };
Main.main = function() {
	console.log("src/Main.hx:3:","Hello, Hax0r!");
	var cruel = "";
	var _g = 0;
	while(_g < 3) {
		++_g;
		cruel += cruel == "" ? "cruel" : ", " + cruel;
	}
	console.log("src/Main.hx:12:","Goodbye (" + cruel + ") World!");
	console.log("src/Main.hx:15:","Hello Browser Too!");
};
var haxe_iterators_ArrayIterator = function(array) {
	this.current = 0;
	this.array = array;
};
haxe_iterators_ArrayIterator.prototype = {
	hasNext: function() {
		return this.current < this.array.length;
	}
	,next: function() {
		return this.array[this.current++];
	}
};
Main.main();
})({});
