/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 5)
{
if (action1.itemtype = 0){
		maintext.weaponattack = action1.itematk;
		maintext.weaponhits = action1.itemweaponhits;
		maintext.weapontime = action1.itemweapontime;
		action1.dropchance = 0;
		maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
}
if (action1.itemtype = 1){
	maintext.headdef = action1.itemdef;
	maintext.headhp = action1.itemhp;
	maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
				maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
	action1.dropchance = 0;
}
if (action1.itemtype = 2){
	maintext.chestdef = action1.itemdef;
	maintext.chesthp = action1.itemhp;
	maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
				maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
	action1.dropchance = 0;
}
if (action1.itemtype = 3){
	maintext.glovesdef = action1.itemdef;
	maintext.gloveshp = action1.itemhp;
	maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
				maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
	action1.dropchance = 0;
}
if (action1.itemtype = 4){
	maintext.legsdef = action1.itemdef;
	maintext.legshp = action1.itemhp;
	maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
				maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
	action1.dropchance = 0;
}
	action1.scene = 0;
	if (maintext.atk > 9999999999){
		maintext.atk = 9999999999;	
		}
		if (maintext.def > 9999999999){
		maintext.def = 9999999999;	
		}
		if (maintext.maxhealth > 99999999999){
		maintext.maxhealth = 99999999999;	
		}
		if (health> maintext.maxhealth){
		health = maintext.maxhealth;	
		}
}

