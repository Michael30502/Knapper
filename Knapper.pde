int balance1 =2000;
int balance2 =2000;
boolean bank = true;


Knap deposit = new Knap(100, 100, 100, 220, 100);
Knap deposit2 = new Knap(100, 300, 100, 220, -100);
Knap withdraw = new Knap(400, 100, 100, 220, 100);
Knap withdraw2 = new Knap(400, 300, 100, 220, -100);
Knap balanceD = new Knap(100, 450, 100, 220, 0);
Knap balanceD2 = new Knap(400, 450, 100, 220, 0);

void setup() {
  size(700, 700);
}

void draw() {

  if (bank == true) {
    clear();
    background(0, 0, 256);
    deposit.tegnKnap("Indsæt 100 kr");
    deposit2.tegnKnap("Overfør -100 kr");
    withdraw.tegnKnap("Indsæt 100 kr");
    withdraw2.tegnKnap("Overfør -100 kr");
    balanceD.tegnKnap("Konto 1: "+balance1);
    balanceD2.tegnKnap("Konto 2: "+balance2);
  }
}

void mouseReleased() {
  deposit.registrerKlik();
  deposit2.registrerKlik();
  withdraw.registrerKlik();
  withdraw2.registrerKlik();
}
