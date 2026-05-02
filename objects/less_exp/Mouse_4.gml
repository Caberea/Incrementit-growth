/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6 && counter_exp.amount > 0) {
	if (Toggle1.oncheck = true){
counter_exp.amount--;
counter_exp.cost = 1+(counter_exp.amount*(1+round(counter_exp.amount/10)*2));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_exp.cost;
counter_exp.buffvalue = counter_exp.buffvalue - 5;
	}
	else{
	if (Toggle10.oncheck = true){
		if (counter_exp.amount < 10){
		check = 10 - counter_exp.amount;
		}
		else {
		check = 0	
		}
		while (check < 10){
		counter_exp.amount--;
counter_exp.cost = 1+(counter_exp.amount*(1+round(counter_exp.amount/10)*2));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_exp.cost;
counter_exp.buffvalue = counter_exp.buffvalue - 5;
		check++;
		}
		Toggle10.tencheck()
	}
	if (Toggle100.oncheck = true){
		if (counter_exp.amount < 100){
		check = 100 - counter_exp.amount;
		}
		else {
		check = 0	
		}
		while (check < 100){
		counter_exp.amount--;
counter_exp.cost = 1+(counter_exp.amount*(1+round(counter_exp.amount/10)*2));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_exp.cost;
counter_exp.buffvalue = counter_exp.buffvalue - 5;
		check++;
		}
		Toggle100.hundredcheck()
	}
	if (Toggle1k.oncheck = true){
		if (counter_exp.amount < 1000){
		check = 1000 - counter_exp.amount;
		}
		else {
		check = 0	
		}
		while (check < 1000){
		counter_exp.amount--;
counter_exp.cost = 1+(counter_exp.amount*(1+round(counter_exp.amount/10)*2));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_exp.cost;
counter_exp.buffvalue = counter_exp.buffvalue - 5;
		check++;
		}
		Toggle1k.thousandcheck()
	}
	if (ToggleMax.oncheck = true){
		if (counter_exp.amount < 10000){
		check = 10000 - counter_exp.amount;
		}
		else {
		check = 0	
		}
		while (check < 10000){
		counter_exp.amount--;
counter_exp.cost = 1+(counter_exp.amount*(1+round(counter_exp.amount/10)*2));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_exp.cost;
counter_exp.buffvalue = counter_exp.buffvalue - 5;
		check++;
		}
		ToggleMax.bigcheck()
	}
	}
}