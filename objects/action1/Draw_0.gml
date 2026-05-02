/// @description Insert description here
// You can write your code in this editor
if (scene = 1) {
	action1slot = "Attack"
if (attacking = 0) {
	
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((action1.x+action1.sprite_width/2), (action1.y+action1.sprite_height/2), string(action1slot));



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);

}
if (attacking = 1) {
	adjustment = obj_battle.sprite_width/2 - maintext.weaponhits/2*64 + 64/2;
	for (i = 0; i < maintext.weaponhits; i++){
		draw_sprite(sprite_array[strike[i]], 0, 32+adjustment+64*i, obj_battle.y+64);
		//instance_create_layer(64+(64*i), 64, Room1,(object_array[strike[i]])); 
	}
	if (hitcheck < maintext.weaponhits){
		if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W")))
	{
			if (strike[hitcheck] = 0)
		{
				array_set(strike, hitcheck, 4);
				hitcount++;
				hitcheck++;		
		}
			else
		{
				array_set(strike, hitcheck, 8);
				hitcheck++;
		}
		
	}
	}
	if (hitcheck < maintext.weaponhits){
			if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")))
	{

			if (strike[hitcheck] = 1)
		{
				array_set(strike, hitcheck, 5);
				hitcount++;
				hitcheck++;			
		}
			else
		{
				array_set(strike, hitcheck, 8);
				hitcheck++;
		}
	}
	}
	if (hitcheck < maintext.weaponhits){
				if (keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("A")))
	{
		
			if (strike[hitcheck] = 2)
		{
				array_set(strike, hitcheck, 6);
				hitcount++;
				hitcheck++;			
		}
			else
		{
				array_set(strike, hitcheck, 8);
				hitcheck++;
		}
	}
	}
	if (hitcheck < maintext.weaponhits){
			if (keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D")))
	{
			if (strike[hitcheck] = 3)
		{
				array_set(strike, hitcheck, 7);
				hitcount++;
				hitcheck++;			
		}
			else
		{
				array_set(strike, hitcheck, 8);
				hitcheck++;
		}
		}
	}
	if (hitcheck = maintext.weaponhits or timeleft = 0 or (i > maintext.weaponhits))
	{
		if (timeleft < 1){
		timeleft = 1;	
		}
		//This following section is a huge chunk that needs to be more or less copied to anything that's going to deal damage and give the enemy their turn.
		damage = round((power(hitcount,1.5)+power(timeleft,1.5))*(1+(maintext.atk/100))*((maintext.atk+10)/(enemydef+10)));
		maintext.battletext = "You swing your weapon at the enemy " + string(enemyname) + " inficting " +string(damage) + " damage to them."
		enemyhealth = enemyhealth - damage;
		maintext.healthpercent = (action1.enemyhealth/action1.enemymaxhealth)*100;
		if (enemyhealth > 0)
		{
			enemyhit = (irandom_range(0,enemyacc))*((100-counter_evade.buffvalue)/100);
				if (enemyhit > (3+counter_evade.buffvalue)) or (enemyhit = (enemyacc*(100-counter_evade.buffvalue/100)))
				{
				enemydamage = round(irandom_range(1,enemypower)*((enemyatk+10)/(maintext.def+10)));
				if (enemytype = 0) {
enemysuccess = "The slime sloozes itself on top of you, trying to eat you. You manage to escape, but not before the slime digests " +string(enemydamage)+ " health.";
				}
								if (enemytype = 1) {
enemysuccess = "The Dire wolf bites you viciously, tearing off a hefty " +string(enemydamage) + " health. I told you that it was dangerous when it wasn't misspelled";
				}
								if (enemytype = 2) {
enemysuccess = "As you hit the tree you hear a cracking sound. You don't even have time to look up before you feel a brunch thud heavily against your head, inflicting " +string(enemydamage) + " damage to you.";
				}
								if (enemytype = 3) {
enemysuccess = "The swarm of B's forces to try and pronounce \"Babobinbibbibupbupbed\" (Which you're pretty sure isn't it a word), but you stutter and bite your tongue, causing you to lose " +string(enemydamage) + " health.";
				}
								if (enemytype = 4) {
enemysuccess = "The skeleton hits you with its twisted sense of humor. You lose " + string(enemydamage) + " health worth of bones";
				}
								if (enemytype = 5) {
enemysuccess = "Zomble takes a chomple out of your shomple (That's your shoulder by the way). You manage to push it off without much difficulty, but it did still hurt, causing you to lose " + string(enemydamage) + " Health.";
				}
								if (enemytype = 6) {
enemysuccess = "The British Ghost ghost manifest a monacle out of thin air. You have a minor heart attack at the sheer horror in front of your eyes, causing you to take "+string(enemydamage)+ " damage.";
				}
								if (enemytype = 7) {
enemysuccess = "You get hit by the acoyltes Dark Blast. You can feel everything grow bleaker around you as you lose " +string(enemydamage) + " health."
				}
								if (enemytype = 8) {
enemysuccess = "The sounds of the harp it plays are sharp and 3.14 unending. The noise burrowing its way into your skull, causing you to lose " + string(enemydamage) + " to its mathematical melody";
				}
				if (enemytype = 9) {
enemysuccess = "The Zombees swarm around you like bees, stinging you rapidly, and causing you to take " +string(enemydamage) + " damage.";
				}
				if (enemytype = 10) {
enemysuccess = "Cimim is currently acting like the monster they truly are and is trying to crush you inside of it. Fortunately you're able to get out, but not before you take " +string(enemydamage) + " damage.";
				}
				if (enemytype = 11) {
enemysuccess = "The tooth fairy starts to calcify your body, you break out of it, but the brittleness of your body being turned partway into teeth causes a great deal of pain, making you lose " +string(enemydamage) + " health.";
				}
								if (enemytype = 12) {
enemysuccess = "The dragon swipes at you with its tail, the heft of it slamming hard into you, knocking the wind (and " +string(enemydamage) + " health) out of you.";
				}
				if (enemytype = 13) {
enemysuccess = "The lava sensually embraces you. The experience is very hot, in fact, it's about " +string(enemydamage) + " damage too hot."
				}
				if (enemytype = 14) {
enemysuccess = "The G-G-G-Golem suddenly shifts into attack mode and takes a swing at you with its fist. The blow connects and you hear a rapid dinging sound that you put down to tinitus as you lose " + string(enemydamage) + " Life Points";
				}
				if (enemytype = 15) {
enemysuccess = "The rabbit suddenly leaps for your neck, and though you're able to quickly get it off of you, you've already taken " +string(enemydamage) + "damage from it by the time you do.";
				}
				if (enemytype = 16) {
enemysuccess = "\"Did you know? I'm Hades\" \n\nThey boom, before you can even form words to reply they continue \n\n\"Hey deez nuts\"\n\n...they got you, you take " +string(enemydamage)+ " damage."  
				}
				if (enemytype = 17) {
enemysuccess = "Greg crunches the numbers on your lifespan, causing you to lose " + string(enemydamage)+ " health."
				}
				if (enemytype = 18) {
enemysuccess = "The slime goes as though to slooze itself upon you, before promptly pulling out a knive and shanking you with it, causing you to take " +string(enemydamage)+ " damage."
				}
				if (enemytype = 19) {
enemysuccess = "Th͆e fin͍al͌͝ b̑o͖s̳s k̶͍̟͆̉́͝f̬͙̏͌̌͝i̷͝ȅ͝r͌̌̉́͌̌@̤̼͖͇̠̳̽̑̒̈̏͌̌̚͝͝#̧̣̣͝ȑ̳̳͙̳͌̌͝%̜͔ĺ̴͌̇̍̅ṫ͖̗̭̘͆͆̈́͒̒̃͝l̷͌͊́̇͠͝͝. You lose " +string(enemydamage) + " health."
				}
				maintext.battletext2 = enemysuccess;
				}
				else
				{
				enemydamage = 0;
				if (enemytype = 4) {
enemyfail = "The skeleton throws its bonerang at you, causing you to lose " + string(round(random_range(35000,5000000))) + " bones worth of health. Fortunately since health isn't measured in bones you take 0 damage."; 
				}
				maintext.battletext2 = enemyfail;
				}
			counter_potTURNSKIP.turnskip = counter_potTURNSKIP.buffvalue;
			health = health - enemydamage;
		}
		//This is where said section ends.
		hitcount = 0;
		timeleft = 0;
		hitcheck = 0;
		attacking = 0;
		maintext.battletext3 = "";
		time_source_stop(timley);
		if (health <0.01) {
			if (potcount = 1) {
			maintext.battletext3 = "You start to collapse from the lethal blow dealt to you, but you halt your descent, planting your foot firmly in front of you as the energies of the Revival Gem rush into you, the gem dissipating into nothingness as it fully revitalizes you. You won't squander this opportunity."
			health = maintext.maxhealth;
			potcount = 0;
			}
			else{
		maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
		maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
		defeatloss = round(random_range((maintext.gold*0.2), (maintext.gold*0.8)));
		maintext.gold = maintext.gold - defeatloss;
		action5.adventured = true;
		maintext.battletext2 = "";
		scene = 10;
			}
		}
	}
}

