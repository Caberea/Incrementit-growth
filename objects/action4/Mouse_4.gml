/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 1) && (potcount > 0) && (action1.attacking = 0){
	maintext.battletext3 = ""
	potcount--;
	miriroll = 1000+(counter_potMIRACLE.buffvalue*10);
	miracle = random_range(0, miriroll);
	if (miracle <50) {
		if (health = 1){
		maintext.battletext = "You swallow down the Miracle Potion...and find that it dissapointingly both tastes like, and does, nothing."	
		}
		else{
		maintext.battletext = "You swallow down the Miracle Potion...and realise that was a huge mistake, this batch seemed more FireFlask than Potion, and you could feel it exploding about in your body, causing you to take " +string((round(health/2))) + " damage";
		health = round(health/2);
		}
	}
	if (miracle > 49.99) && (miracle <100){
	maintext.battletext = "You swallow down the Miracle Potion...and immediately start choking on it, sputtering to get it out as the vile substance causes you to feel frail and weak. Your attack and defense are cut in half.";
	maintext.atk = round(maintext.atk/2);
	maintext.def = round(maintext.def/2);
	}
	if (miracle > 99.99) && (miracle <150){
	maintext.battletext = "You swallow down the Miracle Potion...and wretch as you feel your bones start to feel brittle. Your defence has been halved."
	maintext.def = round(maintext.def/2);
	}
	if (miracle > 149.99) && (miracle <200){
	maintext.battletext = "You swallow down the Miracle Potion...and clutch your stomach as it convulses, feeling the strength sapped from your body. Your attack has been halved."
	maintext.atk = round(maintext.atk/2);
	}
	if (miracle > 199.99) && (miracle <500){
	maintext.battletext = "You swallow down the Miracle Potion...and find that it dissapointingly both tastes like, and does, nothing."	
	}
	if (miracle > 499.99) && (miracle <(550+counter_potMIRACLE.buffvalue)){
	maintext.battletext = "You swallow down the Miracle Potion...and find yourself feeling revitalised, strength filling your body. You gain " +string(counter_potFLAT.buffvalue)+ " Health and " +string(counter_potFURY.buffvalue)+ " Attack."
	health = health +counter_potFLAT.buffvalue;
	if (health > maintext.maxhealth){
	health = maintext.maxhealth;	
	}
	maintext.atk = maintext.atk + counter_potFURY.buffvalue;
	}
	if (miracle > (549.99+counter_potMIRACLE.buffvalue)) && (miracle <(600+(counter_potMIRACLE.buffvalue*2))){
	maintext.battletext = "You swallow down the Miracle Potion...and find yourself feeling healthy and hardy. You gain " +string(counter_potFLAT.buffvalue)+ " Health and " +string(counter_potIRON.buffvalue)+ " Defence."
	health = health +counter_potFLAT.buffvalue;
	if (health > maintext.maxhealth){
	health = maintext.maxhealth;	
	}
	maintext.def = maintext.def + counter_potIRON.buffvalue;
	}
	if (miracle > (599.99+(counter_potMIRACLE.buffvalue*2))) && (miracle <(650+(counter_potMIRACLE.buffvalue*3))){
	maintext.battletext = "You swallow down the Miracle Potion...and find yourself tasting an interesting combination of cool and spicy, leaving you feeling hale and heardy. You gain " +string(counter_potIRON.buffvalue)+ " Defence and " +string(counter_potFURY.buffvalue)+ " Attack."
	maintext.atk = maintext.atk + counter_potFURY.buffvalue;
	maintext.def = maintext.def + counter_potIRON.buffvalue;
	}
	if (miracle > (649.99+(counter_potMIRACLE.buffvalue*3))) && (miracle <(700+(counter_potMIRACLE.buffvalue*4))){
	maintext.battletext = "You swallow down the Miracle Potion...and feel an intense rush of energy flow through you, before you even know what you're doing you've dashed forward and struck a heavy blow against the enemy, dealing a hefty " +string(round((power(maintext.weaponhits,1.5)+power(maintext.weapontime,1.5))*(1+(maintext.atk/100))*((maintext.atk+10)/(action1.enemydef+10))))+ " damage to your opponent."
	action1.enemyhealth = action1.enemyhealth - round((power(maintext.weaponhits,1.5)+power(maintext.weapontime,1.5))*(1+(maintext.atk/100))*((maintext.atk+10)/(action1.enemydef+10)));
	}
	if (miracle > (699.99+(counter_potMIRACLE.buffvalue*4))) && (miracle <(750+(counter_potMIRACLE.buffvalue*5))){
	maintext.battletext = "You swallow down the Miracle Potion...and feel your wounds disappear as the healing energies of it bring you back to full health.";
	health = maintext.maxhealth;
	}
	if (miracle > (749.99+(counter_potMIRACLE.buffvalue*5))) && (miracle <(800+(counter_potMIRACLE.buffvalue*6))){
	maintext.battletext = "You swallow down the Miracle Potion...and feel your muscles grow stronger, your body growing sturdier as the potion heavily boosts your attack by " +string(counter_potFURY.buffvalue*2)+ ", and your defence by " + string(counter_potIRON.buffvalue*2) + ".";
	}
	maintext.atk = maintext.atk + (counter_potFURY.buffvalue*2);
	maintext.def = maintext.def + (counter_potIRON.buffvalue*2);
	if (miracle > (799.99+(counter_potMIRACLE.buffvalue*6))) && (miracle <(850+(counter_potMIRACLE.buffvalue*7))){
	maintext.battletext = "You swallow down the Miracle Potion...and feel an surge of power flow through your body as you gain " +string(counter_potFURY.buffvalue*2)+" attack, energy surging through you as you leap forwards and deal a devestating blow against the enemy, inflicting a bonecrushing " +string(round((power(maintext.weaponhits,1.5)+power(maintext.weapontime,1.5))*(1+(maintext.atk/100))*((maintext.atk+10)/(action1.enemydef+10))))+ " damage to your opponent."
	maintext.atk = maintext.atk + (counter_potFURY.buffvalue*2);
	action1.enemyhealth = action1.enemyhealth - round((power(maintext.weaponhits,1.5)+power(maintext.weapontime,1.5))*(1+(maintext.atk/100))*((maintext.atk+10)/(action1.enemydef+10)));
	}
	if (miracle > (849.99+(counter_potMIRACLE.buffvalue*7))) && (miracle <(900+(counter_potMIRACLE.buffvalue*8))){
	maintext.battletext = "You swallow down the Miracle Potion...and feel undefeatable, your wounds healing up completely and your body toughening up to resist further attacks, you gain " +string(counter_potIRON.buffvalue*2)+ "defence.";
	health = maintext.maxhealth;
	maintext.def = maintext.def + (counter_potIRON.buffvalue*2);
	}
	if (miracle > (899.99+(counter_potMIRACLE.buffvalue*8))) && (miracle <(990+(counter_potMIRACLE.buffvalue*9))){
	maintext.battletext = "You swallow down the Miracle Potion...and feel incredible, your wounds heal completely, your body feels more durable and powerful than ever. You gain "+string(counter_potFURY.buffvalue*2)+ " attack and " + string(counter_potIRON.buffvalue*2) + " defence.";
	health = maintext.maxhealth;
	maintext.atk = maintext.atk + (counter_potFURY.buffvalue*2);
	maintext.def = maintext.def + (counter_potIRON.buffvalue*2);
	}
	if (miracle > (989.99+(counter_potMIRACLE.buffvalue*9))){
	maintext.battletext = "You swallow down the Miracle Potion...and feel unstoppable, your wounds healing up completely, your body thrumming with power and vitality as you gain " +string(counter_potFURY.buffvalue*2)+ " attack and " +string(counter_potIRON.buffvalue*2)+ " defence. Energy courses throughout you alongside that power, allowing you to leap forwards and deliver a brutal" +string(round((power(maintext.weaponhits,1.5)+power(maintext.weapontime,1.5))*(1+(maintext.atk/100))*((maintext.atk+10)/(action1.enemydef+10))))+ " damage blow to your opponent."
	health = maintext.maxhealth;
	maintext.atk = maintext.atk + (counter_potFURY.buffvalue*2);
	maintext.def = maintext.def + (counter_potIRON.buffvalue*2);
	action1.enemyhealth = action1.enemyhealth - round((power(maintext.weaponhits,1.5)+power(maintext.weapontime,1.5))*(1+(maintext.atk/100))*((maintext.atk+10)/(action1.enemydef+10)));
	}
	maintext.healthpercent = (action1.enemyhealth/action1.enemymaxhealth)*100;
	skipcheck = random_range(0,99)
	if (counter_potTURNSKIP.turnskip > skipcheck){
	maintext.battletext2 = "Thanks to the improvements you've helped Elena make on the design of her potions, you're able to comprehend the consequences of the Miracle Potion before the enemy has time to respond, letting you act again."
	counter_potTURNSKIP.turnskip = counter_potTURNSKIP.turnskip - 100;
	}
	
	else {
	if (action1.enemyhealth > 0)
		{
			action1.enemyhit = (irandom_range(0,action1.enemyacc))*(100-counter_evade.buffvalue/100);
				if (action1.enemyhit > (3+counter_evade.buffvalue)) or (action1.enemyhit = (action1.enemyacc*(100-counter_evade.buffvalue/100)))
				{
				action1.enemydamage = round(irandom_range(1,action1.enemypower)*((action1.enemyatk+10)/(maintext.def+10)));
				if (action1.enemytype = 0) {
action1.enemysuccess = "The slime sloozes itself on top of you, trying to eat you. You manage to escape, but not before the slime digests " +string(action1.enemydamage)+ " health.";
				}
								if (action1.enemytype = 1) {
action1.enemysuccess = "The Dire wolf bites you viciously, tearing off a hefty " +string(action1.enemydamage) + " health. I told you that it was dangerous when it wasn't misspelled";
				}
								if (action1.enemytype = 2) {
action1.enemysuccess = "As you hit the tree you hear a cracking sound. You don't even have time to look up before you feel a brunch thud heavily against your head, inflicting " +string(action1.enemydamage) + " damage to you.";
				}
								if (action1.enemytype = 3) {
action1.enemysuccess = "The swarm of B's forces to try and pronounce \"Babobinbibbibupbupbed\" (Which you're pretty sure isn't it a word), but you stutter and bite your tongue, causing you to lose " +string(action1.enemydamage) + " health.";
				}
								if (action1.enemytype = 4) {
action1.enemysuccess = "The skeleton hits you with its twisted sense of humor. You lose " + string(action1.enemydamage) + " health worth of bones";
				}
								if (action1.enemytype = 5) {
action1.enemysuccess = "Zomble takes a chomple out of your shomple (That's your shoulder by the way). You manage to push it off without much difficulty, but it did still hurt, causing you to lose " + string(action1.enemydamage) + " Health.";
				}
								if (action1.enemytype = 6) {
action1.enemysuccess = "The British Ghost ghost manifest a monacle out of thin air. You have a minor heart attack at the sheer horror in front of your eyes, causing you to take "+string(action1.enemydamage)+ " damage.";
				}
								if (action1.enemytype = 7) {
action1.enemysuccess = "You get hit by the acoyltes Dark Blast. You can feel everything grow bleaker around you as you lose " +string(action1.enemydamage) + " health."
				}
								if (action1.enemytype = 8) {
action1.enemysuccess = "The sounds of the harp it plays are sharp and 3.14 unending. The noise burrowing its way into your skull, causing you to lose " + string(action1.enemydamage) + " to its mathematical melody";
				}
				if (action1.enemytype = 9) {
action1.enemysuccess = "The Zombees swarm around you like bees, stinging you rapidly, and causing you to take " +string(action1.enemydamage) + " damage.";
				}
				if (action1.enemytype = 10) {
action1.enemysuccess = "Cimim is currently acting like the monster they truly are and is trying to crush you inside of it. Fortunately you're able to get out, but not before you take " +string(action1.enemydamage) + " damage.";
				}
				if (action1.enemytype = 11) {
action1.enemysuccess = "The tooth fairy starts to calcify your body, you break out of it, but the brittleness of your body being turned partway into teeth causes a great deal of pain, making you lose " +string(action1.enemydamage) + " health.";
				}
								if (action1.enemytype = 12) {
action1.enemysuccess = "The dragon swipes at you with its tail, the heft of it slamming hard into you, knocking the wind (and " +string(action1.enemydamage) + " health) out of you.";
				}
				if (action1.enemytype = 13) {
action1.enemysuccess = "The lava sensually embraces you. The experience is very hot, in fact, it's about " +string(action1.enemydamage) + " damage too hot."
				}
				if (action1.enemytype = 14) {
action1.enemysuccess = "The G-G-G-Golem suddenly shifts into attack mode and takes a swing at you with its fist. The blow connects and you hear a rapid dinging sound that you put down to tinitus as you lose " + string(action1.enemydamage) + " Life Points";
				}
				if (action1.enemytype = 15) {
action1.enemysuccess = "The rabbit suddenly leaps for your neck, and though you're able to quickly get it off of you, you've already taken " +string(action1.enemydamage) + "damage from it by the time you do.";
				}
				if (action1.enemytype = 16) {
action1.enemysuccess = "\"Did you know? I'm Hades\" \n\nThey boom, before you can even form words to reply they continue \n\n\"Hey deez nuts\"\n\n...they got you, you take " +string(action1.enemydamage)+ " damage."  
				}
				if (action1.enemytype = 17) {
action1.enemysuccess = "Greg crunches the numbers on your lifespan, causing you to lose " + string(action1.enemydamage)+ " health."
				}
				if (action1.enemytype = 18) {
action1.enemysuccess = "The slime goes as though to slooze itself upon you, before promptly pulling out a knive and shanking you with it, causing you to take " +string(action1.enemydamage)+ " damage."
				}
				if (action1.enemytype = 19) {
action1.enemysuccess = "Th͆e fin͍al͌͝ b̑o͖s̳s k̶͍̟͆̉́͝f̬͙̏͌̌͝i̷͝ȅ͝r͌̌̉́͌̌@̤̼͖͇̠̳̽̑̒̈̏͌̌̚͝͝#̧̣̣͝ȑ̳̳͙̳͌̌͝%̜͔ĺ̴͌̇̍̅ṫ͖̗̭̘͆͆̈́͒̒̃͝l̷͌͊́̇͠͝͝. You lose " +string(action1.enemydamage) + " health."
				}
				maintext.battletext2 = action1.enemysuccess;
				}
				else
				{
				action1.enemydamage = 0;
				if (action1.enemytype = 4) {
action1.enemyfail = "The skeleton throws its bonerang at you, causing you to lose " + string(round(random_range(35000,5000000))) + " bones worth of health. Fortunately since health isn't measured in bones you take 0 damage."; 
				}
				maintext.battletext2 = action1.enemyfail;
				}
			counter_potTURNSKIP.turnskip = counter_potTURNSKIP.buffvalue;
			health = health - action1.enemydamage;
			if (health <0.01) {
			if (action1.potcount = 1) {
			maintext.battletext3 = "You start to collapse from the lethal blow dealt to you, but you halt your descent, planting your foot firmly in front of you as the energies of the Revival Gem rush into you, the gem dissipating into nothingness as it fully revitalizes you. You won't squander this opportunity."
			health = maintext.maxhealth;
			action1.potcount = 0;
			}
			else{
		maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
		maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
		action1.defeatloss = round(random_range((maintext.gold*0.2), (maintext.gold*0.8)));
		maintext.gold = maintext.gold - action1.defeatloss;
		maintext.battletext2 = "";
		action1.scene = 10;
			}
		}
		}
	}
}
if (action1.scene = 4){
	if (action1.unlockvolcano = true){
	action1.enemytype = round(random_range(12,15));
	action1.enemylevel = round(random_range(60, 220));
	counter_potTURNSKIP.turnskip = counter_potTURNSKIP.buffvalue;
	if (action1.enemytype = 12 ) {
	action1.enemyname = "Dragon";
	action1.enemyexp = round(((3+power(action1.enemylevel,2)/2)*3.1));
	action1.enemymaxhealth = 101 + round(action1.enemylevel*2) + round((action1.enemylevel*round((action1.enemylevel-2)/4))*2.5);
	action1.enemyacc = 71 + round(action1.enemylevel*2.3);
	action1.enemypower = 43 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.9);
	action1.enemyatk = 73 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*2.3);
	action1.enemydef = 75 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*2.2);
	action1.enemyhealth = action1.enemymaxhealth;
	maintext.battletext = "That is a grown ass dragon, no, it's not an ass dragon, I mean, it has got some pretty big haunches, but it's just a regular dragon with a somewhat fat rump. Butt a regular fully grown dragon is still a very big threat regardles of its behind.";
	action1.enemyfail = "The dragon seems to have momentarily forgotten about you, hopefully that means it's underestimating you and not that its way out of your league.";
	}
	if (action1.enemytype = 13 ) {
	action1.enemyname = "Living Lava";
	action1.enemyexp = round(((3+power(action1.enemylevel,2)/2)*2.8));
	action1.enemymaxhealth = 90 + (action1.enemylevel*2) + round((action1.enemylevel*round((action1.enemylevel-2)/4))*2);
	action1.enemyacc = 50 + round(action1.enemylevel*2);
	action1.enemypower = 50 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*2);
	action1.enemyatk = 50 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*2);
	action1.enemydef = 50 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*2);
	action1.enemyhealth = action1.enemymaxhealth;
	maintext.battletext = "Like living water but way more attractive, in the sense that some of the component materials of lava have more magnetic potential than that of water. Oh, it's also hot, but that's more literal.";
	action1.enemyfail = "The lava goes to make a move on you, but you reject its advances.";
	}
	if (action1.enemytype = 14 ) {
	action1.enemyname = "G-G-G-Golem";
	action1.enemyexp = round(((3+power(action1.enemylevel,2)/2)*2.7));
	action1.enemymaxhealth = 113 + (action1.enemylevel*2) + round((action1.enemylevel*round((action1.enemylevel-2)/4))*2.6);
	action1.enemyacc = 41 + round(action1.enemylevel*1.7);
	action1.enemypower = 37 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.6);
	action1.enemyatk = 33 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.5);
	action1.enemydef = 84 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*2.5);
	action1.enemyhealth = action1.enemymaxhealth;
	maintext.battletext = "For some reason you can't say this name without stuttering, It seems to be staying in defense mode, but it still packs a punch.";
	action1.enemyfail = "The G-G-G-Golem is staying in defense mode...for now.";
	} 
	if (action1.enemytype = 15 ) {
	action1.enemyname = "Rabbit";
	action1.enemyexp = round(((3+power(action1.enemylevel,2)/2)*2.9));
	action1.enemymaxhealth = 31 + (action1.enemylevel*2) + round((action1.enemylevel*round((action1.enemylevel-2)/4))*0.9);
	action1.enemyacc = 102 + round(action1.enemylevel*2.4);
	action1.enemypower = 96 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*2.7);
	action1.enemyatk = 103 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*2.8);
	action1.enemydef = 12 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*0.3);
	action1.enemyhealth = action1.enemymaxhealth;
	maintext.battletext = "Obligatory Reference. If you don't know it, it might be a good idea to run. If you do know it, it might be a better idea.";
	action1.enemyfail = "The rabbit blinks out of existence momentarily. After 5 (Probably closer to 3 actually) seconds it reappears, disoriented for a moment before it notices you again.";
	}
	action1.scene = 1;
	}
}
if (action1.scene = 9){
	ini_open("vampgame.ini");
if (ini_key_exists("save1", "bust")){
Load1.savetext = "Selvata's bust size: " + string(ini_read_real("save1", "bust", maintext.bust)) +" inches\nGold: " +string(ini_read_real("save1", "gold", maintext.gold)) +"g";
}
if (ini_key_exists("save2", "bust")){
Load2.savetext = "Selvata's bust size: " + string(ini_read_real("save2", "bust", maintext.bust)) +" inches\nGold: " +string(ini_read_real("save2", "gold", maintext.gold)) +"g";
}
if (ini_key_exists("save3", "bust")){
Load3.savetext = "Selvata's bust size: " + string(ini_read_real("save3", "bust", maintext.bust)) +" inches\nGold: " +string(ini_read_real("save3", "gold", maintext.gold)) +"g";
}
ini_close();
action1.scene = 23

}
if (action1.scene = 0) {
action1.scene = 11;	
}
if (action1.scene = 14) && (maintext.gold > 119) && (potcount < counter_potCOUNT.buffvalue) {
	potcount++;
	maintext.gold = maintext.gold - 120;
}
if (action1.scene = 13) && (maintext.gold > (goldcost-1)){
	maintext.glovesdef = itemdef;
	maintext.gloveshp = itemhp;
	maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
	maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
	if (health > maintext.maxhealth){
	health = maintext.maxhealth	
	}
	maintext.gold = maintext.gold - goldcost;
}






