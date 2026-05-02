/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6 && (counter_exp.cost < (obj_prestige.prestigepoints+1))){
	if (Toggle1.oncheck = true){
obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_exp.cost;
counter_exp.amount++;
counter_exp.buffvalue = counter_exp.buffvalue + 5;
	}
if (Toggle10.oncheck = true){
for (i = 0; i < 10; i++){
	if ((counter_exp.cost > obj_prestige.prestigepoints)){
	break;	
	}
	obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_exp.cost;
counter_exp.amount++;
counter_exp.buffvalue = counter_exp.buffvalue + 5;
	counter_exp.cost = 1+(counter_exp.amount*(1+round(counter_exp.amount/10)*2));
}
}
if (Toggle100.oncheck = true){
for (i = 0; i < 100; i++){
	if ((counter_exp.cost > obj_prestige.prestigepoints)){
	break;	
	}
	obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_exp.cost;
counter_exp.amount++;
counter_exp.buffvalue = counter_exp.buffvalue + 5;
	counter_exp.cost = 1+(counter_exp.amount*(1+round(counter_exp.amount/10)*2));
}
}
if (Toggle1k.oncheck = true){
for (i = 0; i < 1000; i++){
	if ((counter_exp.cost > obj_prestige.prestigepoints)){
	break;	
	}
	obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_exp.cost;
counter_exp.amount++;
counter_exp.buffvalue = counter_exp.buffvalue + 5;
	counter_exp.cost = 1+(counter_exp.amount*(1+round(counter_exp.amount/10)*2));
}
}
if (ToggleMax.oncheck = true){
for (i = 0; i < 10000; i++){
	if ((counter_exp.cost > obj_prestige.prestigepoints)){
	break;	
	}
	obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_exp.cost;
counter_exp.amount++;
counter_exp.buffvalue = counter_exp.buffvalue + 5;
	counter_exp.cost = 1+(counter_exp.amount*(1+round(counter_exp.amount/10)*2));
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