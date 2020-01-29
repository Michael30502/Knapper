
class Knap {

  boolean knapTrykket = false;
  int positionX = 0;
  int positionY = 0;
  int hojde = 100;
  int bredde = 100;
  int value = 0;
  String tekst = "fejl" ;

  Knap(int x, int y, int h, int b, int v) {
    positionX = x;
    positionY = y;
    hojde = h;
    bredde = b;
    value = v;
  }
  Knap() {
  };

  void tegnKnap(String t) {
    tekst = t;
    if (value != 0)
      fill(256, 256, 256);
    else
      fill(50);
    rect(positionX, positionY, bredde, hojde);
    textSize(26);
    fill(0);
    text(tekst, positionX+5, positionY+60);
  }

  void registrerKlik() {


    if ((mouseX< positionX + bredde) && (mouseX>positionX) &&(mouseY<positionY +hojde ) && (mouseY> positionY)) {
knapTrykket = true;

if(bank==true){
    if((deposit.knapTrykket == true)&&(account2.balance > 0)){
            account1.balance += deposit.value; 
          account2.balance -= deposit.value;
          deposit.knapTrykket = false;
    }
    if((deposit2.knapTrykket == true)&&(account1.balance > 0)){
            account2.balance += deposit.value; 
          account1.balance -= deposit.value;
          deposit2.knapTrykket = false;
    }}


    }
  }
}
