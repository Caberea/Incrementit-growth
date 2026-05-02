/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 2) or (action1.scene= 15) or (action1.scene = 12) or (action1.scene = 7) or (action1.scene = 9) or (action1.scene = 16) or (action1.scene = 5) or (action1.scene = 10) {
	action2slot = "";
}
if(action1.scene = 1) && (potcount = 0){
	action2slot = "";	
}

if (action1.scene = 0)
{
	if (maintext.metselvata = true){
	action2slot = "Selvata";	
	}
	if (maintext.metselvata = false){
	action2slot = "Frail Cow";	
	}
}
if (action1.scene = 3)
{
	action2slot = "Check idols";	
}
if (action1.scene = 11){
	action2slot = "Fund Improvements";	
}
if (action1.scene = 4)
{
	if (action1.unlockcrypt = true){
	action2slot = "Crypt";
	}
	else
	{
	action2slot = "";	
	}
}
if (action1.attacking = 1) {
 return;
}
else {
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((action2.x+action2.sprite_width/2), (action2.y+action2.sprite_height/2), string(action2slot));



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);	
}
if (action1.scene = 13) {
	action2slot = "Buy Helmet\nCost: " +string(goldcost)+"g";
	if (itemdef > maintext.headdef){
	disitemdef = "(+)"	
	}
	if (itemdef = maintext.headdef){
	disitemdef = "(=)"	
	}
	if (itemdef < maintext.headdef){
	disitemdef = "(-)"	
	}
	if (itemhp > maintext.headhp){
	disitemhp = "(+)"	
	}
	if (itemhp = maintext.headhp){
	disitemhp = "(=)"	
	}
	if (itemhp < maintext.headhp){
	disitemhp = "(-)"	
	}
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	if (maintext.colorblind = true){
	draw_text_ext(mouse_x, mouse_y+16, "Defence: " + string(maintext.headdef) + " > " + string(itemdef) + string(disitemdef) + "\nMaxHP: " +string(maintext.headhp)+" > "+string(itemhp)+ string(disitemhp), 16, 300)	
	}
	else{
	if (maintext.headdef = itemdef) {
	draw_text_ext(mouse_x, mouse_y+16, "Defence: " + string(maintext.headdef) + " > " + string(itemdef), 16, 300);
	}
	if (maintext.headdef > itemdef) {
	draw_text(mouse_x, mouse_y+16, "Defence: ")
	draw_text_color(mouse_x+80, mouse_y+16, string(maintext.headdef) + " > " + string(itemdef), c_lime, c_red,c_red,c_lime,1);
	}
	if (maintext.headdef < itemdef) {
	draw_text(mouse_x, mouse_y+16, "Defence: ")
	draw_text_color(mouse_x+80, mouse_y+16, string(maintext.headdef) + " > " + string(itemdef), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.headhp = itemhp){
	draw_text_ext(mouse_x, mouse_y+16, "\nMaxHP: " +string(maintext.headhp)+" > "+string(itemhp), 16, 300);
	}
	if (maintext.headhp < itemhp) {
	draw_text(mouse_x, mouse_y+16, "\nMaxHP: ")
	draw_text_color(mouse_x+62, mouse_y+16, "\n" + string(maintext.headhp) + " > " + string(itemhp), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.headhp > itemhp) {
	draw_text(mouse_x, mouse_y+16, "\nMaxHP: ")
	draw_text_color(mouse_x+62, mouse_y+16, "\n" + string(maintext.headhp) + " > " + string(itemhp), c_lime, c_red,c_red,c_lime,1);
	}	
	}
	}
}
if (action1.scene = 14){
	action2slot = "Potion  x"+string(potcount)+"\n30g";	
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "This flask contains an oddly delicious looking red substance. Heals "+string(counter_potFLAT.buffvalue)+ " Health.", 16, 300)		
	}
}
if (action1.scene = 1) && (potcount > 0){
	action2slot = "Potion  x"+string(potcount);
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "This flask contains an oddly delicious looking red substance. Heals "+string(counter_potFLAT.buffvalue)+ " Health.", 16, 300)		
	}
}
