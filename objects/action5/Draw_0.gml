/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 2) or (action1.scene = 22) or (action1.scene = 23) or (action1.scene = 11) or (action1.scene = 3) or (action1.scene = 10)  or (action1.scene = 9) or (action1.scene = 15) or (action1.scene = 5){
	action5slot = "";
}

if(action1.scene = 1) && (potcount = 0){
	action5slot = "";	
}

if(action1.scene = 9){
	if (maintext.colorblind = true){
	blindtext = "On";
	}
	else{
	blindtext = "Off";	
	}
action5slot = "Colourblind mode: " + string(blindtext); 	
}

if (action1.scene = 0)
{
	action5slot = "Smithy";	
}
if (action1.scene = 4)
{
	if (action1.unlockhell = true){
	action5slot = "Hell";
	}
	else
	{
	action5slot = "";	
	}
}
if (action1.attacking = 1) {
 return;
}
else {
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((action5.x+action5.sprite_width/2), (action5.y+action5.sprite_height/2), string(action5slot));



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);	
}

if (action1.scene = 1) && (potcount > 0){
	action5slot = "FireFlask  x"+string(potcount);
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "The contents of this flask actively spark within, ready to explode the instant the glass is shattered. Deals "+string(counter_potDMG.buffvalue)+ " Damage.", 16, 300)		
	}
}
if (action1.scene = 14){
	action5slot = "FireFlask  x"+string(potcount)+"\n100g";
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "The contents of this flask actively spark within, ready to explode the instant the glass is shattered. Deals "+string(counter_potDMG.buffvalue)+ " Damage.", 16, 300)		
	}
}

if (action1.scene = 13) {
	action5slot = "Buy Leggings\nCost: " +string(goldcost)+"g";
	if (itemdef > maintext.legsdef){
	disitemdef = "(+)"	
	}
	if (itemdef = maintext.legsdef){
	disitemdef = "(=)"	
	}
	if (itemdef < maintext.legsdef){
	disitemdef = "(-)"	
	}
	if (itemhp > maintext.legshp){
	disitemhp = "(+)"	
	}
	if (itemhp = maintext.legshp){
	disitemhp = "(=)"	
	}
	if (itemhp < maintext.legshp){
	disitemhp = "(-)"	
	}
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	if (maintext.colorblind = true){
	draw_text_ext(mouse_x, mouse_y+16, "Defence: " + string(maintext.legsdef) + " > " + string(itemdef)+string(disitemdef) + "\nMaxHP: " +string(maintext.legshp)+" > "+string(itemhp)+string(disitemhp), 16, 300)	
	}
	else{
	if (maintext.legsdef = itemdef) {
	draw_text_ext(mouse_x, mouse_y+16, "Defence: " + string(maintext.legsdef) + " > " + string(itemdef), 16, 300);
	}
	if (maintext.legsdef > itemdef) {
	draw_text(mouse_x, mouse_y+16, "Defence: ")
	draw_text_color(mouse_x+80, mouse_y+16, string(maintext.legsdef) + " > " + string(itemdef), c_lime, c_red,c_red,c_lime,1);
	}
	if (maintext.legsdef < itemdef) {
	draw_text(mouse_x, mouse_y+16, "Defence: ")
	draw_text_color(mouse_x+80, mouse_y+16, string(maintext.legsdef) + " > " + string(itemdef), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.legshp = itemhp){
	draw_text_ext(mouse_x, mouse_y+16, "\nMaxHP: " +string(maintext.legshp)+" > "+string(itemhp), 16, 300);
	}
	if (maintext.legshp < itemhp) {
	draw_text(mouse_x, mouse_y+16, "\nMaxHP: ")
	draw_text_color(mouse_x+62, mouse_y+16, "\n" + string(maintext.legshp) + " > " + string(itemhp), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.legshp > itemhp) {
	draw_text(mouse_x, mouse_y+16, "\nMaxHP: ")
	draw_text_color(mouse_x+62, mouse_y+16, "\n" + string(maintext.legshp) + " > " + string(itemhp), c_lime, c_red,c_red,c_lime,1);
	}
	}
	
}
}