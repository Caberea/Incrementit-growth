/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6){
	cost = round(3+((amount*4)*(1+amount)));
	if (Toggle1.oncheck = true){
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((counter_evade.x+counter_evade.sprite_width/2), (counter_evade.y+counter_evade.sprite_height/2), "Evasion Increase\n+" + string(buffvalue));
	}
	else{
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((counter_evade.x+counter_evade.sprite_width/2), (counter_evade.y+counter_evade.sprite_height/2), "Evasion Increase(x"+(string(bulkamount)) +")\n+" + string(buffvalue));		
	}


//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if (rollover = true){
	if (Toggle1.oncheck = true){
	if (buffvalue = 90){
draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
draw_text_ext(mouse_x, mouse_y+16, "Increases your evasion, making it harder for enemies to hit you.\nEvasion cannot be improved further", 16, 300);	
	}
	else{
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
draw_text_ext(mouse_x, mouse_y+16, "Increases your evasion, making it harder for enemies to hit you.\nPoints for next level:" +string(cost), 16, 300);	
	}
	}
	else{
		if (buffvalue = 90){
draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
draw_text_ext(mouse_x, mouse_y+16, "Increases your evasion, making it harder for enemies to hit you.\nEvasion cannot be improved further", 16, 300);	
	}
	else{
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
draw_text_ext(mouse_x, mouse_y+16, "Increases your evasion, making it harder for enemies to hit you.\nTotal point cost for levels:" +string(bulkcost), 16, 300);			
	}
	}
}
}