if (timeleft > 0) {
	draw_text(obj_battle.x-64+obj_battle.sprite_width/2, obj_battle.y+150, "Remaining Time");
	if (timeleft < 10) {
	draw_text_transformed(obj_battle.x-18+obj_battle.sprite_width/2, obj_battle.y+170, string(timeleft), 1.1, 1.1, 0);
	}
	if (timeleft > 9.99){
	draw_text_transformed(obj_battle.x-24+obj_battle.sprite_width/2, obj_battle.y+170, string(timeleft), 1.1, 1.1, 0);	
	}
	//draw_text(300, 400, string("Hits: " + string(hitcount)));
	
}
if (enemyhealth < 1) {
		dropchance = round((irandom_range(0,(enemylevel*(1+(maintext.totalprestige/500))))));
		expfinal =  round(enemyexp*(1+(counter_exp.buffvalue/100)));
		goldgain = round((random_range(enemylevel*5, (enemylevel*20)))*(1+(maintext.totalprestige/1000)));
		if (goldgain > 9999999999){
		goldgain = 9999999999;	
		}
		action5.adventured = true;
		maintext.gold = maintext.gold + goldgain;
		if (maintext.gold > 9999999999){
		maintext.gold = 9999999999;	
		}
		if (maintext.level <9999){
		maintext.playerexp = maintext.playerexp + expfinal;
		maintext.totalexp = maintext.totalexp + expfinal;
		}
		if (maintext.level = 9999){
		maintext.playerexp = obj_display.expneeded;	
		}
		maintext.battletext2 = "";
		counter_potTURNSKIP.potskip = true;
		if (enemylevel > 10) {
		unlockcrypt = true;	
		}
		if (enemylevel > 25) {
		unlockmountain = true;	
		}
		if (enemylevel > 60) {
		unlockvolcano = true;
		}
		if (enemylevel > 200) {
		unlockhell = true;	
		}
		
		while (maintext.playerexp > obj_display.expneeded) && (maintext.level < 9999)
		{
			maintext.level++;
			maintext.baseatk = maintext.baseatk + 1 +round((maintext.level-5)/10);
			maintext.basedef = maintext.basedef + 1 +round((maintext.level-5)/10);
			maintext.basehealth = maintext.basehealth + 2 + round((maintext.level-2)/4);
			health = health + 2 + round((maintext.level-2)/4);
			maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
			maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
			maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
			maintext.playerexp = maintext.playerexp - obj_display.expneeded;
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
			obj_display.expneeded = round(((2+power(maintext.level,2)/2)*3));
			
		}
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
		if (dropchance > (enemylevel/4)){
		scene = 5;
		itemtype = irandom_range(0,4);
		if (itemtype = 0){
			if (dropchance < 14){
				itematk = round(irandom_range(3, 24*(1+(maintext.totalprestige/50))*(1+(enemylevel/200))));
				itemweaponhits = irandom_range (3, 7);
				itemweapontime = irandom_range (3, 7);
				maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
			}
			if (dropchance > 13 && dropchance <20){
				itematk = round(irandom_range(3, 28*(1+(maintext.totalprestige/50))*(1+(enemylevel/200))));
				itemweaponhits = irandom_range (3, 10);
				itemweapontime = irandom_range (3, 8);
				maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
			}
			if (dropchance > 19 && dropchance < 30){
				itematk = round(irandom_range(3, 28*(1+(maintext.totalprestige/50))*(1+(enemylevel/200))));
				itemweaponhits = irandom_range (3, 13);
				itemweapontime = irandom_range (3, 9);
				maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
			}
			if (dropchance > 29 && dropchance < 40){
				itematk = round(irandom_range(3, 28*(1+(maintext.totalprestige/50))*(1+(enemylevel/200))));
				itemweaponhits = irandom_range (3, 16);
				itemweapontime = irandom_range (3, 10);
				maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
			}
			if (dropchance > 39){
				itematk = round(irandom_range(3, 28*(1+(maintext.totalprestige/50))*(1+(enemylevel/200))));
				itemweaponhits = irandom_range (3, 19);
				itemweapontime = irandom_range (3, 11);
				maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
			}
			if (itematk < maintext.weaponattack) && (itemweaponhits < (maintext.weaponhits + 1)) && (itemweapontime < (maintext.weapontime + 1)){
			itematk = maintext.weaponattack + 1;
			itemweaponhits = maintext.weaponhits;
			itemweapontime = maintext.weapontime;
			}
			if (itemweaponhits > 12) && (itemweapontime < 5){
			itemweapontime = 5;
			}
			if (itemweaponhits > 7) && (itemweapontime < 4){
			itemweapontime = 4;
			}
			if (itematk > (maintext.maxatk/2)){
				itematk = (maintext.maxatk/2);
			}
		}
		if (itemtype = 1){
			if (dropchance < 14){
				itemdef = round(irandom_range(1, 3*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				itemhp = round(irandom_range (1, 10*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
				maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
			}
			if (dropchance > 13){
				itemdef = round(irandom_range(1, 5*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				itemhp = round(irandom_range (1, 15*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
				maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
			}
			if (itemdef < maintext.headdef) && (itemhp < maintext.headhp){
			itemdef = maintext.headdef + 1;
			itemhp = maintext.headhp + 1;
			}
		}
		if (itemtype = 2){
			if (dropchance < 14){
				itemdef = round(irandom_range(3, 9*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				itemhp = round(irandom_range (2, 20*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
				maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
			}
			if (dropchance > 13){
				itemdef = round(irandom_range(3, 15*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				itemhp = round(irandom_range (2, 30*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
				maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
			}
			if (itemdef < maintext.chestdef) && (itemhp < maintext.chesthp){
			itemdef = maintext.chestdef + 1;
			itemhp = maintext.chesthp + 1;
			}
		}
		if (itemtype = 3){
			if (dropchance < 14){
				itemdef = round(irandom_range(1, 5*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				itemhp = round(irandom_range (1, 8*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
				maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
			}
			if (dropchance > 13){
				itemdef = round(irandom_range(1, 7*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				itemhp = round(irandom_range (1, 12*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
				maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
			}
			if (itemdef < maintext.glovesdef) && (itemhp < maintext.gloveshp){
			itemdef = maintext.glovesdef + 1;
			itemhp = maintext.gloveshp + 1;
			}
		}
		if (itemtype = 4){
			if (dropchance < 14){
				itemdef = round(irandom_range(2, 6*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				itemhp = round(irandom_range (1, 14*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
				maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
			}
			if (dropchance > 13){
				itemdef = round(irandom_range(2, 9*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				itemhp = round(irandom_range (1, 22*(1+(maintext.totalprestige/100))*(1+(enemylevel/200))));
				maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
				maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
			}
			if (itemdef < maintext.legsdef) && (itemhp < maintext.legshp){
			itemdef = maintext.legsdef + 1;
			itemhp = maintext.legshp + 1;
			}
		}
		if (itemdef > (maintext.maxdef/4)){
		itemdef = (maintext.maxdef/4);	
		}
		if (itemhp > (maintext.maximumhealth/4)){
		itemhp = (maintext.maximumhealth/4);
		}
		if (health > maintext.maxhealth) {
		health = maintext.maxhealth;	
		}
		maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
		if (maintext.atk > maintext.maxatk){
		maintext.atk = maintext.maxatk;	
		}
		maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
		if (maintext.def > maintext.maxdef){
		maintext.def = maintext.maxdef;	
		}
		if (maintext.maxhealth > maintext.maximumhealth){
		maintext.maxhealth = maintext.maximumhealth;	
		}
		if (health> maintext.maxhealth){
		health = maintext.maxhealth;	
		}
		enemyhealth = 1;
	}
	else {
		enemyhealth = 1;
	if (health > maintext.maxhealth) {
	health = maintext.maxhealth;	
	}
	maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
	if (maintext.atk > maxatk){
		maintext.atk = maxatk;	
		}
	maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
	if (maintext.def > maxdef){
		maintext.def = maxdef;	
		}
	scene = 2;	
	}
}
}
if (attacking = 1) {
	return;
	}
else {
draw_self();
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text((action1.x+action1.sprite_width/2), (action1.y+action1.sprite_height/2), string(action1slot));



//returns text to normal alignment afterwards since for some reason to align one bit of text aligns ALL the text.
draw_set_halign(fa_left);
draw_set_valign(fa_top);
	
}

if (scene = 2) or (scene = 7) or (scene = 16) or (scene = 18) or (scene = 19) or (scene = 20) or (scene = 21) {
action1slot = "Continue";	
}

if (scene = 15){
action1slot = "Accept";	
}

if (scene = 0) {
action1slot = "Explore";	
}
if (scene = 3) {
action1slot = "Offer Levels";	
}

if (scene = 5) or (scene = 22) or (scene = 23) or (scene = 12) or (scene = 11) {
action1slot = "";	
}
if (scene = 6) {
action1slot = "";	
}
if (scene = 4) {
action1slot = "Forest";	
}
if (scene = 9) {
action1slot = "Save";	
}
if (scene = 10) {
action1slot = "Accept the consequences";	
}
if (scene = 13) {
	action1slot = "Buy Weapon\nCost: " +string(goldcost)+"g";
	if (itematk > maintext.weaponattack){
	disitematk = "(+)"	
	}
	if (itematk = maintext.weaponattack){
	disitematk = "(=)"	
	}
	if (itematk < maintext.weaponattack){
	disitematk = "(-)"	
	}
	if (itemweaponhits > maintext.weaponhits){
	disitemhits = "(+)"	
	}
	if (itemweaponhits = maintext.weaponhits){
	disitemhits = "(=)"	
	}
	if (itemweaponhits < maintext.weaponhits){
	disitemhits = "(-)"	
	}
	if (itemweapontime > maintext.weapontime){
	disitemtime = "(+)"	
	}
	if (itemweapontime = maintext.weapontime){
	disitemtime = "(=)"	
	}
	if (itemweapontime < maintext.weapontime){
	disitemtime = "(-)"	
	}
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	if (maintext.colorblind = true){
	draw_text_ext(mouse_x, mouse_y+16, "Attack: " + string(maintext.weaponattack) + " > " + string(itematk)+ string(disitematk) + "\nHits: " +string(maintext.weaponhits)+" > "+string(itemweaponhits)+ string(disitemhits)+"\nTime: "+string(maintext.weapontime)+" > "+string(itemweapontime)+ string(disitemtime), 16, 300)	
	}
	else{
	if (maintext.weaponattack = itematk) {
	draw_text_ext(mouse_x, mouse_y+16, "Attack: " + string(maintext.weaponattack) + " > " + string(itematk), 16, 300);
	}
	if (maintext.weaponattack > itematk) {
	draw_text(mouse_x, mouse_y+16, "Attack: ")
	draw_text_color(mouse_x+80, mouse_y+16, string(maintext.weaponattack) + " > " + string(itematk), c_lime, c_red,c_red,c_lime,1);
	}
	if (maintext.weaponattack < itematk) {
	draw_text(mouse_x, mouse_y+16, "Attack: ")
	draw_text_color(mouse_x+80, mouse_y+16, string(maintext.weaponattack) + " > " + string(itematk), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.weaponhits = itemweaponhits){
	draw_text_ext(mouse_x, mouse_y+16, "\nHits: " +string(maintext.weaponhits)+" > "+string(itemweaponhits), 16, 300);
	}
	if (maintext.weaponhits < itemweaponhits) {
	draw_text(mouse_x, mouse_y+16, "\nHits: ")
	draw_text_color(mouse_x+62, mouse_y+16, "\n" + string(maintext.weaponhits) + " > " + string(itemweaponhits), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.weaponhits > itemweaponhits) {
	draw_text(mouse_x, mouse_y+16, "\nHits: ")
	draw_text_color(mouse_x+62, mouse_y+16, "\n" + string(maintext.weaponhits) + " > " + string(itemweaponhits), c_lime, c_red,c_red,c_lime,1);
	}
	if (maintext.weapontime = itemweapontime){
	draw_text_ext(mouse_x, mouse_y+16, "\n\n\nTime: " +string(maintext.weapontime)+" > "+string(itemweapontime), 16, 300);
	}
	if (maintext.weapontime < itemweapontime) {
	draw_text(mouse_x, mouse_y+16, "\n\nTime: ")
	draw_text_color(mouse_x+62, mouse_y+16, "\n\n" + string(maintext.weapontime) + " > " + string(itemweapontime), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.weapontime > itemweapontime) {
	draw_text(mouse_x, mouse_y+16, "\n\nTime: ")
	draw_text_color(mouse_x+62, mouse_y+16, "\n\n" + string(maintext.weapontime) + " > " + string(itemweapontime), c_lime, c_red,c_red,c_lime,1);
	}
	}
	}
}
if (scene = 14){
	action1slot = "Revival Gem  x"+string(potcount)+"\n5000g";
	if (rollover = true){
	draw_sprite(Sprite1, 0, mouse_x, mouse_y+16);
	draw_text_ext(mouse_x, mouse_y+16, "This gemstones pink colouration shifts about within it as though it were a liquid, will revive the holder with full health if you die. Can only hold 1.", 16, 300)		
	}
}