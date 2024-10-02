//Creating two global dice objects because I need them in setup, draw and keyPressed
Dice dieOne;
Dice dieTwo;

//ALERT! ArrayList can only take non-primitive data types, thus Integer is used and not int
ArrayList<Integer> diceData = new ArrayList<Integer>();

StoreBackground currentBackground = new StoreBackground();

public void setup() {
  //Setting the size of the graphics window in Processing to width and height 600x600 pixels
  size(600, 600);
  dieOne = new Dice(1);
  dieTwo = new Dice(1);
  //This is totally overriden, idk
  background(245, 245, 220);
}




void draw() {
  //The backgorund is being updated/drawn to Beige at 30 frames per second!
  //Sidebar, the Beige RGB number code was foud by a simple Google query
  // background(245, 245, 220);
  currentBackground.randomBackground();


  dieOne.display(80, 80);
  dieTwo.display(300, 80);
}

char checkKey = 'b';

public void keyPressed() {

  if (key == ' ') {

    //Ech object makes a call
    dieOne.randomDiceRoll();
    dieTwo.randomDiceRoll();

    //prints out random int saved in the instance variable in Dice
    dieOne.printOutValueOfDie();
    dieTwo.printOutValueOfDie();

    //Adds to ArrayList, this isn't possible with a norml array
    diceData.add(dieOne.valueOfDie);
    diceData.add(dieTwo.valueOfDie);
    for (int i = 0; i < diceData.size(); i++) {

      println("this is dice storage :" +  i + "  " + diceData.get(i));
    }
  } else if (key == checkKey) {

    println("Background is now set to RGB: " + currentBackground.a + " " + currentBackground.b + " " + currentBackground.c);
  } else {

    println("Wrong input, you can only press 'SPACE'");
    println("Perhaps if this program becomes a commercial success that the 'ENTER' key input will be considered");
  }

  //I tried to to use switch, but I couldn't use the char variable so yea....
  if (key == checkKey) {
    currentBackground = new StoreBackground();
  }
}
