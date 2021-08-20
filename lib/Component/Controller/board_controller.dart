import 'package:lld_project/Component/Constants/constants.dart';
import 'package:lld_project/Component/Controller/controller.dart';

class BoardController {
  int R = 0;
  int C = 0;
  List player = [0, 0];
  List treasure = [0, 0];

  BoardController() {
    getBoardSize();
    setinitialCoordinates();
  }

  setinitialCoordinates() {
    //set player and treasure coordinates
  }

  respawnTreasure() {
    //respawn treasure after previous one gets eaten
  }

  getBoardSize() {
    ///get M and N values
    R = BoardConstants.rows;
    C = BoardConstants.columns;
  }

  updateBoard(actions) {
    //checks if move is legal or not
    //updates player position on board
    //updates score and checks if score is 10 or not
    bool value = Controller().updateScore();
    if (value) {
      //checks if treasure is on the same position or not
      //if tresure exists replace it by player and run function
      respawnTreasure();
    } else {
      //value cannot exceed 10
      //show result
    }
  }
}
