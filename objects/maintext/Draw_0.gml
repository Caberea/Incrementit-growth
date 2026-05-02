//Text code, wow, this actually wraps around, really nicely, like, holy shit I'm amazed I found this out so quick
draw_self();
if (atk > maxatk){
		atk = maxatk;	
		}
		if (def > maxdef){
		def = maxdef;	
		}
		if (maxhealth > maximumhealth){
		maxhealth = maximumhealth;	
		}
if (health > maintext.maxhealth){
health = maintext.maxhealth;
}
if (action1.scene = 10){
	draw_text_ext(maintext.x+16,maintext.y+5, "You feel yourself get knocked out from your body as it falls lifeless before the enemy " +string(action1.enemyname)+ ". Fading into dust and getting swept up by its latent magic, carried away towards the town. You watch as the latent magic swirls around you, the " +string(action1.defeatloss) +" gold that it takes as tribute disappearing into a golden mist that fades into nothingness.\n\n\n\n\n\nIt's time to respawn..." , 16 ,maintext.sprite_width-32);
}
if (action1.scene = 9){
	draw_text_ext(maintext.x+16,maintext.y+5, "Credits:\n\nCode and writing done by Caberea(me)\n\nMonster sprites done by Ash and Clunk5_3\n\nSpecial thanks to my supporters on Patreon:\nxxpeanut124     Kaltorek     Grim_Reaper_Yinglet     Erwin     Some_One     Futong     Gonkulous     Ultranova     Run_away_kolbold     Lungulus     Wyatt_Bilott     Charnor     Norman_King" , 16 ,maintext.sprite_width-260);	
	draw_text(1100, 280, "Support the game");
}
if (action1.scene = 22) or (action1.scene = 23){
	draw_text(maintext.x+16,maintext.y+5, string(action1.vampgame));	
}
if (action1.scene = 0)
{
	
	if (metselvata = false){
		selvatapresence = "\n\nYou notice that there is a thin and frail looking cow woman standing in the passage between the inn and the apothecary, waving feebly to you to try and get your attention, her pitch black cut-cloth robes hang loosely upon her gaunt frame, the elegent dress seeming odd upon her, though it did compliment her deep brown hide.";
	}
	if (metselvata = true){
		if (selvatapush = true){
			if (selvatabig = true){
				if (bust < 2000){
				selvatapresence = "\n\nYou can see the immense bust of Selvata from between the buildings, along with peeking over the roofs of them somewhat, the sheer size of them did make it rather difficult to tell how far a trek you'd have to make to meet the owner of those tits.";
				}
				else{
					if (bust < 2191360){
				selvatapresence = "\n\nSelvata's bosom towers somewhat over the town now, her breasts ensuring there was a nice bit of shade covering the inn (And a significant portion of the town) throughout most of the day. At least now you're certain that you need to make a lengthy trip to get to the vampire proper.";
					}
					else{
				if (bust < 502191360){
				selvatapresence = "\n\nSelvata's bust blots out the sun almost completely, her breasts surrounding the entire town in their shade, protecting the townsfolk from both the elements and any would-be threats that would dare challenge the increasingly deific vampire and her beyond mountainous mammaries.";
				}
				else {
					if (bust < 1577727360){
					selvatapresence ="\n\nSelvata's breasts are covering most of the world now, her eyes have started to glow with faint trails of divine power emenating from the corner of them, her laughter causes her breasts to quake and the planet along with it. A laughter that's quite common when she's reminded of the days when she was 'merely' capable of burying the entire town beneath her bust.";
					}
					else {
					if (bust < 1178496000000000000){
					selvatapresence ="\n\nIt's a good thing that Selvata is a benevolent goddess, keeping the world snugly held in between her planetary breasts, the immense power she now held only rivalled by her buxom beauty. Now she'll never have to worry about being apart from anyone. And though she could just teleport you straight up to feed her...it's more fun to at least start making the trip.";
					}
					else{
					if (bust < 58790000000000000000000){
					selvatapresence = "\n\nThe light from the sun has long since ceased to grace this world, Selvata's breasts are currently smothering it between them along with the rest of the solar system. Fortunately, she's able to provide her own light to this world with ease now, and according to her, she doesn't even need to focus to do any of it. One of the many perks of her ascension you suppose.";	
					}
					else{
					if (bust < 34670000000000000000000000000){
					selvatapresence = "\n\nUnder normal circumstances you wouldn't really be capable of perceiving it, but Selvata's kind enough to at least partially share her divine vision with you (So long as it's being used to witness her bust). But thanks to her doing so you're able to witness her breasts, completely smothering the galaxy with their immense softness.";	
					}
					else{
					selvatapresence = "\n\nIt's official. Selvata's breasts are bigger than reality, you're not sure how there's still space for her to grow, she might just be making more of it herself, but her breasts are officially everything. Galaxies mere specks brushing against her infinite bustline...she wants you to know that they tickle.";	
					}
					}
					}
					}
				}
					}
				}
		}
		else {
		selvatapresence = "\n\nYou can see Selvata standing between the inn and the apothecary, her huge breasts making her rather hard to miss. As she notices your gaze she teasingly beckons you towards her with a finger, licking her lips as she rests her arms upon her massive mammaries."	
		}
		}
		else {
		selvatapresence = "\n\nSelvata is currently staying at the inn right now. It might be nice to pay her a visit.";	
		}
	}
	if (scrying = false){
	scryingtext = "...and you had been eyeing that Scrying gem they had on discount there, could be very useful for you."	
	}
	if (scrying = true){
	scryingtext = "";	
	}
	
	draw_text_ext(maintext.x+16,maintext.y+5, string(towntext)+string(scryingtext)+ +string(selvatapresence), 16 ,maintext.sprite_width-32);
}
// Selvata sinks her fangs into your shoulder as she presses her body against you, letting you feel the plush softness of her " + string(bust) + " inch chest, it was almost enough to distract from the way that you felt yourself growing weaker. Your attention was soon successfully stolen away however by the sensation of those breasts growing, pushing against you more and more with each gulp of your power that she took.

