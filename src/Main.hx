import hxd.res.DefaultFont;

class Main extends hxd.App {

	override function init() {

		var textFontThing = new h2d.Text(hxd.res.DefaultFont.get()); /* can also take a second param of a target container */
		textFontThing.text = "Unga Bunga Game Times!";

		// An Object (represented by h2d.Object) is the base class of all of 2D objects.
		var objectThing = new h2d.Object(); 
		var moreText = new h2d.Text(DefaultFont.get(), objectThing);
		moreText.text = "The music scene has got me down...";
		objectThing.y = 24;
		s2d.addChild(objectThing); // Nothing in container, so nothing renders

		var textFontThingContainer = new h2d.Object();
		textFontThingContainer.addChild(textFontThing);
		s2d.addChild(textFontThingContainer);
	}

	static function main() {
		new Main();

		#if js
		trace("Hello Browser!");
		#end
	}
}
