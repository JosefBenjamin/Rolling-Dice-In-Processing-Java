public class Dice {
  //a "globl variable" inside the Dice class, A.K.A an instance variable
  int valueOfDie = 1;
  //Dice constructor no args
  Dice(int valueOfDie) {

    //Stores the constructor argument to the instance variable of same name
    this.valueOfDie = valueOfDie;
  }

  //I don't want to return anything because I don't want it to leve the method/function during the call
  void randomDiceRoll() {

    //storage of the random method. ALERT! random returns a float, thus must be converted to int datatype 
    this.valueOfDie = (int)random(1, 7);
    println(this.valueOfDie);
  }

  /*As we have done in class, making a display method is helpful
   so we can call it in our draw method,  which is basically a loop that does graphics
   */
  void display(int x, int y) {

    //This four lines of code is the graphics of the die and die outline
    //Fill must come before rect, as must stroke before strokeWeight
    stroke(0);
    strokeWeight(4);
    fill(255);
    rect(x, y, 200, 200);

    //Neon green fill for the dots inside the die
    fill(57, 255, 20);
    if (valueOfDie == 1) {
      drawDot(x + 100, y + 100);
    } else if (valueOfDie == 2) {
      drawDot(x + 60, y + 60);
      drawDot(x + 140, y + 140);
    } else if (valueOfDie == 3) {
      drawDot(x + 60, y + 60);
      drawDot(x + 100, y + 100);
      drawDot(x + 140, y + 140);
    } else if (valueOfDie == 4) {
      drawDot(x + 60, y + 60);
      drawDot(x + 140, y + 60);
      drawDot(x + 60, y + 140);
      drawDot(x + 140, y + 140);
    } else if (valueOfDie == 5) {
      drawDot(x + 60, y + 60);
      drawDot(x + 140, y + 60);
      drawDot(x + 100, y + 100);
      drawDot(x + 60, y + 140);
      drawDot(x + 140, y + 140);
    } else if (valueOfDie == 6) {
      drawDot(x + 60, y + 60);
      drawDot(x + 140, y + 60);
      drawDot(x + 60, y + 100);
      drawDot(x + 140, y + 100);
      drawDot(x + 60, y + 140);
      drawDot(x + 140, y + 140);
    }
  }

  //This function/method exist in attempt of DRY: Don't Repeat Yourself
  void drawDot(int x, int y) {
    ellipse(x, y, 40, 40);
  }

  //This may seem redudant because of the loop in keyPressed, i mean... it may.
  void printOutValueOfDie() {

    println("You rolled: " + valueOfDie);
    println("Press 'SPACE' to roll again!");
  }
}
