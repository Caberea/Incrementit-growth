/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 12){
	projcost = round(1000+(1000*(power(amount,2))));
	if (projcost < 9999999999){
	cost = round(1000+(1000*(power(amount,2))));
	}
	else {
	cost = 9999999999	
	}
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((counter_potCOUNT.x+counter_potCOUNT.sprite_width/2), (counter_potCOUNT.y+counter_potCOUNT.sprite_height/2), "Potion Capacity\n" + string(buffvalue));



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (rollover = true){
draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
draw_text_ext(mouse_x, mouse_y+16, "The amount of each potion you can hold (Revival Gems are still capped at 1).\nGold to upgrade:" +string(cost)+"g", 16, 300)	
}
}