if (action1.scene = 1)
{
	maintext.healthpercent = (action1.enemyhealth/action1.enemymaxhealth)*100;
	draw_set_halign(fa_center);
	enemydisplay = string(action1.enemyname) +"\n Lv." + string(action1.enemylevel) + "\nHP:"+ string(action1.enemyhealth)+"/"+string(action1.enemymaxhealth) +"\n\n\n"
	draw_text((maintext.x+maintext.sprite_width/2), maintext.y+10, string(enemydisplay)); 
	draw_set_halign(fa_left);
	draw_healthbar((maintext.x+maintext.sprite_width/2)-90, maintext.y+80, (maintext.x+maintext.sprite_width/2)+96, maintext.y+98, healthpercent, c_grey, c_red, c_lime, 0, true, true)
	draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\n\n\n\n" + string(battletext) + "\n\n" + string(battletext2) +"\n\n" +string(battletext3), 16 ,maintext.sprite_width-32);
	if (3+counter_evade.buffvalue) > (action1.enemyacc*((100-counter_evade.buffvalue)/100)){
	accheck = ((1/(action1.enemyacc))*100);
	}
	else{
	accheck = (1-(((3+counter_evade.buffvalue))/(action1.enemyacc*((100-counter_evade.buffvalue)/100))))*100;	
	}
	if (scrying = true){
	draw_text(1136,35, "Hit chance:"+ string(accheck)+"%\nMax DMG:" +string(round(action1.enemypower*((action1.enemyatk+10)/(def+10)))) +"\nATK:" +string(round(action1.enemyatk))+ "\nDEF:"+string(round(action1.enemydef)));
	}
}
if (action1.scene = 2){
	draw_text_ext(maintext.x+16,maintext.y+5, "You defeated the enemy " +string(action1.enemyname)+ ", granting you " + string(action1.expfinal) + " experience and " +string(action1.goldgain)+ " gold.", 16 ,maintext.sprite_width-16);	
}
if (action1.scene = 5)
{
	draw_text_ext(maintext.x+16,maintext.y+5, "You defeated the enemy " +string(action1.enemyname)+ ", granting you " + string(action1.expfinal) + " experience and " +string(action1.goldgain)+ " gold.", 16 ,maintext.sprite_width-16);
	draw_text_ext(maintext.x+16,maintext.y+5, "\n\nYou found an item", 16 , maintext.sprite_width-16);
	
	if (colorblind = true){
		if (action1.itemtype = 0){
	if (action1.itematk > maintext.weaponattack){
	disitematk = "(+)"	
	}
	if (action1.itematk = maintext.weaponattack){
	disitematk = "(=)"	
	}
	if (action1.itematk < maintext.weaponattack){
	disitematk = "(-)"	
	}
	if (action1.itemweaponhits > maintext.weaponhits){
	disitemhits = "(+)"	
	}
	if (action1.itemweaponhits = maintext.weaponhits){
	disitemhits = "(=)"	
	}
	if (action1.itemweaponhits < maintext.weaponhits){
	disitemhits = "(-)"	
	}
	if (action1.itemweapontime > maintext.weapontime){
	disitemtime = "(+)"	
	}
	if (action1.itemweapontime = maintext.weapontime){
	disitemtime = "(=)"	
	}
	if (action1.itemweapontime < maintext.weapontime){
	disitemtime = "(-)"	
	}
				draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\nWeapon", 16 , maintext.sprite_width-16);
				draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\n\nOld    >    New\nAttack: " + string(weaponattack) + " > " +string(action1.itematk) +string(disitematk) , 16 , maintext.sprite_width-16);
				draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\n\n\n\nHits: " + string(weaponhits) + " > " +string(action1.itemweaponhits)+string(disitemhits) , 16 , maintext.sprite_width-16);
				draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\n\n\n\n\nTime: " + string(weapontime) + " > " +string(action1.itemweapontime)+string(disitemtime) , 16 , maintext.sprite_width-16);		
		}
		if (action1.itemtype = 1){
			if (action1.itemdef > maintext.headdef){
	disitemdef = "(+)"	
	}
	if (action1.itemdef = maintext.headdef){
	disitemdef = "(=)"	
	}
	if (action1.itemdef < maintext.headdef){
	disitemdef = "(-)"	
	}
	if (action1.itemhp > maintext.headhp){
	disitemhp = "(+)"	
	}
	if (action1.itemhp = maintext.headhp){
	disitemhp = "(=)"	
	}
	if (action1.itemhp < maintext.headhp){
	disitemhp = "(-)"	
	}
			draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\nHelmet", 16 , maintext.sprite_width-16);
				draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\n\nOld    >    New\nDefence: " + string(headdef) + " > " +string(action1.itemdef) +string(disitemdef) , 16 , maintext.sprite_width-16);

				draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\n\n\n\nMax Health: " + string(headhp) + " > " +string(action1.itemhp) +string(disitemhp) , 16 , maintext.sprite_width-16);

		}
		if (action1.itemtype = 2){
			if (action1.itemdef > maintext.chestdef){
	disitemdef = "(+)"	
	}
	if (action1.itemdef = maintext.chestdef){
	disitemdef = "(=)"	
	}
	if (action1.itemdef < maintext.chestdef){
	disitemdef = "(-)"	
	}
	if (action1.itemhp > maintext.chesthp){
	disitemhp = "(+)"	
	}
	if (action1.itemhp = maintext.chesthp){
	disitemhp = "(=)"	
	}
	if (action1.itemhp < maintext.chesthp){
	disitemhp = "(-)"	
	}
			draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\nChestpiece", 16 , maintext.sprite_width-16);
				draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\n\nOld    >    New\nDefence: " + string(chestdef) + " > " +string(action1.itemdef)+string(disitemdef) , 16 , maintext.sprite_width-16);


				draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\n\n\n\nMax Health: " + string(chesthp) + " > " +string(action1.itemhp)+string(disitemhp) , 16 , maintext.sprite_width-16);

		}
		if (action1.itemtype = 3){
			if (action1.itemdef > maintext.glovesdef){
	disitemdef = "(+)"	
	}
	if (action1.itemdef = maintext.glovesdef){
	disitemdef = "(=)"	
	}
	if (action1.itemdef < maintext.glovesdef){
	disitemdef = "(-)"	
	}
	if (action1.itemhp > maintext.gloveshp){
	disitemhp = "(+)"	
	}
	if (action1.itemhp = maintext.gloveshp){
	disitemhp = "(=)"	
	}
	if (action1.itemhp < maintext.gloveshp){
	disitemhp = "(-)"	
	}
			draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\nGauntlet", 16 , maintext.sprite_width-16);
				draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\n\nOld    >    New\nDefence: " + string(glovesdef) + " > " +string(action1.itemdef)+string(disitemdef) , 16 , maintext.sprite_width-16);


				draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\n\n\n\nMax Health: " + string(gloveshp) + " > " +string(action1.itemhp)+string(disitemhp) , 16 , maintext.sprite_width-16);

		}
		if (action1.itemtype = 4){
			if (action1.itemdef > maintext.legsdef){
	disitemdef = "(+)"	
	}
	if (action1.itemdef = maintext.legsdef){
	disitemdef = "(=)"	
	}
	if (action1.itemdef < maintext.legsdef){
	disitemdef = "(-)"	
	}
	if (action1.itemhp > maintext.legshp){
	disitemhp = "(+)"	
	}
	if (action1.itemhp = maintext.legshp){
	disitemhp = "(=)"	
	}
	if (action1.itemhp < maintext.legshp){
	disitemhp = "(-)"	
	}
			draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\nLeggings", 16 , maintext.sprite_width-16);
				draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\n\nOld    >    New\nDefence: " + string(legsdef) + " > " +string(action1.itemdef)+string(disitemdef) , 16 , maintext.sprite_width-16);


				draw_text_ext(maintext.x+16,maintext.y+5, "\n\n\n\n\n\nMax Health: " + string(legshp) + " > " +string(action1.itemhp)+string(disitemhp) , 16 , maintext.sprite_width-16);

		}
	}
	else{
	if (action1.itemtype = 0){
		draw_text(maintext.x+16,maintext.y+5, "\n\n\nWeapon\nOld    >    New");
	if (maintext.weaponattack = action1.itematk) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nAttack: " + string(maintext.weaponattack) + " > " + string(action1.itematk));
	}
	if (maintext.weaponattack > action1.itematk) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nAttack: ")
	draw_text_color(maintext.x+96, maintext.y+5, "\n\n\n\n\n" +string(maintext.weaponattack) + " > " + string(action1.itematk), c_lime, c_red,c_red,c_lime,1);
	}
	if (maintext.weaponattack < action1.itematk) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nAttack: ")
	draw_text_color(maintext.x+96, maintext.y+5, "\n\n\n\n\n" +string(maintext.weaponattack) + " > " + string(action1.itematk), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.weaponhits = action1.itemweaponhits){
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nHits: " +string(maintext.weaponhits)+" > "+string(action1.itemweaponhits));
	}
	if (maintext.weaponhits < action1.itemweaponhits) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nHits: ")
	draw_text_color(maintext.x+78, maintext.y+5, "\n\n\n\n\n\n" + string(maintext.weaponhits) + " > " + string(action1.itemweaponhits), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.weaponhits > action1.itemweaponhits) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nHits: ")
	draw_text_color(maintext.x+78, maintext.y+5, "\n\n\n\n\n\n" + string(maintext.weaponhits) + " > " + string(action1.itemweaponhits), c_lime, c_red,c_red,c_lime,1);
	}
	if (maintext.weapontime = action1.itemweapontime){
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\n\nTime: " +string(maintext.weapontime)+" > "+string(action1.itemweapontime));
	}
	if (maintext.weapontime < action1.itemweapontime) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\n\nTime: ")
	draw_text_color(maintext.x+78, maintext.y+5, "\n\n\n\n\n\n\n" + string(maintext.weapontime) + " > " + string(action1.itemweapontime), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.weapontime > action1.itemweapontime) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\n\nTime: ")
	draw_text_color(maintext.x+78, maintext.y+5, "\n\n\n\n\n\n\n" + string(maintext.weapontime) + " > " + string(action1.itemweapontime), c_lime, c_red,c_red,c_lime,1);
	}
	}
	if (action1.itemtype = 1){
		draw_text(maintext.x+16,maintext.y+5, "\n\n\nHelmet\nOld    >    New");
	if (maintext.headdef = action1.itemdef) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nDefence: " + string(maintext.headdef) + " > " + string(action1.itemdef));
	}
	if (maintext.headdef > action1.itemdef) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nDefence: ")
	draw_text_color(maintext.x+96, maintext.y+5, "\n\n\n\n\n" +string(maintext.headdef) + " > " + string(action1.itemdef), c_lime, c_red,c_red,c_lime,1);
	}
	if (maintext.headdef < action1.itemdef) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nDefence: ")
	draw_text_color(maintext.x+96, maintext.y+5, "\n\n\n\n\n" +string(maintext.headdef) + " > " + string(action1.itemdef), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.headhp = action1.itemhp){
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nMaxHP: " +string(maintext.headhp)+" > "+string(action1.itemhp));
	}
	if (maintext.headhp < action1.itemhp) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nMaxHP: ")
	draw_text_color(maintext.x+78, maintext.y+5, "\n\n\n\n\n\n" + string(maintext.headhp) + " > " + string(action1.itemhp), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.headhp > action1.itemhp) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nMaxHP: ")
	draw_text_color(maintext.x+78, maintext.y+5, "\n\n\n\n\n\n" + string(maintext.headhp) + " > " + string(action1.itemhp), c_lime, c_red,c_red,c_lime,1);
	}
	}
	if (action1.itemtype = 2){
	draw_text(maintext.x+16,maintext.y+5, "\n\n\nChestpiece\nOld    >    New");
	if (maintext.chestdef = action1.itemdef) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nDefence: " + string(maintext.chestdef) + " > " + string(action1.itemdef));
	}
	if (maintext.chestdef > action1.itemdef) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nDefence: ")
	draw_text_color(maintext.x+96, maintext.y+5, "\n\n\n\n\n" +string(maintext.chestdef) + " > " + string(action1.itemdef), c_lime, c_red,c_red,c_lime,1);
	}
	if (maintext.chestdef < action1.itemdef) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nDefence: ")
	draw_text_color(maintext.x+96, maintext.y+5, "\n\n\n\n\n" +string(maintext.chestdef) + " > " + string(action1.itemdef), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.chesthp = action1.itemhp){
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nMaxHP: " +string(maintext.chesthp)+" > "+string(action1.itemhp));
	}
	if (maintext.chesthp < action1.itemhp) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nMaxHP: ")
	draw_text_color(maintext.x+78, maintext.y+5, "\n\n\n\n\n\n" + string(maintext.chesthp) + " > " + string(action1.itemhp), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.chesthp > action1.itemhp) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nMaxHP: ")
	draw_text_color(maintext.x+78, maintext.y+5, "\n\n\n\n\n\n" + string(maintext.chesthp) + " > " + string(action1.itemhp), c_lime, c_red,c_red,c_lime,1);
	}
	}
	if (action1.itemtype = 3){
	draw_text(maintext.x+16,maintext.y+5, "\n\n\nGauntlet\nOld    >    New");	
	if (maintext.glovesdef = action1.itemdef) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nDefence: " + string(maintext.glovesdef) + " > " + string(action1.itemdef));
	}
	if (maintext.glovesdef > action1.itemdef) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nDefence: ")
	draw_text_color(maintext.x+96, maintext.y+5, "\n\n\n\n\n" + string(maintext.glovesdef) + " > " + string(action1.itemdef), c_lime, c_red,c_red,c_lime,1);
	}
	if (maintext.glovesdef < action1.itemdef) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nDefence: ")
	draw_text_color(maintext.x+96, maintext.y+5, "\n\n\n\n\n" +string(maintext.glovesdef) + " > " + string(action1.itemdef), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.gloveshp = action1.itemhp){
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nMaxHP: " +string(maintext.gloveshp)+" > "+string(action1.itemhp));
	}
	if (maintext.gloveshp < action1.itemhp) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nMaxHP: ")
	draw_text_color(maintext.x+78, maintext.y+5, "\n\n\n\n\n\n" + string(maintext.gloveshp) + " > " + string(action1.itemhp), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.gloveshp > action1.itemhp) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nMaxHP: ")
	draw_text_color(maintext.x+78, maintext.y+5, "\n\n\n\n\n\n" + string(maintext.gloveshp) + " > " + string(action1.itemhp), c_lime, c_red,c_red,c_lime,1);
	}
	}
	if (action1.itemtype = 4){
	draw_text(maintext.x+16,maintext.y+5, "\n\n\nLeggings\nOld    >    New");	
	if (maintext.legsdef = action1.itemdef) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nDefence: " + string(maintext.legsdef) + " > " + string(action1.itemdef));
	}
	if (maintext.legsdef > action1.itemdef) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nDefence: ")
	draw_text_color(maintext.x+96, maintext.y+5, "\n\n\n\n\n" +string(maintext.legsdef) + " > " + string(action1.itemdef), c_lime, c_red,c_red,c_lime,1);
	}
	if (maintext.legsdef < action1.itemdef) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\nDefence: ")
	draw_text_color(maintext.x+96, maintext.y+5, "\n\n\n\n\n" +string(maintext.legsdef) + " > " + string(action1.itemdef), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.legshp = action1.itemhp){
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nMaxHP: " +string(maintext.legshp)+" > "+string(action1.itemhp));
	}
	if (maintext.legshp < action1.itemhp) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nMaxHP: ")
	draw_text_color(maintext.x+78, maintext.y+5, "\n\n\n\n\n\n" + string(maintext.legshp) + " > " + string(action1.itemhp), c_red, c_lime,c_lime,c_red,1);
	}
	if (maintext.legshp > action1.itemhp) {
	draw_text(maintext.x+16, maintext.y+5, "\n\n\n\n\n\nMaxHP: ")
	draw_text_color(maintext.x+78, maintext.y+5, "\n\n\n\n\n\n" + string(maintext.legshp) + " > " + string(action1.itemhp), c_lime, c_red,c_red,c_lime,1);
	}
	}
	}
		
	}
		
