import 'package:lld_project/Component/Constants/gesture_types.dart';
import 'package:lld_project/Component/Controller/controller.dart';

class InputController{
  GestureTypes type = GestureTypes.swipe;

  InputController(){
    type = getGestureType();
  }

  GestureTypes getGestureType(){
    //Return Gesture Type from Settings
    return GestureTypes.swipe;
  }

  //on action(called by widget)
  onAction(action, actionType){
    if(actionType == GestureTypes.swipe){
      //detect swipe and send direction accordingly
      Controller().onAction(action);
    }
    else if(actionType == GestureTypes.keyboard){
      //for keyboard actions
      Controller().onAction(action);
    }
  }
}