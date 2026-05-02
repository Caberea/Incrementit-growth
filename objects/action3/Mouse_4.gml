/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 1) && (potcount > 0) && (action1.attacking = 0){
	maintext.battletext3 = "";
	potcount--;
	health = health +(round((counter_potPERCENT.buffvalue/100)*maintext.maxhealth));
	maintext.battletext = "You gulp down the milky looking liquid, finding out that it's milky tasting as well as you swallow it. It's revitalising energies restoring " +string(round((counter_potPERCENT.buffvalue/100)*maintext.maxhealth))+ " health."
	if (health > maintext.maxhealth){
	health = maintext.maxhealth;	
	}
	skipcheck = random_range(0,99)
	if (counter_potTURNSKIP.turnskip > skipcheck){
	maintext.battletext2 = "Thanks to the improvements you've helped Elena make on the design of her potions, you're able to open and drink down the Elixir before the enemy has time to respond, letting you act again."
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
	if (action1.unlockmountain = true){
	action1.enemytype = round(random_range(8,11));
	action1.enemylevel = round(random_range(25, 80));
	counter_potTURNSKIP.turnskip = counter_potTURNSKIP.buffvalue;
	if (action1.enemytype = 8 ) {
	action1.enemyname = "Harpi";
	action1.enemyexp = round(((3+power(action1.enemylevel,2)/2)*2.6));
	action1.enemymaxhealth = 40 + (action1.enemylevel*2) + round((action1.enemylevel*round((action1.enemylevel-2)/4))*1.5);
	action1.enemyacc = 15 + round(action1.enemylevel*2);
	action1.enemypower = 15 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.5);
	action1.enemyatk = 15 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.5);
	action1.enemydef = 15 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.5);
	action1.enemyhealth = action1.enemymaxhealth;
	maintext.battletext = "The mathematical concept of pi is currently playing a harp very aggressively in front of you. You get the impression its not going to stop until you or it are dead.";
	action1.enemyfail = "You forget what pi is, infurating the Harpi for just long enough to stop its playing and give you a brief reprieve form the cacophany.";
	}
	if (action1.enemytype = 9 ) {
	action1.enemyname = "Swarm of Zombees";
	action1.enemyexp = round(((3+power(action1.enemylevel,2)/2)*2.6));
	action1.enemymaxhealth = 25 + (action1.enemylevel*2) + round((action1.enemylevel*round((action1.enemylevel-2)/4))*1.2);
	action1.enemyacc = 32 + round(action1.enemylevel*2.6);
	action1.enemypower = 12 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*0.7);
	action1.enemyatk = 18 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.7);
	action1.enemydef = 20 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.8);
	action1.enemyhealth = action1.enemymaxhealth;
	maintext.battletext = "The Concave Mountain seems to somehow have attracted a merging of what you'd expect from the forest and crypt. It's a bit odd that it's out here but OH GOD IT'S UNDEAD SO IT DOESN'T DIE WHEN IT STINGS YOU!";
	action1.enemyfail = "The Zombees shamble towards you like zombies for their attack, so slow that it's easy to avoid them.";
	}
	if (action1.enemytype = 10 ) {
	action1.enemyname = "Cimim";
	action1.enemyexp = round(((3+power(action1.enemylevel,2)/2)*2.8));
	action1.enemymaxhealth = 53 + (action1.enemylevel*2) + round((action1.enemylevel*round((action1.enemylevel-2)/4))*2);
	action1.enemyacc = 24 + round(action1.enemylevel*2.3);
	action1.enemypower = 21 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.8);
	action1.enemyatk = 24 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.9);
	action1.enemydef = 13 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.2);
	action1.enemyhealth = action1.enemymaxhealth;
	maintext.battletext = "A chest that pretends to be a mimic to fool adventurers into thinking its less dangerous than it is.";
	action1.enemyfail = "Cimim is currently acting like a mimic that is acting like a chest and doing nothing.";
	}
	if (action1.enemytype = 11 ) {
	action1.enemyname = "The Tooth Fairy";
	action1.enemyexp = round(((3+power(action1.enemylevel,2)/2)*2.7));
	action1.enemymaxhealth = 10 + (action1.enemylevel*2) + round((action1.enemylevel*round((action1.enemylevel-2)/4))*1.4);
	action1.enemyacc = 13 + round(action1.enemylevel*1.9);
	action1.enemypower = 18 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.7);
	action1.enemyatk = 9 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*0.5);
	action1.enemydef = 18 + (action1.enemylevel + ((action1.enemylevel*round((action1.enemylevel-5)/20)))*1.7);
	action1.enemyhealth = action1.enemymaxhealth;
	maintext.battletext = "The tooth fairy. They want your teeth. Prepare to lose them.";
	action1.enemyfail = "The tooth fairy gets preoccupied with a tooth that it see's lying upon the ground, trying to figure out how to exchange currency with the earth for it.";
	}
	action1.scene = 1;
	}
}
if (action1.scene = 0){
		if (maintext.gold > (round((power(maintext.level,1.5)*(1-(health/maintext.maxhealth)))))) { 
			if (health < maintext.maxhealth){
			health = maintext.maxhealth;
			maintext.gold = maintext.gold -(1+(round((power(maintext.level,1.5)*(1-(health/maintext.maxhealth))))));
			}
		}
	}
if (action1.scene = 14) && (maintext.gold > 499) && (potcount < counter_potCOUNT.buffvalue) {
	potcount++;
	maintext.gold = maintext.gold - 500;
}
if (action1.scene = 13) && (maintext.gold > (goldcost-1)){
	maintext.chestdef = itemdef;
	maintext.chesthp = itemhp;
	maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
	maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
	if (health > maintext.maxhealth){
	health = maintext.maxhealth	
	}
	maintext.gold = maintext.gold - goldcost;
}
if (action1.scene = 11){
	maintext.inroom = true;
action1.scene = 14;	
}
if (action1.scene = 15)
{
	action1.scene = 0;
}







