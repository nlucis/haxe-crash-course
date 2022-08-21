(function ($global) { "use strict";
var Main = function() { };
Main.main = function() {
	console.log("src/Main.hx:3:","Hello, Hax0r!");
	console.log("src/Main.hx:7:","Goodbye (" + "cruel, cruel" + ") World!");
	console.log("src/Main.hx:10:","Hello Browser Too!");
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