if (action1.scene = 15){
	draw_text_ext(maintext.x+16,maintext.y+5, "As you approach the cow lady, she looks you over quickly, her eyes gleaming with hope and excitement as she assesses you. \n\n\"Oh thank goodness, you're an adventurer right?\"\n\nYou nod your head slowly, being an adventurer was somewhat special, but outside of excited children you'd never had someone look at you with such fascination.\n\n\"I'm terribly sorry, this is going to be a rather odd request, but...if you would be so kind, may I have a bite to drink?\"\n\n\nAccept Quest?\nFind the odd cow lady something to drink.\nRewards: ???", 16 ,maintext.sprite_width-32);	
}
if (action1.scene = 16){
	draw_text_ext(maintext.x+16,maintext.y+5, "You accept the oddly worded quest from the woman, expecting that you'll just need to find some particular drink or item for her to sate her thirst...until you felt her hands upon your body, caressing you as she leaned in as though to kiss at your neck, which initially she did seem to do.\n\nThe actuality of the situation dawned on you as you began to feel your strength draining from your body, your footing feeling less sure as a dizzying realisation hit you. She was a vampire! Of course she was, and here you were now helpless as she drained your life away, her breasts pressing against your chest as they gradually swelled out bigger. You attention was drawn to them as they gained a vague reddish tint to them, growing before your very eyes, she'd seemed almost flat before, but now you watched as they rose into two round mounds jutting out "+string(bust)+" inches from her chest.\n\nUnfortunately, you didn't have much time to appreciate them, as you were losing consciousness rapidl-and there it goes. \n\n\nQuest Completed!\nFind the odd cow lady something to drink.\nRewards: -"+string(exploss)+"exp", 16 ,maintext.sprite_width-32);	
}
if (action1.scene = 17){
	draw_text_ext(maintext.x+16,maintext.y+5, "You awake in one of the inn's rooms, seeing the cow watching over you on a seat beside the bed, a panicked look clear upon her face that softens to relief as you wake up.\n\n\"Oh thank goodness, I was terrified that I'd taken too much from you. I know that your kind isn't supposed to be able to die like that, but when you collapsed there...well, I was worried I might have been misinformed\"\n\nShe looked down for a moment as she recalled that moment, before perking back up as she offered you the food platter on the bedside table. It was the regular fare the inn provided, but it was much needed nourishment for you after that. The vampire continuing on as you ate.\n\n\"So...I should probably introduce myself, given my prior rudeness with feeding on you like that. My name is Selvata, and, as you may have gathered, I am a vampire. But, as you can no doubt tell, I'm not a threat to you, or anyone else here for that matter. I just want to stay here awhile, live in peace, and...if you're willing, maybe...feed on you a bit more once you've got your strength back?\"\n\nShe hurriedly gets out some peculiar figures which you can feel thrum with energy, placing them on the bedside table.\n\n\"I'm not asking you feed me for free of course! I can help you in return, with something way better than gold even. These are my idols. They're something vampire's use for...well, their typical use isn't relevant right now. What matters is that I can share my attunement to them with you, so when you feed me enough, these will make you stronger. Just...try touching them and you'll feel it.\"" , 16 ,maintext.sprite_width-32);	
}
if (action1.scene = 6){
	if (selvatapush = true){
		if (selvatabig = true){
		draw_text_ext(maintext.x+16,maintext.y+5, "You dive in between Selvata's mountainous mammaries, you connection to the idols assiting you greatly in finding them admist the sea of vampire cow tit." , 16 ,maintext.sprite_width-32);
		}
		else
		{
		draw_text_ext(maintext.x+16,maintext.y+5, "Selvata fishes out the idols from her cleavage, placing them atop her huge wobbling chest. Resting her hands upon them to keep them in place so you can attune and adjust them." , 16 ,maintext.sprite_width-32);
		}
		}
		else{
	draw_text_ext(maintext.x+16,maintext.y+5, "You place your hands upon the idols Selvata left out, feeling a shiver run through your body as you became aware of the energies within them, and how to adjust them to your preference." , 16 ,maintext.sprite_width-32);	
		}
	
}
if (action1.scene = 18){
	draw_text_ext(maintext.x+16,maintext.y+5, "Selvata looks from the idols towards you as you finish attuning with them. She certainly hadn't been lying about these being helpful, even if it meant giving up the strength you'd gained.\n\n\"So, I'll probably be spending my time around here...I didn't know how long you'd take to recover so I've got this room a good long while. So, if you want to come back...maybe feed me a little? Or want to just talk or adjust the idol's, well, you know where I am.\"" , 16 ,maintext.sprite_width-32);
}
if (action1.scene = 11 ){
	if (inroom = false){
	draw_text_ext(maintext.x+16,maintext.y+5, "The aromatic scent of the plants and potions dazed you momentarily as you entered the building, though you soon recovered and walked your way up to the shopkeep.\n\nThe apothecary herself was a quite heavily bosomed cow named Elena, her coat dark with splotches of white. As you approached her she crossed her arms below her chest, drawing you attention to the immense musculature she possessed that somehow put her heaving bust to shame. A smirk creeping onto her face as she asked.\n\n\"Once you're done staring, you mind telling me what you're here for?\"" , 16 ,maintext.sprite_width-32);
	}
	if (inroom = true){
	draw_text_ext(maintext.x+16,maintext.y+5, "Elena crossed her powerful arms beneath her bust, heaving up her heavy bosom slightly, drawing your attention to the massive mounds.\n\n\"Anything else you want, or should I start charging for staring at my tits?\"" , 16 ,maintext.sprite_width-32);
	}
}
if (action1.scene = 12){
	draw_text_ext(maintext.x+16,maintext.y+5, "\"Oh? You want to help me make my potions better. Well I'm certainly not going to turn down the opportunity to improve my wares, especially if you're paying for it.\"" , 16 ,maintext.sprite_width-32);	
}
if (action1.scene =14){
	draw_text_ext(maintext.x+16,maintext.y+5, "\"Ah, yes, that does tend to be what people come to an apothecary for. Well, what do you want to buy?\"" , 16 ,maintext.sprite_width-32);	
}
if (action1.scene = 4){
	if (action1.unlockcrypt = true){
	crypttext = "As with just about every place where the dead rest, there's the always the risk of the dead getting out and becoming a rather dangerous problem for the living. It wouldn't be a bad idea to try and keep the undead dead.\n\n";
	}
	if (action1.unlockmountain = true){
	mountaintext = "In the distance there's a quite immense concave mountain. I'd explain what it looks like but, we all know what mountains are. The creatures there are quite a step up from the undead you've grown accustomed to fighting, so make sure you come prepared.\n\n";	
	}
	if (action1.unlockvolcano = true){
	volcanotext = "Beyond the mountain lies it's hotter cousin, the volcano. the creatures there are likely to be near as lethal as their environment, though the spiralling ridges along it did give you some slim safe passages to get inside.\n\n";	
	}
	if (action1.unlockhell = true){
	helltext = "So inside the volcano there's a passageway into hell. There you'll find the most dangerous and powerful foes, so be wary if you venture in there.\n\n";	
	}
	draw_text_ext(maintext.x+16,maintext.y+5, "You head away from the village, looking towards the forest, you can hear the sounds of the rugged wildlife there, and occasionally see glimpses of movement amidst the dense woods\n\n" + string(crypttext) + string(mountaintext) + string(volcanotext) +string(helltext)+"Where will you venture?" , 16 ,maintext.sprite_width-32);	
}
if (action1.scene =13){
	draw_text_ext(maintext.x+16,maintext.y+5, "You pushed your way through the stench of smoke and molten metal to view the wares of the smithy. A few pieces of equipment laid out for sale in front of you, the large rumped kobold (Yes, large even for a kobold, who notoriously have dumptruck asses by default) shooting a glance towards you as she worked. \n\n\"If you've got the coin for them, feel free to purchase any of that stuff. Just don't expect it to be around for long, good equipments always in need somewhere.\"" , 16 ,maintext.sprite_width-32);
}
if (action1.scene = 19){
	draw_text_ext(maintext.x+16,maintext.y+5, "As Selvata pulls back from draining your might, the two of you hear a ripping sound, and Selvata's face flushes with crimson, though you're not sure if that's from your blood or her own. Looking down you notice her holding her top, her hands holding the fabric to her bust and squishing into it, a rather obvious tear in the center of the robe.\n\n\"Goodness, I hadn't quite realised how large I was getting...not that I'm complaining. Though I am going to need to see to enchanting these robes if I want to keep myself decent.\"" , 16 ,maintext.sprite_width-32);
}
if (action1.scene = 20){
	draw_text_ext(maintext.x+16,maintext.y+5, "As she finished her meal, Selvata groaned softly. The fabric of her top likewise protesting as it struggled to hold her huge breasts in. Before, all too suddenly, it snapped, her breasts flopping free from its confines, her large areola and nipples on full display as she let out a sigh of relief\n\n\"Phew, even with the enchantments that was starting to get tight...guess I'm going topless now, though, I doubt anyone will mind the view. Speaking of which\"\n\nShe saunters over towards the door, grabbing her idols along the way and stuffing them into her cleavage, her huge breasts pressing against the frame\n\n\"I think I've outgrown the need for this room. Though, I would certainly appreciate some help getting out~\"\n\nYou didn't need much more encouragement to help the vampire out, working to help push those plush mounds out bit by bit, the red of her bloated breasts matched by that in your cheeks as you worked away at helping her through. The experience was all too short though, and soon you'd helped to push her through the doorway proper. Before you could speak, she grabbed ahold of your hand and pressed it against the softness of her bare breast.\n\n\"Don't worry, I'll still be around, I think I'll just be spending a bit more time in the open, near where we first met...do feel free to come and experience the beauty you've helped create.\"" , 16 ,maintext.sprite_width-32);
}
if (action1.scene = 21){
	draw_text_ext(maintext.x+16,maintext.y+5, "As she finished draining your energy, Selvata gasped, an ominous creaking coming from the walls surrounding her. Selvata's breasts were now wedged in between the inn and the apothecary, pressing onto either side. She looked into your eyes, a hint of worry in her own, but it was drowned out by something else. Excitement.\n\n\"You should probably get some people to help me out from here...or these buildings are going to go the way of my top\"\n\nYou were hurrying off to fetch some of the townsfolk to help before she'd even finished. As hot as it would be to watch the vampire's breasts smother the nearby buildings, they were kind of both really important to an adventurer like yourself.\n\nOnce you'd gathered up the townsfolk, it was Elena who proved to be most useful to moving Selvata from between the buildings. Not only did her strength make her capable of pushing Selvata through with an ease you hadn't expect. But she had some potions which acted as a lubricant and reinforcement to help the buildings survive the ordeal mostly unscathed. Despite that, Selvata took some pride in the bits of damage that she'd caused, speaking to you eagerly once she'd been repositioned a bit out from the town, away from the confines of the buildings.\n\n\"Can you believe it? I'm so huge I'm a danger to houses with just the sheer size of my breasts alone...I want to go bigger! Don't worry, I'll make sure to keep my distance from the houses, I don't want to cause a panic just...make sure to come back and feed me more soon.\"" , 16 ,maintext.sprite_width-32);
}
if (action1.scene = 3){
	if (selvatapush = false){
		if (bust < 15){
			if (inroom = false){
	draw_text_ext(maintext.x+16,maintext.y+5, "You walk over into Selvata's room in the inn. The vampire sitting on the bed, looking towards you and smiling as she licks her lips eagerly. As she stands up, her " +string(bust) +" inch bust bounces slightly, a sultry sway to her hips as she saunters over to you.\n\n\"So what brings you back around here, going to treat me again?\"" , 16 ,maintext.sprite_width-32);
			}
			else{
			draw_text_ext(maintext.x+16,maintext.y+5, "Selvata smiles happily towards you.\n\n\"So, is there anything else you'd want to do?\"" , 16 ,maintext.sprite_width-32);	
			}
		}
		else {
			if (inroom = false){
	draw_text_ext(maintext.x+16,maintext.y+5, "You make your way into Selvata's room, the vampire's breasts bouncing quite obviously as she hops up from the bed, the enchantment upon her robe doing a good job of keeping it intact as her "+string(bust)+ " inch breasts heave in the too tight top. Each step she takes causes her bust to jiggle as you watched her move, somewhat stunned by her allure.\n\n\"Why hello there~ What is your desire today\"" , 16 ,maintext.sprite_width-32);	
			}
			else {
			draw_text_ext(maintext.x+16,maintext.y+5, "Selvata grins wide, resting her hands atop her breasts and rubbing them idly as she squeezes her huge boobs together with her arms.\n\n\"Anything else that you would desire~?\"" , 16 ,maintext.sprite_width-32);	
			}
		}
	}
	else {
		if (selvatabig = false){
			if (bust < 100)	{
				if (inroom = false){
				draw_text_ext(maintext.x+16,maintext.y+5, "You make your way over to the overly buxom cow in the passage between the two buildings, the vampire leaning over slightly to give you a better view of her considerable cleavage, her "+ string(feet) +"'"+ string(tempbust)+"\" bust wobbling about as she teased.\n\n\"About time you came on over~ So, are you going to help me grow even bigger, or would you rather something else first?\"" , 16 ,maintext.sprite_width-32);	
				}
				else{
				draw_text_ext(maintext.x+16,maintext.y+5, "You wiggle your way out from the embrace of Selvata's deep cleavage, causing her massive breasts to wobble about as you get out from between them.\n\n\"Sure you don't wanna squeeze back in here for anything?\"" , 16 ,maintext.sprite_width-32);	
				}
			}
			else {
				if (inroom = false){
				draw_text_ext(maintext.x+16,maintext.y+5, "As you made your way towards Selvata, she drummed upon her breasts excitedly with her hands. Her "+string(feet) +"'"+ string(tempbust)+"\" bust wobbling all the while. It didn't escape your notice that her breasts now constantly pressed against the ground. It was fortunate that the might she'd drained from you kept her mobile with those breasts, otherwise she'd be quite firmly pinned there by her bosom. As though she'd heard your thoughts, she took a step forward when you were close to her bust, nearly knocking you over with her titanic tits.\n\n\"Oops~ Sorry about that, I forget my own size sometimes...though I wouldn't mind having even more size to throw about...~\"" , 16 ,maintext.sprite_width-32);	
				}
				else{
				draw_text_ext(maintext.x+16,maintext.y+5, "You have to wait for her to part her cleavage so that you can get out from her breasts, just as you're about to leave her cavernous cleavage she pressed them back together again.\n\n\"Before you go...do you want to do anything else?\"" , 16 ,maintext.sprite_width-32);	
				}
			}
		}
		else{
			if (bust < 2000) {
			if (inroom = false){
			draw_text_ext(maintext.x+16,maintext.y+5, "You approached the looming bosom of Selvata, having to make the choice to either press your way in between her immense "+string(feet) +"'"+ string(tempbust)+"\" bust, or take the long way around. The choice was obvious, the softness of her bosom too inviting to refuse. After a while of being smothered between those massive mammaries, you came face to face with the vampire herself, the cow giggling as she pressed her breasts around you for good measure.\n\n\"I was wondering how long you were going to take getting through my girls~. I'm glad that you're here now, though what do you desire from this trek?\"" , 16 ,maintext.sprite_width-32);	
			}
			else{
			draw_text_ext(maintext.x+16,maintext.y+5, "As you go to head back towards the town proper, she presses her breasts against you, keeping you in place a moment.\n\n\"Just want to make sure you don't need anything else before you head back to town, It is a bit of a trip after all.\"" , 16 ,maintext.sprite_width-32);	
			}
			}
			else {
			if (bust < 787402){
			if (inroom = false){
				if (bust < 63360)
				{
				bustmeasure = string(feet) +"'"+ string(tempbust)+"\"";
				bustmeasuretype = "feet";
				}
				else{
				bustmeasure = bust/63360;
				bustmeasuretype = "miles";
				}
			draw_text_ext(maintext.x+16,maintext.y+5, "You make the lengthy trek to Selvata proper, climbing the vast mountainous mammaries that she proudly wobbled as you moved, causing you to have to hold on to the grand softness of the cow. It was hard to gauge how huge she was now, so you had to trust her sense as to how gigantic she'd gotten. The last time you'd asked her she'd proudly proclaimed her bust was " +string(bustmeasure)+" "+string(bustmeasuretype)+" big. As you'd almost finished the climb across Selvata's immense bosom, you were greeted with her giggle, which nearly caused you to lose your footing as her breasts jiggled about from it.\n\n\"A pleasure to see you again, I hope that the softness of the journey made up for its length\"\n\nShe grinned, patting her breasts proudly, before pulling you into a hug.\n\n\"So what brings this adorable adventurer to travel upon my mountains?\"" , 16 ,maintext.sprite_width-32);	
			}
			else{
			draw_text_ext(maintext.x+16,maintext.y+5, "As you look back towards the town, the sheer vastness of Selvata's breasts and the distance you have to travel back to town dawns on you. You'd better make sure you've done all you need to before you make the trek back." , 16 ,maintext.sprite_width-32);	
			}
			}
			else{
			if (bust < 158400000){
			bustmeasure = bust/63360;
			bustmeasuretype = "miles"; //Selvata larger than any mountain
			if (inroom = false){
			draw_text_ext(maintext.x+16,maintext.y+5, "Thanks to Selvata's breasts being larger than any mountain, she's deigned to assist you in your journey over her more-than-mountainous bosom. Using a mixture of the bounce of her "+string(bustmeasure)+" "+string(bustmeasuretype)+ " breasts and her magic (Mainly magic if were being honest) she helps to bring you over to herself, giggling as you come to rest at the base of her cleavage.\n\n\"I take it you enjoyed the trip dear~? Now...what brings you to my domain?\"\n\nHer words hum faintly with power as she speaks, reverberating around you. You're not sure if this is due to her growing power, or an echo caused by having so much boob surrounding you." , 16 ,maintext.sprite_width-32);
			}
			else{
			draw_text_ext(maintext.x+16,maintext.y+5, "Placeholder text for when Selvata's tits are bigger than any mountain. They are "+string(bustmeasure)+" "+string(bustmeasuretype)+" big." , 16 ,maintext.sprite_width-32);	
			}
			}
			else{
			if (bust < 1577727360){
			bustmeasure = bust/63360;
			bustmeasuretype = "miles"; //Selvata's tits have reached the size of continents
			if (inroom = false){
			draw_text_ext(maintext.x+16,maintext.y+5, "Placeholder text for when Selvata's tits are large enough to be considered a continent. They are "+string(bustmeasure)+" "+string(bustmeasuretype)+" big." , 16 ,maintext.sprite_width-32);
			}
			else{
			draw_text_ext(maintext.x+16,maintext.y+5, "Placeholder text for when Selvata's tits are large enough to be considered a continent. They are "+string(bustmeasure)+" "+string(bustmeasuretype)+" big." , 16 ,maintext.sprite_width-32);	
			}
			}
			else{
			if (bust < 234400000000000){
			bustmeasure = bust/1577727360;
			bustmeasuretype = "Earth's";
			if (inroom = false){
			draw_text_ext(maintext.x+16,maintext.y+5, "Placeholder text for when Selvata's tits are bigger than Earth. They are "+string(bustmeasure)+" "+string(bustmeasuretype)+" big." , 16 ,maintext.sprite_width-32);
			}
			else{
			draw_text_ext(maintext.x+16,maintext.y+5, "Placeholder text for when Selvata's tits are bigger than Earth. They are "+string(bustmeasure)+" "+string(bustmeasuretype)+" big." , 16 ,maintext.sprite_width-32);	
			}
			}
			else{
			if (bust < 372500000000000000){
			bustmeasure = bust/234400000000000;
			bustmeasuretype = "Solar system's"; 
			//Nebula size
		  //bustmeasure = bust/372500000000000000;
			if (inroom = false){
			draw_text_ext(maintext.x+16,maintext.y+5, "Placeholder text for when Selvata's tits are bigger than the solar system. They are "+string(bustmeasure)+" "+string(bustmeasuretype)+" big." , 16 ,maintext.sprite_width-32);
			}
			else{
			draw_text_ext(maintext.x+16,maintext.y+5, "Placeholder text for when Selvata's tits are bigger than the solar system. They are "+string(bustmeasure)+" "+string(bustmeasuretype)+" big." , 16 ,maintext.sprite_width-32);	
			}
			}
			else{
			if (bust < 34670000000000000000000000000){
			bustmeasure = bust/58790000000000000000000;
			bustmeasuretype = "Galaxies"; 
			if (inroom = false){
			draw_text_ext(maintext.x+16,maintext.y+5, "Placeholder text for when Selvata's tits are bigger than the milky way (Note to self: Make joke about how they're milkier too in actual text). They are "+string(bustmeasure)+" "+string(bustmeasuretype)+" big." , 16 ,maintext.sprite_width-32);
			}
			else{
			draw_text_ext(maintext.x+16,maintext.y+5, "Placeholder text for when Selvata's tits are bigger than the milky way (Note to self: Make joke about how they're milkier too in actual text). They are "+string(bustmeasure)+" "+string(bustmeasuretype)+" big." , 16 ,maintext.sprite_width-32);	
			}
			}
			else{
			//Galactic supercluster size
		  //bustmeasure = bust/37240000000000000000000000;
			bustmeasure = bust/34670000000000000000000000000;
			bustmeasuretype = "Universes"; 
			if (inroom = false){
			draw_text_ext(maintext.x+16,maintext.y+5, "Placeholder text for when Selvata's tits are bigger than everything. They are "+string(bustmeasure)+" "+string(bustmeasuretype)+" big." , 16 ,maintext.sprite_width-32);
			}
			else{
			draw_text_ext(maintext.x+16,maintext.y+5, "Placeholder text for when Selvata's tits are bigger than everything. They are "+string(bustmeasure)+" "+string(bustmeasuretype)+" big." , 16 ,maintext.sprite_width-32);	
			}	
			}
			}
			}
			}
			}
			}
			
			}
		}
		
	}
}
if (action1.scene = 7){
	if (exploss = 0){
	draw_text_ext(maintext.x+16,maintext.y+5, "As you offer to let her feed upon you, Selvata giggles, looking you over.\n\n\"Don't be silly, you and I both know that you don't have anymore strength to give. While I might want more, I'm not so greedy as to drain you to a husk over it.\"\n\nShe leans in to your neck, as though to bite it, before just giving you a teasing nibble, taking care to ensure her fangs don't properly penetrate your skin.\n\n\"But if you want to feel my fangs upon you, I suppose I can give you this little tease for when you feed me next. Now...get out there, regain some of your power, and I'll be glad to take it when you return~\"" , 16 ,maintext.sprite_width-32)
	}
	else {
	if (bustgain = 0){
		if (bust < 12){
		draw_text_ext(maintext.x+16,maintext.y+5, "Selvata leans in close, embracing you as she sinks her fangs into your neck, siphoning away what little strength you'd gathered through your adventures as her " +string(bust) +" inch bust presses against your chest. Once she's done, she lets out a slightly disappointed sigh, cupping her chest with her hands.\n\n\"I guess it gave them a little bit of a boost, but it's definitely not significant enough for me to see it\"\n\nShe lets out another soft sigh.\n\n\"Ah well, I should be thanking you for the meal regardless, it was delicious, though I am still a bit hungry~\"" , 16 ,maintext.sprite_width-32);	
		}
		else {
			if (bust < 100) {
			draw_text_ext(maintext.x+16,maintext.y+5, "Selvata moves in to sink her fangs into your neck, the cow not even needing to try to have her breasts press against you now, it was simply a natural consequence of the size of her " +string(bust) +" inch bosom. She didn't take long to drain you of the small amount of strength you'd gained, patting her breasts proudly.\n\n\"I don't really think that they grew at all, but it could be I'm just too big to notice the small gains now\"" , 16 ,maintext.sprite_width-32);	
			}
			else {
			draw_text_ext(maintext.x+16,maintext.y+5, "Selvata presses her immense breasts around you, the huge mounds of tit pressing against you from all sides as she sank her fangs into your neck. You knew that this wouldn't be enough for her to notice any gains to her titanic tits, she knew too, but it was still a pleasant experience to be buried in between her bountiful bosom as she drained you of what little excess power that you had." , 16 ,maintext.sprite_width-32);	
			}
		}
	}
	else {
	if (bust < 10){
	selvatabust = "As she drains you of your strength, you feel her pressing her bust against you. While somewhat modest in size, it was becoming increasingly less so as you felt her bosom swell a full " +string(bustgain)+ " inches, the soft, squishy titfat pressing more and more against you. The vampire only stopping once you'd been fully drained of the strength you'd gained, stepping back a bit and giving you a generous view of her now " +string(bust) +" inch bust."
	}
	else {
		if (bust < 60){
		selvatabust = "You can feel her breasts swelling against you as she drains you of your might, her embrace keeping you held close to her so her bulging bosom doesn't push you away. Her bust just kept getting bigger and softer as she drank from you. " +string(bustgain) + " inches piled onto her chest, bulging her bosom out to a hefty " +string(bust) + " inches, all pressing against you as she held you there for a few moments, licking her lips as she savoured the aftermath of her feeding."
		}
		else {
		if (bust < 200){
		selvatabust = "She held you in between her huge breasts as she fed upon you, letting you feel every inch that they gained as they grew bigger and bigger around you. It was hard to tell how much she gained while you were between her huge breasts, only that she was growing bigger, softer, bustier. It was only once she released you from the confines of her cleavage that you could see the full impact you'd had on her figure. Her bust having gained " +string(bustgain) + " inches, bringing her huge bust up to a massive " +string(feet) +"'"+ string(tempbust)+"\" feet out from her chest.";
		}
		else{
			if (bust < 63360)
				{
				bustmeasure = string(feet) +"'"+ string(tempbust)+"\"";
				bustmeasuretype = "feet";
				}
				else{
				bustmeasure = bust/63360;
				bustmeasuretype = "miles";
				}
		if (bustgain < (bust/2)){
		selvatabust = "Selvata embraced you in the vast sea of softness that was her bosom. You lost all sense of grounding as her bulging bosom swept you off your feet, carrying you within it's expanse, Selvata's arms the only thing anchoring you from being swept away between the wobbling masses. The vampire feeding until her thirst was sated, before releasing you from her embrace, using her hands instead to keep her breasts still so you could rest between them as she recounted her gains. Since you had no way of seeing them yourself with how immense she'd become.\n\n\"Can you believe that my boobs have gotten this big~? " +string(bustmeasure) +" "+string(bustmeasuretype)+ " of my big soft bosom. All mine...every inch of it, especially the " + string(bustgain) + " you just helped me gain. I know that might sounds small when compared to all this\"\n\nShe gestures towards her absolutely immense breasts, a gesture that was somewhat lost on you given that it was impossible to see the full expanse of them from here.\n\n\"But I truly mean it, every little bit you can give me is greatly appreciated. After all, it all adds up into this wonderfully bountiful bosom~\""
		}
		else{
		selvatabust = "Selvata embraced you in the vast sea of softness that was her bosom. You lost all sense of grounding as her bulging bosom swept you off your feet, carrying you within it's expanse, Selvata's arms the only thing anchoring you from being swept away between the wobbling masses. The vampire feeding until her thirst was sated, before releasing you from her embrace, using her hands instead to keep her breasts still so you could rest between them as she recounted her gains. Since you had no way of seeing them yourself with how immense she'd become.\n\n\"Can you believe that my boobs have gotten this big~? " +string(bustmeasure) +" "+string(bustmeasuretype)+ " of my big soft bosom. All mine...every inch of it, especially the " + string(bustgain) + " you just helped me gain. There's so much more of me now. I didn't even think I still had so much that I could gain, but-\"\nShe presses her hands into her breasts, squeezing them and causing them to press up all around you, untold tons of soft vampire tit pressing against you from all sides\n\"-I'm so glad to find that I can go so much larger. Keep making my bosom bulge bigger dear, until everything is buried under my bust~\""
		}
		}
		} 
	}
	if (bustgain < 6){
	drainingbust = "Selvata leans in slowly, sensually as you offer her your strength, her lips grazing your neck, fangs delicately brushing along it, before she gently sinks them in. The vampire quietly drinking from you as she embraces you, taking her time savoring the meal that you have given her so freely."	
	}
	else{
	 if (bustgain < 20){
	drainingbust = "Selvata gazes hungrily at you as you offer her your power, licking her lips briefly before leaning in and sinking her fangs into your neck. The buxom vampire draining you a little too fast at first, but she soon slows down, pacing herself with her meal." 
	 }
	 else 
	 if (bustgain < 60){
	drainingbust = "Selvata leans in towards your neck, sinking her fangs in eagerly as you offer to feed her. The vampire letting out small moo's of pleasure ocassionally as she drank from you, far more soft and quiet than you would expect a cow to make, but it was nice to know she was enjoying her feast so thoroughly."
	 }
	 else {
	if (bustgain < 120){
	drainingbust = "Selvata can barely contain her excitement as you offer to let her feed upon you. The vampire sinking her fangs into your neck with a ravenous hunger, taking long deep gulps of your might into her body. It's a good thing you had so much strength to give her, otherwise you'd be worried about her draining more than just what you'd gained."
	}
	else {
	drainingbust = "The moment that you gave her permission to drain you, you felt her fangs sinking into your throat. She drank deep and greedily from you, her bust bulging out bigger with each gulp that she took. You'd offered her a veritable feast of your power, and when it came to that, it seemed she was quite a glutton."
	}
	 }
	}
	draw_text_ext(maintext.x+16,maintext.y+5, string(drainingbust) +"\n\n"+ string(selvatabust) , 16 ,maintext.sprite_width-32);
			
		}
	}
}
// Text bra copypaste draw_text_ext(maintext.x+16,maintext.y+5, " " , 16 ,maintext.sprite_width-32);