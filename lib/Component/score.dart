class Score {
  int score = 0;
  int maxScore = 0;

  Score(score) {
    this.score = score;
    maxScore = getMaxScore();
  }

  int getMaxScore() {
    //Return maxScore
    return 8;
  }

  bool updateScore() {
    score += 1;
    if (score == 10) {
      return false;
    } else {
      if (score > maxScore) {
        score = maxScore;
      }
    }
    return true;
  }
}
