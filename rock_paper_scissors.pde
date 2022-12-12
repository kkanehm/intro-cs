String userChoice;
String computerChoice;
int randomInt;
int x = 0;
void setup() {
  size(700, 700);
  textSize(30);
}
void draw() {
  // buttons
  background(150);
  translate(-100, 0);
  fill(255);
  if (userChoice == "Rock") {
    fill(255, 0, 0);
  }
  rect(width / 3, 100, 100, 50); // rock
  fill(255);
  if (userChoice == "Paper") {
    fill(255, 0, 0);
  }
  rect(width / 3 + 150, 100, 100, 50); // paper
  fill(255);

  if (userChoice == "Scissor") {
    fill(255, 0, 0);
  }
  rect(width / 3 + 300, 100, 100, 50); // scissors
  fill(0);
  text("Rock", width / 3, 140);
  text("Paper", width / 3 + 150, 140);
  text("Scissors", width / 3 + 300, 140);
  text("Computer Decision", width/3 + 100, 300);
  
   // computer choice
  if (randomInt == 0) {
    computerChoice = "Rock";
  } else if (randomInt == 1) {
    computerChoice = "Paper";
  } else if (randomInt == 2) {
    computerChoice = "Scissors";
  } else {
    computerChoice = "Not chosen";
  }


  text(x, 350, 50);
  text("Computer:", 210, 50);
  text("Human:", 450, 50);
  text("0", 590, 50);
  if (x >= 10) {
    text("YOU LOSE", 375, 400);
  }
}

void mousePressed() {
  if (mouseX <= width/3 &&
    mouseX >= width/3 - 100 &&
    mouseY >= 100 && mouseY <= 150) {
    userChoice = "Rock";
  } else if (
    mouseX <= width / 3 + 150 &&
    mouseX >= width / 3 + 50 &&
    mouseY >= 100 && mouseY <= 150
    ) {
    userChoice = "Paper";
  } else if (
    mouseX <= width / 3 + 300 &&
    mouseX >= width/3 + 200 &&
    mouseY >= 100 && mouseY <= 150)
  {
    userChoice = "Scissor";
  } else
  {
    userChoice = "Out";
  }
  
    if (userChoice == "Scissor") {
    computerChoice = "Rock";
  }
  if (userChoice == "Rock") {
    computerChoice = "Paper";
  }
  if (userChoice == "Paper") {
    computerChoice = "Scissor";
  }

 if (computerChoice == "Rock") {
    text("Rock", width / 3 + 150, 450);
  } else if (computerChoice == "Paper") {
    text("Paper", width / 3 + 150, 450);
  } else if (computerChoice == "Scissor") {
    text("Scissors", width / 3 + 150, 450);
  }
  
  if (userChoice == "Scissor" && computerChoice == "Rock") {
    x = x + 1;
  }
  if (userChoice == "Rock" && computerChoice == "Paper") {
    x = x + 1;
  }
  if (userChoice == "Paper" && computerChoice == "Scissor") {
    x = x + 1;
  }
  println(x);
}
