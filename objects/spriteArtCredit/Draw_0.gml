/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 1){
draw_self()	
if (action1.enemytype = 7) or (action1.enemytype = 8) or (action1.enemytype = 10) or (action1.enemytype = 14) or (action1.enemytype = 12){
artcredit = "Clunk5_3"
draw_text_ext(spriteArtCredit.x, spriteArtCredit.y, "Sprite made by " +string(artcredit),16,200)
}
else if (action1.enemytype = 0) or (action1.enemytype = 1) or (action1.enemytype = 2) or (action1.enemytype = 3) or (action1.enemytype = 4) or (action1.enemytype = 5) or (action1.enemytype = 6) or (action1.enemytype = 15){
artcredit = "Ash"
draw_text_ext(spriteArtCredit.x, spriteArtCredit.y, "Sprite made by " +string(artcredit),16,200)
}
else{
artcredit = ""	
}
if (rollover = true){
	if (action1.enemytype = 7) or (action1.enemytype = 8) or (action1.enemytype = 10) or (action1.enemytype = 14) or (action1.enemytype = 12){
draw_text_ext(mouse_x, mouse_y+16, "https://gamejolt.com/@Clunk5_3", 16, 300)
	}
}
}