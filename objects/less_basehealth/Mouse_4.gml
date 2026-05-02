/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6 && counter_basehealth.amount > 0) {
	if (Toggle1.oncheck = true){
counter_basehealth.buffvalue = counter_basehealth.buffvalue - (2*counter_basehealth.amount);
counter_basehealth.amount--;
counter_basehealth.cost = round(1+(counter_basehealth.amount*(1+round(counter_basehealth.amount/6)*2)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_basehealth.cost;
	}
	else{
	if (Toggle10.oncheck = true){
		if (counter_basehealth.amount < 10){
		check = 10 - counter_basehealth.amount;
		}
		else {
		check = 0	
		}
		while (check < 10){
		counter_basehealth.buffvalue = counter_basehealth.buffvalue - (2*counter_basehealth.amount);
counter_basehealth.amount--;
counter_basehealth.cost = round(1+(counter_basehealth.amount*(1+round(counter_basehealth.amount/6)*2)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_basehealth.cost;
		check++;
		}
		Toggle10.tencheck()
	}
	if (Toggle100.oncheck = true){
		if (counter_basehealth.amount < 100){
		check = 100 - counter_basehealth.amount;
		}
		else {
		check = 0	
		}
		while (check < 100){
		counter_basehealth.buffvalue = counter_basehealth.buffvalue - (2*counter_basehealth.amount);
counter_basehealth.amount--;
counter_basehealth.cost = round(1+(counter_basehealth.amount*(1+round(counter_basehealth.amount/6)*2)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_basehealth.cost;
		check++;
		}
		Toggle100.hundredcheck()
	}
	if (Toggle1k.oncheck = true){
		if (counter_basehealth.amount < 1000){
		check = 1000 - counter_basehealth.amount;
		}
		else {
		check = 0	
		}
		while (check < 1000){
		counter_basehealth.buffvalue = counter_basehealth.buffvalue - (2*counter_basehealth.amount);
counter_basehealth.amount--;
counter_basehealth.cost = round(1+(counter_basehealth.amount*(1+round(counter_basehealth.amount/6)*2)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_basehealth.cost;
		check++;
		}
		Toggle1k.thousandcheck()
	}
	if (ToggleMax.oncheck = true){
		if (counter_basehealth.amount < 10000){
		check = 10000 - counter_basehealth.amount;
		}
		else {
		check = 0	
		}
		while (check < 10000){
		counter_basehealth.buffvalue = counter_basehealth.buffvalue - (2*counter_basehealth.amount);
counter_basehealth.amount--;
counter_basehealth.cost = round(1+(counter_basehealth.amount*(1+round(counter_basehealth.amount/6)*2)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_basehealth.cost;
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