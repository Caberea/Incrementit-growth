/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 2) or (action1.scene=11) or (action1.scene = 5) or (action1.scene = 10)  {
	action7slot = "";
}

if(action1.scene = 1) && (potcount = 0){
	action7slot = "";	
}


if (action1.scene = 0)
{
	action7slot = "";	
}
if (action1.scene = 9)
{
	action7slot = "Leave";	
}
if (action1.attacking = 1) {
 return;
}
else {
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((action7.x+action7.sprite_width/2), (action7.y+action7.sprite_height/2), string(action7slot));



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);	
}

if (action1.scene = 1) && (potcount > 0){
	action7slot = "Iron Potion  x"+string(potcount);
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "This flask contains what looks like molten iron. It's not fortunately, tastes way better for one, but it really looks like it. Grants "+string(counter_potIRON.buffvalue)+ " Defence for the rest of the battle.", 16, 300)		
	}
}
if (action1.scene = 14){
	action7slot = "Iron Potion  x"+string(potcount)+"\n250g";
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "This flask contains what looks like molten iron. It's not fortunately, tastes way better for one, but it really looks like it. Grants "+string(counter_potIRON.buffvalue)+ " Defence for the rest of the battle.", 16, 300)		
	}
}