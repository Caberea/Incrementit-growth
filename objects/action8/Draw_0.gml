/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 1) {
	action8slot = "Run Away!";
}
if (action1.scene = 0)
{
	action8slot = "Save/Load & Options";	
}
if (action1.scene = 2) or (action1.scene = 10)  {
	action8slot = "";	
}
if (action1.scene = 5) {
	action8slot = "";	
}
if (action1.scene = 7) or (action1.scene = 9) or (action1.scene = 15) or (action1.scene = 18) {
	action8slot = "";	
}
if (action1.scene = 3) or (action1.scene = 4)
{
	action8slot = "Leave";	
}
if (action1.scene = 6) or (action1.scene = 11) or (action1.scene = 12) or (action1.scene = 14) or (action1.scene = 13)
{
	action8slot = "Leave";	
}
if (action1.attacking = 1) {
 return;
}
else {
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((action8.x+action8.sprite_width/2), (action8.y+action8.sprite_height/2), string(action8slot));



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);	
}

