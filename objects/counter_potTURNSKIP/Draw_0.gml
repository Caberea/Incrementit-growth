/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 12){
	projcost = round(1500+(250*(power(amount,3))));
	if (projcost < 9999999999){
	cost = round(1500+(250*(power(amount,3))));	
	}
	else {
	cost = 9999999999	
	}
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((counter_potTURNSKIP.x+counter_potTURNSKIP.sprite_width/2), (counter_potTURNSKIP.y+counter_potTURNSKIP.sprite_height/2), "Quick Potion Chance\n+" + string(buffvalue)+"%");



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (rollover = true){
draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
draw_text_ext(mouse_x, mouse_y+16, "Your chance to have an extra turn after using any potion. Can work multiple times once over 100%.\nGold to upgrade:" +string(cost)+"g", 16, 300)	
}
}