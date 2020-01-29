boolean bank = true;


Account account1 = new Account (2000,"Konto 1");
Account account2 = new Account (2000,"Konto 2");

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
    balanceD.tegnKnap("Konto 1: "+ account1.balance);
    balanceD2.tegnKnap("Konto 2: "+ account2.balance);
    
    if((deposit.knapTrykket == true)&&(account2.balance > 0)){
            account1.balance += deposit.value; 
          account2.balance -= deposit.value;
          deposit.knapTrykket = false;
    }
    if((deposit2.knapTrykket == true)&&(account1.balance > 0)){
            account2.balance += deposit.value; 
          account2.balance -= deposit.value;
          deposit2.knapTrykket = false;
    }
    
        if((withdraw.knapTrykket == true)&&(account1.balance > 0)){
            account2.balance += deposit.value; 
          account1.balance -= deposit.value;
          withdraw.knapTrykket = false;
    }
    if((withdraw2.knapTrykket == true)&&(account2.balance > 0)){
            account1.balance += deposit.value; 
          account2.balance -= deposit.value;
          withdraw2.knapTrykket = false;
    }
    
    
    
    
  }
}

void mouseReleased() {
  deposit.registrerKlik();
  deposit2.registrerKlik();
  withdraw.registrerKlik();
  withdraw2.registrerKlik();
}
