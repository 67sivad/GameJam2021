/// @description Insert description here
// You can write your code in this editor
global.leftChamberId = -2;
global.rightChamberId = -1;

startRightChamber = 0;
startLeftChamber = 1;

winConditionRight = 1;
winConditionLeft = 0;




load_chamber(startRightChamber, 1);
load_chamber(startLeftChamber, -1);

win=false;
