/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 12){
	projcost = round(300+(500*(power(amount,1.5))));
	if (projcost < 9999999999){
	cost = round(300+(500*(power(amount,1.5))));
	}
	else {
	cost = 9999999999	
	}
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((counter_potPERCENT.x+counter_potPERCENT.sprite_width/2), (counter_potPERCENT.y+counter_potPERCENT.sprite_height/2), "Elixir Healing\n" + string(buffvalue)+"% MaxHP");



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (rollover = true){
	if (buffvalue = 100){
		draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
draw_text_ext(mouse_x, mouse_y+16, "The amount of your max health your Elixirs heal when drunk\nCan't upgrade further, healings already maxxed out.", 16, 300);
	}
draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
draw_text_ext(mouse_x, mouse_y+16, "The amount of your max health your Elixirs heal when drunk\nGold to upgrade:" +string(cost)+"g", 16, 300);	
}
}