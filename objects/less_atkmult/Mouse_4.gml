/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6 && counter_atkmult.amount > 0) {
	if (Toggle1.oncheck = true){
counter_atkmult.amount--;
counter_atkmult.cost=	round(5+((counter_atkmult.amount*5)*(1+counter_atkmult.amount)*(1+round(counter_atkmult.amount/5)*4)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_atkmult.cost;
counter_atkmult.buffvalue = counter_atkmult.buffvalue - 5;
	}
	else {
	if (Toggle10.oncheck = true){
		if (counter_atkmult.amount < 10){
		check = 10 - counter_atkmult.amount;
		}
		else {
		check = 0	
		}
	while (check < 10){
	counter_atkmult.amount--;
	counter_atkmult.cost=	round(5+((counter_atkmult.amount*5)*(1+counter_atkmult.amount)*(1+round(counter_atkmult.amount/5)*4)));
	obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_atkmult.cost;
	counter_atkmult.buffvalue = counter_atkmult.buffvalue - 5;
	check++;
	}
	Toggle10.tencheck()
	}
	if (Toggle100.oncheck = true){
		if (counter_atkmult.amount < 100){
		check = 100 - counter_atkmult.amount;
		}
		else {
		check = 0	
		}
	while (check < 100){
	counter_atkmult.amount--;
	counter_atkmult.cost=	round(5+((counter_atkmult.amount*5)*(1+counter_atkmult.amount)*(1+round(counter_atkmult.amount/5)*4)));
	obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_atkmult.cost;
	counter_atkmult.buffvalue = counter_atkmult.buffvalue - 5;
	check++;
	}
	Toggle100.hundredcheck()
	}
	if (Toggle1k.oncheck = true){
		if (counter_atkmult.amount < 1000){
		check = 1000 - counter_atkmult.amount;
		}
		else {
		check = 0	
		}
	while (check < 1000){
	counter_atkmult.amount--;
	counter_atkmult.cost=	round(5+((counter_atkmult.amount*5)*(1+counter_atkmult.amount)*(1+round(counter_atkmult.amount/5)*4)));
	obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_atkmult.cost;
	counter_atkmult.buffvalue = counter_atkmult.buffvalue - 5;
	check++;
	}
	Toggle1k.thousandcheck()
	}
	if (ToggleMax.oncheck = true){
		if (counter_atkmult.amount < 10000){
		check = 10000 - counter_atkmult.amount;
		}
		else {
		check = 0	
		}
	while (check < 10000){
	counter_atkmult.amount--;
	counter_atkmult.cost=	round(5+((counter_atkmult.amount*5)*(1+counter_atkmult.amount)*(1+round(counter_atkmult.amount/5)*4)));
	obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_atkmult.cost;
	counter_atkmult.buffvalue = counter_atkmult.buffvalue - 5;
	check++;
	}
	ToggleMax.bigcheck()
	}
	}
//maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
			maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
//			maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
}