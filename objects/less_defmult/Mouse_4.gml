/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6 && counter_defmult.amount > 0) {
	if (Toggle1.oncheck = true){
counter_defmult.amount--;
counter_defmult.cost = round(5+((counter_defmult.amount*5)*(1+counter_defmult.amount)*(1+round(counter_defmult.amount/5)*3)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_defmult.cost;
counter_defmult.buffvalue = counter_defmult.buffvalue - 5;
	}
	else{
	if (Toggle10.oncheck = true){
		if (counter_defmult.amount < 10){
		check = 10 - counter_defmult.amount;
		}
		else {
		check = 0	
		}
		while (check < 10){
		counter_defmult.amount--;
counter_defmult.cost = round(5+((counter_defmult.amount*5)*(1+counter_defmult.amount)*(1+round(counter_defmult.amount/5)*3)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_defmult.cost;
counter_defmult.buffvalue = counter_defmult.buffvalue - 5;
		check++;
		}
		Toggle10.tencheck()
	}
	if (Toggle100.oncheck = true){
		if (counter_defmult.amount < 100){
		check = 100 - counter_defmult.amount;
		}
		else {
		check = 0	
		}
		while (check < 100){
		counter_defmult.amount--;
counter_defmult.cost = round(5+((counter_defmult.amount*5)*(1+counter_defmult.amount)*(1+round(counter_defmult.amount/5)*3)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_defmult.cost;
counter_defmult.buffvalue = counter_defmult.buffvalue - 5;
		check++;
		}
		Toggle100.hundredcheck()
	}
	if (Toggle1k.oncheck = true){
		if (counter_defmult.amount < 1000){
		check = 1000 - counter_defmult.amount;
		}
		else {
		check = 0	
		}
		while (check < 1000){
		counter_defmult.amount--;
counter_defmult.cost = round(5+((counter_defmult.amount*5)*(1+counter_defmult.amount)*(1+round(counter_defmult.amount/5)*3)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_defmult.cost;
counter_defmult.buffvalue = counter_defmult.buffvalue - 5;
		check++;
		}
		Toggle1k.thousandcheck()
	}
	if (ToggleMax.oncheck = true){
		if (counter_defmult.amount < 10000){
		check = 10000 - counter_defmult.amount;
		}
		else {
		check = 0	
		}
		while (check < 10000){
		counter_defmult.amount--;
counter_defmult.cost = round(5+((counter_defmult.amount*5)*(1+counter_defmult.amount)*(1+round(counter_defmult.amount/5)*3)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_defmult.cost;
counter_defmult.buffvalue = counter_defmult.buffvalue - 5;
		check++;
		}
		ToggleMax.bigcheck()
	}
	}

maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
}