/// @description Insert description here
// You can write your code in this editor
if (scene = 1) && (attacking = 0){
attacking = 1;
numshuffle = maintext.weaponhits;
timeleft = maintext.weapontime;
hitsleft = maintext.weaponhits;

//This code looks absolutely horrific but for some reason it works so fuck it we ball.
var pain = function() {
	timeleft= timeleft -.02;
}
timley = time_source_create(time_source_game, .01, time_source_units_seconds, pain, [], (maintext.weapontime*100));
time_source_start(timley);

for(i = 0; i < numshuffle; i++){
		strike[i] = irandom_range(0, 3);
		
		}
}
if (scene = 4) {
	enemytype = round(random_range(0,3));
	enemylevel = round(random_range(1, 15));
	counter_potTURNSKIP.turnskip = counter_potTURNSKIP.buffvalue;
	if (enemytype = 0 ) {
	gemder = random_range(0,10);
	enemyname = "Slime";
	enemyexp = round(((2+power(enemylevel,2)/2)*2));
	enemymaxhealth = 10 + (action1.enemylevel*2) + round((action1.enemylevel*round((action1.enemylevel-2)/4))*0.5);
	enemyacc = 6 + round(enemylevel*0.5);
	enemypower = 2 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*0.5);
	enemyatk = 2 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*0.5);
	enemydef = 2 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*0.5);
	action1.enemyhealth = action1.enemymaxhealth;
	maintext.battletext = "You find yourself facing a slime, this slime was originally going to be from a certain popular RPG series but due to the legal risk of this it is not. Somehow this has made the slime less generic.";
	enemyfail = "The slime is standing there...waiting.";
	}
	if (enemytype = 1 ) {
	enemyname = "Dore wolf";
	enemyexp = round(((2+power(enemylevel,2)/2)*2.1));
	enemymaxhealth = 8 + (action1.enemylevel*2) + round((action1.enemylevel*round((action1.enemylevel-2)/4))*0.3);
	enemyacc = 8 + round(enemylevel*0.8);
	enemypower = 3 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*0.7);
	enemyatk = 3 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*0.6);
	enemydef = 1 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*0.2);
	action1.enemyhealth = action1.enemymaxhealth;
	maintext.battletext = "Thank goodness that it's name is mispelled, otherwise this would be way more dangerous an opponent...and probably wouldn't have such soft and fluffy looking tits.";
	enemyfail = "The Dore wolf goes to nite you, but nisses because of the uncorrect grammer and spooling mistakes.";
	}
	if (enemytype = 2 ) {
	enemyname = "A tree?";
	enemyexp = round(((3+power(enemylevel,2)/2)*2.2));
	enemymaxhealth = 20 + (action1.enemylevel*2) + round((action1.enemylevel*round((action1.enemylevel-2)/4))*1.1);
	enemyacc = 4 + round(enemylevel*0.3);
	enemypower = 14 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.4);
	enemyatk = 1 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*0.1);
	enemydef = 10 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.2);
	action1.enemyhealth = action1.enemymaxhealth;
	maintext.battletext = "You're pretty sure that this is just a regular tree, and yet there's something menacing about it."
	enemyfail = "Yep, that sure is a tree you're beating the shit out of.";
	}
	if (enemytype = 3 ) {
	enemyname = "Swarm of angry B's";
	enemyexp = round(((2+power(enemylevel,2)/2)*2.2));
	enemymaxhealth = 3 + (action1.enemylevel*2) + round((action1.enemylevel*round((action1.enemylevel-2)/4))*0.1);
	enemyacc = 14 + round(enemylevel*1.4);
	enemypower = 2 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*0.4);
	enemyatk = 1 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*0.2);
	enemydef = 14 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.5);
	action1.enemyhealth = action1.enemymaxhealth;
	maintext.battletext = "There is a large amount of flying B's head towards you. The letter, not the creature. It's time to B-B-B-B-BBBBBattle";
	enemyfail = "The swarm demands you spell the word \"Bee\". You are congratulated on your success before you even pronounce the first e.";
	}
	scene = 1;	
}
if (scene = 0) {
scene = 4;
}
if (scene = 2) {
scene = 0;	
}
if (scene = 19){
	maintext.toptorn = true;
 scene = 6	
}
if (scene = 20){
	maintext.selvatapush = true;
 scene = 6	
}
if (scene = 21){
	maintext.selvatabig = true;
 scene = 6	
}
if (scene = 7) {
	maintext.inroom = true;
	if (maintext.toptorn = false) && (maintext.bust >14) {
	scene = 19;	
	}
	else{
		if (maintext.selvatapush = false) && (maintext.bust > 60) {
		scene = 20;
		}
		else{
		if (maintext.selvatabig = false) && (maintext.bust > 200){
		scene = 21;	
		}
		else{
		scene = 6	
		}
		}
	}
}
if (scene = 3) {
maintext.vampexp = maintext.vampexp + maintext.totalexp;
maintext.exploss = maintext.totalexp;
if (maintext.vampexp < 200){
maintext.playerexp = 0;
maintext.totalexp = 0;
maintext.level = 1;
maintext.basehealth = 20;
maintext.baseatk = 1;
maintext.basedef = 1;
maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
if (maintext.atk > maintext.maxatk){
		maintext.atk = maintext.maxatk;	
		}
		if (maintext.def > maintext.maxdef){
		maintext.def = maintext.maxdef;	
		}
		if (maintext.maxhealth > maintext.maximumhealth){
		maintext.maxhealth = maintext.maximumhealth;	
		}
		if (health> maintext.maxhealth){
		health = maintext.maxhealth;	
		}
scene = 7;	
}
else{
increase = round(maintext.vampexp/200);
maintext.vampexp = 0;
}


obj_prestige.prestigepoints = obj_prestige.prestigepoints + increase;
maintext.totalprestige = maintext.totalprestige + increase;
maintext.bust = maintext.bust + increase;
maintext.bustgain = increase;
increase = 0;
maintext.tempbust = maintext.bust;
maintext.feet = 0;
if (maintext.tempbust <63360){
while (maintext.tempbust > 12) {
maintext.feet++;
maintext.tempbust = maintext.tempbust - 12
}
}
maintext.playerexp = 0;
maintext.totalexp = 0;
maintext.level = 1;
maintext.basehealth = 20;
maintext.baseatk = 1;
maintext.basedef = 1;
maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
if (maintext.atk > maintext.maxatk){
		maintext.atk = maintext.maxatk;	
		}
		if (maintext.def > maintext.maxdef){
		maintext.def = maintext.maxdef;	
		}
		if (maintext.maxhealth > maintext.maximumhealth){
		maintext.maxhealth = maintext.maximumhealth;	
		}
		if (health> maintext.maxhealth){
		health = maintext.maxhealth;	
		}
scene = 7;
}


