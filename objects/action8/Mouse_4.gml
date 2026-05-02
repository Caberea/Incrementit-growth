/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 0) {
	action1.scene = 9;	
}
if (action1.scene = 1) {
	maintext.battletext2 = "";
	action1.scene = 0;	
}
if (action1.scene = 3){
	maintext.inroom = false;
	action1.scene = 0;
}
if (action1.scene = 6) {
	if (maintext.metselvata = false){
	action1.scene = 18;	
	maintext.metselvata = true;
	}
	else {
action1.scene = 3;
	}
}
if (action1.scene = 11) or (action1.scene = 4){
	maintext.inroom = false;
action1.scene = 0;	
}
if (action1.scene = 12) {
action1.scene = 11;	
}
if (action1.scene = 14) {
action1.scene = 11;	
}
if (action1.scene = 13) {
action1.scene = 0;	
}



