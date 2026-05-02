/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((z_loadgame.x+z_loadgame.sprite_width/2), (z_loadgame.y+z_loadgame.sprite_height/2), "Load Game");



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);