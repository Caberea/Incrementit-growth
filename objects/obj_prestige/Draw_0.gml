/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6){
draw_self();	
draw_set_halign(fa_center);
draw_text((obj_prestige.x+obj_prestige.sprite_width/2), obj_prestige.y+18, "Remaining Points: "+string(prestigepoints));



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);

}