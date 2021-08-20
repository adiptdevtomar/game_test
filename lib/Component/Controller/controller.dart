import 'package:lld_project/Component/Controller/board_controller.dart';
import 'package:lld_project/Component/Controller/input_controller.dart';
import 'package:lld_project/Component/Controller/score_controller.dart';
import 'package:lld_project/Component/Player.dart';
import 'package:lld_project/Component/Treasure.dart';

class Controller {

  InputController? inputController;
  BoardController? boardController;
  ScoreController? scoreController;
  Player? player;
  Treasure? treasure;

  Controller() {
    initializeGame();
    inputController = InputController();
    boardController = BoardController();
    scoreController = ScoreController();
    treasure = Treasure();
  }

  initializeGame() {
    //Initialize Game Components
    getPlayerDetails();
    getPlayerGraphics();
  }

  getPlayerDetails() {
    //Return Previous Player Details
    player = Player();
  }

  getPlayerGraphics() {
    //Return Images of payer and treasure
  }

  onAction(actions){
    //when user moves the player
    boardController!.updateBoard(actions);
  }

  updateScore(){
    return scoreController!.addScore();
  }
}
