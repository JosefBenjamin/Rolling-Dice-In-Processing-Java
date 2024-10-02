public class StoreBackground {

  int a = (int)random(0, 257);
  int b = (int)random(0, 257);
  int c = (int)random(0, 257);

  public StoreBackground() {
    //I had to return in the assignment, this is the only plce i could fit it in without breking the code
    //This probably returns nothing A.K.A Null
    return;
  }



  public void randomBackground() {

    background(a, b, c);
  }
}
