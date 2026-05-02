/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 2) or (action1.scene = 22) or (action1.scene = 23) or (action1.scene =11) or (action1.scene = 5) or (action1.scene = 10)  {
	action6slot = "";
}

if(action1.scene = 1) && (potcount = 0){
	action6slot = "";	
}

if(action1.scene = 9){
	if (maintext.onehandmode = true){
	onehandtext = "On";
	}
	else{
	onehandtext = "Off";
	}
action6slot = "One-handed mode: " + string(onehandtext);	
}

if (action1.scene = 0)
{
	action6slot = "";	
}
if (action1.attacking = 1) {
 return;
}
else {
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((action6.x+action6.sprite_width/2), (action6.y+action6.sprite_height/2), string(action6slot));



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);	
}

if (action1.scene = 14){
	action6slot = "Fury Potion  x"+string(potcount)+"\n250g";
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "This flask contains a good strong dose of liquid courage. Not alcohol, literally courage but liquified. Grants "+string(counter_potFURY.buffvalue)+ " Attack for the rest of the battle.", 16, 300)		
	}
}

if (action1.scene = 1) && (potcount > 0){
	action6slot = "Fury Potion  x"+string(potcount);
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "This flask contains a good strong dose of liquid courage. Not alcohol, literally courage but liquified. Grants "+string(counter_potFURY.buffvalue)+ " Attack for the rest of the battle.", 16, 300)		
	}
}
if (action1.scene = 13) && (maintext.scrying=false){
	action6slot = "Scrying Gem\n69g"
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "This gem allows you to see the stats of an enemy in battle, essential for anyone who frequently puts themself in peril and doesn't wish to die.", 16, 300)		
	}
}