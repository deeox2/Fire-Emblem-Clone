// Johann Doell
// Fire Emblem clone

int state;
mapDecoration thisLevel;
_map battlemap;
gameManager game1;
char [][] unitArray;
swordsman ike;
String selectedUnit;
mapTile[][] tiles;

void setup() {
  size(600, 600);
  state = 0;
  game1 = new gameManager();
  unitArray = new char[15][10];
  battlemap = new _map();
  thisLevel = new mapDecoration("Levels/templatelevel.txt");
  ike = new swordsman("ike");
  ike.movesLeft = 3;
}

void draw() {
  game1.handleGameState();
}

void keyPressed() {
  game1.handleKeyPress();
}

void mousePressed() {
  game1.handleClick();
}