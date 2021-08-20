class ScoreController{
  int score = 0;
  
  addScore(){
    if (score == 10){
      return false;
    }
    score += 1;
    return true;
  }

  resetScore(){
    score = 0;
  }
}