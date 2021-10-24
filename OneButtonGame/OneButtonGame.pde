//Things to know:
//Rocks will come at random frequencies
//You must leap over the rocks in order to not lose
//The game will keep track of how long you're alive (with a timer on top of the screen)
//Goal is to survive as long as possible

Tank tank;
Rock rock;
Time time;
PImage cartoonbackground;
PImage rockimage;
PImage tankimage;
PImage dirtimage;
int Gravity = 1;

void setup() {
  size(640,480);
  cartoonbackground = loadImage("cartoonbackground.png");
  time = new Time(0);
  rockimage = loadImage("rockimage.png");
  tankimage = loadImage("tankimage.png");
  dirtimage = loadImage("dirtimage.png");
  tank = new Tank();
  rock = new Rock();
}

void draw() {
  background(cartoonbackground);
  time.countUp();
  text(time.getTime(),300,30);
  tank.Display();
  tank.Move();
  rock.Display();
  rock.Move();
  image(dirtimage, 0, 345, 640, 180);
  //fill(87,176,42);
  //rect(0,325,640,180);
  
  if (tank.hits(rock)) {
    noLoop();
  }
}

void keyPressed() {
  if (key == ' ') {
    tank.LeapUpwards();
  } 
}


//Background image from https://www.freepik.com/free-vector/blank-meadow-landscape-scene-daytime_16267779.htm#page=1&query=cartoon%20background&position=6&from_view=keyword
//Rock image from https://www.pngaaa.com/detail/901024
//Tank image from https://www.nicepng.com/maxp/u2w7u2r5a9w7q8w7/
//Dirt image from https://www.freepik.com/free-vector/brown-soil-texture-background_3478044.htm
