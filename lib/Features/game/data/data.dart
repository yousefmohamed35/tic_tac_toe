enum Player{X,O,none}
 
 

List<String> displayXO = ["", "", "", "", "", "", "", "", ""];
bool oTurn = false;
String result = "";
bool isWin = false;
int oScore = 0;
int xScore = 0;
int filledBoxes = 0;
void ontapped(int index) {
  if (displayXO[index] == "") {
    displayXO[index] = oTurn ? "O" : "X";
    oTurn = !oTurn;
    filledBoxes++;
  }
  checkWinner();
}

void checkWinner() {
  // Check rows
  for (int i = 0; i < 3; i++) {
    if (displayXO[i * 3] == displayXO[i * 3 + 1] &&
        displayXO[i * 3 + 1] == displayXO[i * 3 + 2]) {
      result = ("Player ${displayXO[i * 3]} wins!");
      isWin = true;
      updateScore(displayXO[i * 3]);
      return;
    }
  }
  // Check columns
  for (int i = 0; i < 3; i++) {
    if (displayXO[i] == displayXO[i + 3] &&
        displayXO[i + 3] == displayXO[i + 6]) {
      result = ("Player ${displayXO[i]} wins!");
      updateScore(displayXO[i]);
      isWin = true;
      return;
    }
  }
  // Check diagonals
  if (displayXO[0] == displayXO[4] && displayXO[4] == displayXO[8]) {
    result = ("Player ${displayXO[0]} wins!");
    isWin = true;
    updateScore(displayXO[0]);
    return;
  }
  if (displayXO[2] == displayXO[4] && displayXO[4] == displayXO[6]) {
    result = ("Player ${displayXO[2]} wins!");
    isWin = true;
    updateScore(displayXO[2]);
    return;
  }
  if (filledBoxes == 9) {
    result = "It's a draw!";
    isWin = true;
    return;
  }
}

void updateScore(String winner) {
  // Update score
  winner == 'O' ? oScore++ : xScore++;
}

void clearData() {
  displayXO = ["", "", "", "", "", "", "", "", ""];
  oTurn = false;
  result = "";
  isWin = false;
  filledBoxes = 0;
}
