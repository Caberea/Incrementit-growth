/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6 && counter_basedef.amount > 0) {
	if (Toggle1.oncheck = true){
	counter_basedef.buffvalue = counter_basedef.buffvalue - (1*counter_basedef.amount);
	counter_basedef.amount--;
	counter_basedef.cost = round(1+((counter_basedef.amount*2)*(1+round(counter_basedef.amount/5)*3)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_basedef.cost;
	}
	else{
	if (Toggle10.oncheck = true){
		if (counter_basedef.amount < 10){
		check = 10 - counter_basedef.amount;
		}
		else {
		check = 0	
		}
		while (check < 10){
		counter_basedef.buffvalue = counter_basedef.buffvalue - (1*counter_basedef.amount);
		counter_basedef.amount--;
		counter_basedef.cost = round(1+((counter_basedef.amount*2)*(1+round(counter_basedef.amount/5)*3)));
		obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_basedef.cost;
		check++;
		}
		Toggle10.tencheck()
	}
	if (Toggle100.oncheck = true){
		if (counter_basedef.amount < 100){
		check = 100 - counter_basedef.amount;
		}
		else {
		check = 0	
		}
		while (check < 100){
		counter_basedef.buffvalue = counter_basedef.buffvalue - (1*counter_basedef.amount);
		counter_basedef.amount--;
		counter_basedef.cost = round(1+((counter_basedef.amount*2)*(1+round(counter_basedef.amount/5)*3)));
		obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_basedef.cost;
		check++;
		}
		Toggle100.hundredcheck()
	}
	if (Toggle1k.oncheck = true){
		if (counter_basedef.amount < 1000){
		check = 1000 - counter_basedef.amount;
		}
		else {
		check = 0	
		}
		while (check < 1000){
		counter_basedef.buffvalue = counter_basedef.buffvalue - (1*counter_basedef.amount);
		counter_basedef.amount--;
		counter_basedef.cost = round(1+((counter_basedef.amount*2)*(1+round(counter_basedef.amount/5)*3)));
		obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_basedef.cost;
		check++;
		}
		Toggle1k.thousandcheck()
	}
	if (ToggleMax.oncheck = true){
		if (counter_basedef.amount < 10000){
		check = 10000 - counter_basedef.amount;
		}
		else {
		check = 0	
		}
		while (check < 10000){
		counter_basedef.buffvalue = counter_basedef.buffvalue - (1*counter_basedef.amount);
		counter_basedef.amount--;
		counter_basedef.cost = round(1+((counter_basedef.amount*2)*(1+round(counter_basedef.amount/5)*3)));
		obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_basedef.cost;
		check++;
		}
		ToggleMax.bigcheck()
	}
	}
	
maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
}