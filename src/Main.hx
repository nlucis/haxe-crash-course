class Main extends hxd.App {

	override function init() {
		var textFontThing = new h2d.Text(hxd.res.DefaultFont.get(), s2d);
		textFontThing.text = "Unga Bunga Game Times!";
	}

	static function main() {
		new Main();

		#if js
		trace("Hello Browser!");
		#end
	}
}
