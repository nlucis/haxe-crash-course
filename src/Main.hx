import h2d.Anim;
import h2d.Tile;
import h3d.Vector;
import hxd.res.Image;
import scene.TestScene;
import hxd.res.DefaultFont;


class Main extends hxd.App {

	private var bitmap: h2d.Bitmap;
	private var tileset: Array<Tile> = [];
	private var coloredTileAnimation: Anim;

	private var velocity: Float = 0;
	private var gravity: Float = 9.8;

	private var chunksize: Float = 100;

	private function makeRandomColor(): Int {
		return new Vector(Random.float(0.0, 1.0), Random.float(0.0, 1.0), Random.float(0.0, 1.0), 1).toColor();
	}

	override function init() {
		// embed the resources
		hxd.Res.initEmbed();

		var textFontThing = new h2d.Text(hxd.res.DefaultFont.get()); /* can also take a second param of a target container */
		textFontThing.text = "Unga Bunga Game Times!";

		// An Object (represented by h2d.Object) is the base class of all of 2D objects.
		var objectThing = new h2d.Object(); 
		var moreText = new h2d.Text(DefaultFont.get(), objectThing);
		moreText.text = "The music scene has got me down...";
		objectThing.y = 24;
		objectThing.x= 500;
		objectThing.rotation = Math.PI / 2;
		s2d.addChild(objectThing); // Nothing in container, so nothing renders

		var textFontThingContainer = new h2d.Object();
		textFontThingContainer.addChild(textFontThing);
		textFontThingContainer.x = 500;
		s2d.addChild(textFontThingContainer);

		// Make a set of randomly colored tiles
		for (count in 0...10) {
			var newTile = Tile.fromColor(makeRandomColor(), 50, 50);
			newTile.dx = -newTile.width * 0.5;
			newTile.dy = -newTile.height * 0.5;
			tileset.push(newTile);
		}
		
		var wall = hxd.Res.images.WallTileAtlas_Vertical24;
		var wallTile = wall.toTile();
		wallTile.scaleToSize(50, 50);
		wallTile.dx = -wallTile.width * 0.5;
		wallTile.dy = -wallTile.height * 0.5;
		tileset.push(wallTile);

		coloredTileAnimation = new h2d.Anim(tileset, s2d);
		coloredTileAnimation.loop = true;
		coloredTileAnimation.speed = 2.4;

		// bitmap = new h2d.Bitmap(tile, s2d);
		// bitmap.setPosition(500, 500);
		coloredTileAnimation.setPosition(500, 500);

		var maun = hxd.Res.images.SmallGlorbling;
		var maunTile = maun.toTile();
		maunTile.dx = -maunTile.width * 0.5;
		maunTile.dy = -maunTile.height * 0.5;
		bitmap = new h2d.Bitmap(maunTile, s2d);
		bitmap.setPosition(500, 700);
	}

	override function update(dt: Float) {
		coloredTileAnimation.rotate(dt);
		// bitmap.y += velocity * chunksize * dt;
		// bitmap.rotate(dt);
		// bitmap.color = new Vector(Random.float(0.0, dt * chunksize), Random.float(0.0, dt * chunksize), Random.float(0.0, dt * chunksize), 1);
	}

	public function fixedUpdate() {}

	static function main() {
		new Main();

		#if js
		trace("Hello Browser!");
		#end
	}
}


