/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6 && counter_evade.amount > 0) {
	if (Toggle1.oncheck = true){
counter_evade.amount--;
counter_evade.cost = round(3+((counter_evade.amount*4)*(1+counter_evade.amount)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_evade.cost;
counter_evade.buffvalue = counter_evade.buffvalue - 1;
	}
	else{
	if (Toggle10.oncheck = true){
		if (counter_evade.amount < 10){
		check = 10 - counter_evade.amount;
		}
		else {
		check = 0	
		}
		while (check < 10){
		counter_evade.amount--;
counter_evade.cost = round(3+((counter_evade.amount*4)*(1+counter_evade.amount)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_evade.cost;
counter_evade.buffvalue = counter_evade.buffvalue - 1;
		check++;
		}
		Toggle10.tencheck()
	}
	else{
	while (counter_evade.amount > 0){
	counter_evade.amount--;
counter_evade.cost = round(3+((counter_evade.amount*4)*(1+counter_evade.amount)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_evade.cost;
counter_evade.buffvalue = counter_evade.buffvalue - 1;	
	}
	if (Toggle100.oncheck = true){
		Toggle100.hundredcheck()
		}
		if (Toggle1k.oncheck = true){
		Toggle1k.thousandcheck()	
		}
		if (ToggleMax.oncheck = true){
		ToggleMax.bigcheck()	
		}
	}
	/*else{
	check = 90 - counter_evade.amount;	
	}
	while (check < 90){
		counter_evade.amount--;
counter_evade.cost = round(3+((counter_evade.amount*4)*(1+counter_evade.amount)));
obj_prestige.prestigepoints = obj_prestige.prestigepoints + counter_evade.cost;
counter_evade.buffvalue = counter_evade.buffvalue - 1;
		check++;
		}
		if (Toggle100.oncheck = true){
		Toggle100.hundredcheck()
		}
		if (Toggle1k.oncheck = true){
		Toggle1k.thousandcheck()	
		}
		if (ToggleMax.oncheck = true){
		ToggleMax.bigcheck()	
		}*/
	}
}