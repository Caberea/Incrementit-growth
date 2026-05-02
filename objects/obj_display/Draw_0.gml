/// @description Insert description here
// You can write your code in this editor
draw_self();

expneeded = round(((2+power(maintext.level,2)/2)*3));
healthpercent = (health/maintext.maxhealth)*100
//remember to adjust subtract 6 from both instanced of obj_display.y for html version
draw_text(obj_display.x+28, obj_display.y+5, playername + "\nLevel: " + string(maintext.level) + "\nExp: " + string(maintext.playerexp) + "/" + string(expneeded) + "\nHP: " + string(health) + "/" + string(maintext.maxhealth) + "\n\nAtk: " + string(maintext.atk) + "\nDef: " +string(maintext.def) +"\nGold: " +string(maintext.gold));
draw_healthbar(obj_display.x+28, obj_display.y+88, obj_display.x+203, obj_display.y+106, healthpercent, c_grey, c_red, c_lime, 0, true, true)