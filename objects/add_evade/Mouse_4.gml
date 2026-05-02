/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6 && (counter_evade.cost < (obj_prestige.prestigepoints+1))){
	if (counter_evade.buffvalue < 90){
		if (Toggle1.oncheck = true){
obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_evade.cost;
counter_evade.amount++;
counter_evade.buffvalue = counter_evade.buffvalue + 1;
		}
if (Toggle10.oncheck = true){
for (i = 0; i < 10; i++){
	if ((counter_evade.cost > obj_prestige.prestigepoints)){
	break;	
	}
	if (counter_evade.amount > 89){
	break;
	}
	obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_evade.cost;
counter_evade.amount++;
counter_evade.buffvalue = counter_evade.buffvalue + 1;
	counter_evade.cost = round(3+((counter_evade.amount*4)*(1+counter_evade.amount)));
}
}
if (Toggle100.oncheck = true){
for (i = 0; i < 100; i++){
	if ((counter_evade.cost > obj_prestige.prestigepoints)){
	break;	
	}
	if (counter_evade.amount > 89){
	break;
	}
	obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_evade.cost;
counter_evade.amount++;
counter_evade.buffvalue = counter_evade.buffvalue + 1;
	counter_evade.cost = round(3+((counter_evade.amount*4)*(1+counter_evade.amount)));
}
}
if (Toggle1k.oncheck = true){
for (i = 0; i < 100; i++){
	if ((counter_evade.cost > obj_prestige.prestigepoints)){
	break;	
	}
	if (counter_evade.amount > 89){
	break;
	}
	obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_evade.cost;
counter_evade.amount++;
counter_evade.buffvalue = counter_evade.buffvalue + 1;
	counter_evade.cost = round(3+((counter_evade.amount*4)*(1+counter_evade.amount)));
}
}
if (ToggleMax.oncheck = true){
for (i = 0; i < 100; i++){
	if ((counter_evade.cost > obj_prestige.prestigepoints)){
	break;	
	}
	if (counter_evade.amount > 89){
	break;
	}
	obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_evade.cost;
counter_evade.amount++;
counter_evade.buffvalue = counter_evade.buffvalue + 1;
	counter_evade.cost = round(3+((counter_evade.amount*4)*(1+counter_evade.amount)));
}
}
		if (ToggleMax.oncheck = true){
ToggleMax.bigcheck();
}
if (Toggle1k.oncheck = true){
Toggle1k.thousandcheck();
}
if (Toggle100.oncheck = true){
Toggle100.hundredcheck();
}
if (Toggle10.oncheck = true){
Toggle10.tencheck();
}
		
	}
}