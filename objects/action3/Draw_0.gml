/// @description Insert description here
// You can write your code in this editor

if (action1.scene = 2) or (action1.scene = 3) or (action1.scene = 9) or (action1.scene = 12) or (action1.scene = 16) or (action1.scene = 5) or (action1.scene = 10)  {
	action3slot = "";
}

if(action1.scene = 1) && (potcount = 0){
	action3slot = "";	
}

if (action1.scene = 11){
	action3slot = "Buy Potions";	
}
if (action1.scene = 15)
{
	action3slot = "Refuse";
}
if (action1.scene = 0)
{
	if (health < maintext.maxhealth){
	action3slot = "Inn (Full heal)\nCost: " + string(1+(round((power(maintext.level,1.5)*(1-(health/maintext.maxhealth)))))) + "g";	
	}
	else {
	action3slot = "Inn (Full Heal)\n-Already full health-";
	}
}
if (action1.scene = 4)
{
	if (action1.unlockmountain = true){
	action3slot = "Concave Mountain";
	}
	else
	{
	action3slot = "";	
	}
}

if (action1.attacking = 1) {
 return;
}
else {
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((action3.x+action3.sprite_width/2), (action3.y+action3.sprite_height/2), string(action3slot));



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);	
}

if (action1.scene = 1) && (potcount > 0){
	action3slot = "Elixir  x"+string(potcount);
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "This flask contains a milky looking liquid inside of it. Heals "+string(counter_potPERCENT.buffvalue)+"% ("+string(round((counter_potPERCENT.buffvalue/100)*maintext.maxhealth))+ ") Health.", 16, 300)		
	}
}

if (action1.scene = 14){
	action3slot = "Elixir  x"+string(potcount)+"\n500g";
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "This flask contains a milky looking liquid inside of it. Heals "+string(counter_potPERCENT.buffvalue)+"% ("+string(round((counter_potPERCENT.buffvalue/100)*maintext.maxhealth))+ ") Health.", 16, 300)		
	}
}
if (action1.scene = 13) {
	action3slot = "Buy Chestplate\nCost: " +string(goldcost)+"g";
	if (itemdef > maintext.chestdef){
	disitemdef = "(+)"	
	}
	if (itemdef = maintext.chestdef){
	disitemdef = "(=)"	
	}
	if (itemdef < maintext.chestdef){
	disitemdef = "(-)"	
	}
	if (itemhp > maintext.chesthp){
	disitemhp = "(+)"	
	}
	if (itemhp = maintext.chesthp){
	disitemhp = "(=)"	
	}
	if (itemhp < maintext.chesthp){
	disitemhp = "(-)"	
	}
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	if (maintext.colorblind = true){
	draw_text_ext(mouse_x, mouse_y+16, "Defence: " + string(maintext.chestdef) + " > " + string(itemdef)+ string(disitemdef) + "\nMaxHP: " +string(maintext.chesthp)+" > "+string(itemhp)+ string(disitemhp), 16, 300)	
	}
	else{
	if (maintext.chestdef = itemdef) {
	draw_text_ext(mouse_x, mouse_y+16, "Defence: " + string(maintext.chestdef) + " > " + string(itemdef), 16, 300);
	}
	if (maintext.chestdef > itemdef) {
	draw_text(mouse_x, mouse_y+16, "Defence: ")
	draw_text_color(mouse_x+80, mouse_y+16, string(maintext.chestdef) + " > " + string(itemdef), c_lime, c_red,c_red,c_lime,1);
	}
	if (maintext.chestdef < itemdef) {
	draw_text(mouse_x, mouse_y+16, "Defence: ")
	draw_text_color(mouse_x+80, mouse_y+16, string(maintext.chestdef) + " > " + string(itemdef), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.chesthp = itemhp){
	draw_text_ext(mouse_x, mouse_y+16, "\nMaxHP: " +string(maintext.chesthp)+" > "+string(itemhp), 16, 300);
	}
	if (maintext.chesthp < itemhp) {
	draw_text(mouse_x, mouse_y+16, "\nMaxHP: ")
	draw_text_color(mouse_x+62, mouse_y+16, "\n" + string(maintext.chesthp) + " > " + string(itemhp), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.chesthp > itemhp) {
	draw_text(mouse_x, mouse_y+16, "\nMaxHP: ")
	draw_text_color(mouse_x+62, mouse_y+16, "\n" + string(maintext.chesthp) + " > " + string(itemhp), c_lime, c_red,c_red,c_lime,1);
	}
	}
	}
}