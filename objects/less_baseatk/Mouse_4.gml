/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6 && counter_baseatk.amount > 0) {
	if (Toggle1.oncheck = true){
	counter_baseatk.buffvalue = counter_baseatk.buffvalue - (1*counter_baseatk.amount);
	counter_baseatk.amount--;
	counter_baseatk.cost = round(2+((counter_baseatk.amount*2)*(1+round(counter_baseatk.amount/4)*3)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_baseatk.cost;
	}
	else {
	if (Toggle10.oncheck = true){
		if (counter_baseatk.amount < 10){
		check = 10 - counter_baseatk.amount;
		}
		else {
		check = 0	
		}
	while (check < 10){
	counter_baseatk.buffvalue = counter_baseatk.buffvalue - (1*counter_baseatk.amount);
	counter_baseatk.amount--;
	counter_baseatk.cost = round(2+((counter_baseatk.amount*2)*(1+round(counter_baseatk.amount/4)*3)));
	obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_baseatk.cost;
	check++;
	}
	Toggle10.tencheck()
	}
	if (Toggle100.oncheck = true){
		if (counter_baseatk.amount < 100){
		check = 100 - counter_baseatk.amount;
		}
		else {
		check = 0	
		}
	while (check < 100){
	counter_baseatk.buffvalue = counter_baseatk.buffvalue - (1*counter_baseatk.amount);
	counter_baseatk.amount--;
	counter_baseatk.cost = round(2+((counter_baseatk.amount*2)*(1+round(counter_baseatk.amount/4)*3)));
	obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_baseatk.cost;
	check++;
	}
	Toggle100.hundredcheck()
	}
	if (Toggle1k.oncheck = true){
		if (counter_baseatk.amount < 1000){
		check = 1000 - counter_baseatk.amount;
		}
		else {
		check = 0	
		}
	while (check < 1000){
	counter_baseatk.buffvalue = counter_baseatk.buffvalue - (1*counter_baseatk.amount);
	counter_baseatk.amount--;
	counter_baseatk.cost = round(2+((counter_baseatk.amount*2)*(1+round(counter_baseatk.amount/4)*3)));
	obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_baseatk.cost;
	check++;
	}
	Toggle1k.thousandcheck()
	}
	if (ToggleMax.oncheck = true){
		if (counter_baseatk.amount < 10000){
		check = 10000 - counter_baseatk.amount;
		}
		else {
		check = 0	
		}
	while (check < 10000){
	counter_baseatk.buffvalue = counter_baseatk.buffvalue - (1*counter_baseatk.amount);
	counter_baseatk.amount--;
	counter_baseatk.cost = round(2+((counter_baseatk.amount*2)*(1+round(counter_baseatk.amount/4)*3)));
	obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_baseatk.cost;
	check++;
	}
	ToggleMax.bigcheck()
	}
	}
//maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
}