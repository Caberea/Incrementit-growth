/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6 && counter_healthmult.amount > 0) {
	if (Toggle1.oncheck = true){
counter_healthmult.amount--;
counter_healthmult.cost = round(4+((counter_healthmult.amount*4)*(1+counter_healthmult.amount)*(1+round(counter_healthmult.amount/6)*2)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_healthmult.cost;
counter_healthmult.buffvalue = counter_healthmult.buffvalue - 5;
	}
	else{
	if (Toggle10.oncheck = true){
		if (counter_healthmult.amount < 10){
		check = 10 - counter_healthmult.amount;
		}
		else {
		check = 0	
		}
		while (check < 10){
		counter_healthmult.amount--;
counter_healthmult.cost = round(4+((counter_healthmult.amount*4)*(1+counter_healthmult.amount)*(1+round(counter_healthmult.amount/6)*2)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_healthmult.cost;
counter_healthmult.buffvalue = counter_healthmult.buffvalue - 5;
		check++;
		}
		Toggle10.tencheck()
	}
	if (Toggle100.oncheck = true){
		if (counter_healthmult.amount < 100){
		check = 100 - counter_healthmult.amount;
		}
		else {
		check = 0	
		}
		while (check < 100){
		counter_healthmult.amount--;
counter_healthmult.cost = round(4+((counter_healthmult.amount*4)*(1+counter_healthmult.amount)*(1+round(counter_healthmult.amount/6)*2)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_healthmult.cost;
counter_healthmult.buffvalue = counter_healthmult.buffvalue - 5;
		check++;
		}
		Toggle100.hundredcheck()
	}
	if (Toggle1k.oncheck = true){
		if (counter_healthmult.amount < 1000){
		check = 1000 - counter_healthmult.amount;
		}
		else {
		check = 0	
		}
		while (check < 1000){
		counter_healthmult.amount--;
counter_healthmult.cost = round(4+((counter_healthmult.amount*4)*(1+counter_healthmult.amount)*(1+round(counter_healthmult.amount/6)*2)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_healthmult.cost;
counter_healthmult.buffvalue = counter_healthmult.buffvalue - 5;
		check++;
		}
		Toggle1k.thousandcheck()
	}
	if (ToggleMax.oncheck = true){
		if (counter_healthmult.amount < 10000){
		check = 10000 - counter_healthmult.amount;
		}
		else {
		check = 0	
		}
		while (check < 10000){
		counter_healthmult.amount--;
counter_healthmult.cost = round(4+((counter_healthmult.amount*4)*(1+counter_healthmult.amount)*(1+round(counter_healthmult.amount/6)*2)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_healthmult.cost;
counter_healthmult.buffvalue = counter_healthmult.buffvalue - 5;
		check++;
		}
		ToggleMax.bigcheck()
	}
	}
	
maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
if (health > maintext.maxhealth){
health = maintext.maxhealth;	
}
}