if (scene = 9){
ini_open("vampgame.ini");
if (ini_key_exists("save1", "bust")){
Save1.savetext = "Selvata's bust size: " + string(ini_read_real("save1", "bust", maintext.bust)) +" inches\nGold: " +string(ini_read_real("save1", "gold", maintext.gold)) +"g";
}
if (ini_key_exists("save2", "bust")){
Save2.savetext = "Selvata's bust size: " + string(ini_read_real("save2", "bust", maintext.bust)) +" inches\nGold: " +string(ini_read_real("save2", "gold", maintext.gold)) +"g";
}
if (ini_key_exists("save3", "bust")){
Save3.savetext = "Selvata's bust size: " + string(ini_read_real("save3", "bust", maintext.bust)) +" inches\nGold: " +string(ini_read_real("save3", "gold", maintext.gold)) +"g";
}
ini_close();
scene = 22;
}

if (scene = 10){
	health = maintext.maxhealth;
	scene = 0;	
}
if (scene = 13) && (maintext.gold > (goldcost-1)){
	maintext.weaponattack = itematk;
	maintext.weaponhits = itemweaponhits;
	maintext.weapontime = itemweapontime;
	maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
	maintext.gold = maintext.gold - goldcost;
}
if (scene = 14) && (maintext.gold > 4999) && (potcount = 0){
	potcount = 1;
	maintext.gold = maintext. gold - 5000;
}
if (scene = 17){
scene = 6	
}
if (scene = 16){
scene = 17;	
}

if (scene = 15) {
	maintext.exploss = maintext.totalexp;
	maintext.vampexp = maintext.vampexp + maintext.totalexp;
increase = round(maintext.vampexp/200)
maintext.vampexp = 0;

obj_prestige.prestigepoints = obj_prestige.prestigepoints + increase;
maintext.totalprestige = maintext.totalprestige + increase;
maintext.bust = maintext.bust + increase;
maintext.bustgain = increase;
increase = 0;
maintext.playerexp = 0;
maintext.totalexp = 0;
maintext.level = 1;
maintext.basehealth = 20;
maintext.baseatk = 1;
maintext.basedef = 1;
maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
if (maintext.atk > maintext.maxatk){
		maintext.atk = maintext.maxatk;	
		}
		if (maintext.def > maintext.maxdef){
		maintext.def = maintext.maxdef;	
		}
		if (maintext.maxhealth > maintext.maximumhealth){
		maintext.maxhealth = maintext.maximumhealth;	
		}
if (health > maintext.maxhealth){
health = maintext.maxhealth;
}
scene = 16;
}
if (scene = 18){
scene = 0;	
}
