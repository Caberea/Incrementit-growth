/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 2) or (action1.scene = 22) or (action1.scene = 23) or (action1.scene = 11) or (action1.scene = 3) or (action1.scene = 10)  or (action1.scene = 15) or (action1.scene = 5) {
	action4slot = "";
}

if(action1.scene = 1) && (potcount = 0){
	action4slot = "";	
}

if (action1.scene = 0)
{
	action4slot = "Apothecary";	
}
if (action1.attacking = 1) {
 return;
}
if (action1.scene = 4)
{
	if (action1.unlockvolcano = true){
	action4slot = "Hot Volcano";
	}
	else
	{
	action4slot = "";	
	}
}
if (action1.scene = 9)
{
	action4slot = "Load";	
}
if (action1.attacking = 1) {
	return;
}
else {
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((action4.x+action4.sprite_width/2), (action4.y+action4.sprite_height/2), string(action4slot));



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);	
}

if (action1.scene = 1) && (potcount > 0){
	action4slot = "Miracle Potion  x"+string(potcount);	
	{
if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "You'd guess this was just milk if not for the odd mystical green glow to it. Does...something.", 16, 300)		
}
	}
}
if (action1.scene = 14){
	action4slot = "Miracle Potion  x"+string(potcount)+"\n120g";	
if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "You'd guess this was just milk if not for the odd mystical green glow to it. Does...something.", 16, 300)		
	}
}
if (action1.scene = 13) {
	action4slot = "Buy Gauntlets\nCost: " +string(goldcost)+"g";
	if (itemdef > maintext.glovesdef){
	disitemdef = "(+)"	
	}
	if (itemdef = maintext.glovesdef){
	disitemdef = "(=)"	
	}
	if (itemdef < maintext.glovesdef){
	disitemdef = "(-)"	
	}
	if (itemhp > maintext.gloveshp){
	disitemhp = "(+)"	
	}
	if (itemhp = maintext.gloveshp){
	disitemhp = "(=)"	
	}
	if (itemhp < maintext.gloveshp){
	disitemhp = "(-)"	
	}
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	if (maintext.colorblind = true){
	draw_text_ext(mouse_x, mouse_y+16, "Defence: " + string(maintext.glovesdef) + " > " + string(itemdef)+string(disitemdef) + "\nMaxHP: " +string(maintext.gloveshp)+" > "+string(itemhp)+string(disitemhp), 16, 300)	
	}
	else{
	if (maintext.glovesdef = itemdef) {
	draw_text_ext(mouse_x, mouse_y+16, "Defence: " + string(maintext.glovesdef) + " > " + string(itemdef), 16, 300);
	}
	if (maintext.glovesdef > itemdef) {
	draw_text(mouse_x, mouse_y+16, "Defence: ")
	draw_text_color(mouse_x+80, mouse_y+16, string(maintext.glovesdef) + " > " + string(itemdef), c_lime, c_red,c_red,c_lime,1);
	}
	if (maintext.glovesdef < itemdef) {
	draw_text(mouse_x, mouse_y+16, "Defence: ")
	draw_text_color(mouse_x+80, mouse_y+16, string(maintext.glovesdef) + " > " + string(itemdef), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.gloveshp = itemhp){
	draw_text_ext(mouse_x, mouse_y+16, "\nMaxHP: " +string(maintext.gloveshp)+" > "+string(itemhp), 16, 300);
	}
	if (maintext.gloveshp < itemhp) {
	draw_text(mouse_x, mouse_y+16, "\nMaxHP: ")
	draw_text_color(mouse_x+62, mouse_y+16, "\n" + string(maintext.gloveshp) + " > " + string(itemhp), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.gloveshp > itemhp) {
	draw_text(mouse_x, mouse_y+16, "\nMaxHP: ")
	draw_text_color(mouse_x+62, mouse_y+16, "\n" + string(maintext.gloveshp) + " > " + string(itemhp), c_lime, c_red,c_red,c_lime,1);
	}	
	}
}
}