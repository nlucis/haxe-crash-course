package scene;
import hxd.Res;

import format.png.Data.Color;


typedef TestSceneConfig = {
  var ?backgroundColor: Color;
}

class TestScene extends hxd.App {

  override private function init():Void {
    // First things first...
    super.init();
    Res.initEmbed();
    
    trace(s2d.name);                    // the current scene
    var myscene = new h2d.Scene(); 
    myscene.name = "test scene"; // create a new scene
    setScene(myscene);              // set it as the current scene
    trace(s2d.name);                // is now newscene

    // Add an image to test scene
    var myimage = hxd.Res.images.maunJaws;
    // will load myImage.png/jpg/jpeg/gif from <your project folder>/res/img/
    var mytile = myimage.toTile();

    var tileContainer = new h2d.Object();
    tileContainer.x = s2d.width /2;
    tileContainer.y = s2d.height /2;
    s2d.addChild(tileContainer);

    var myobj2 = new h2d.Object();
    s2d.addChild(myobj2);

    var myobj = new h2d.Object(s2d);// add myobj to s2d by passing s2d as parameter
    trace("Test Scene loaded!");
  }
  
  static function main():Void {
    trace("Hello from test scene!");
  }
}