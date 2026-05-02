/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6 && (counter_basedef.cost < (obj_prestige.prestigepoints+1))){
		if (Toggle1.oncheck = true){
obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_basedef.cost;
counter_basedef.amount++;
counter_basedef.buffvalue = counter_basedef.buffvalue + (1*counter_basedef.amount);
		}
if (Toggle10.oncheck = true){
for (i = 0; i < 10; i++){
	if ((counter_basedef.cost > obj_prestige.prestigepoints)){
	break;	
	}
	obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_basedef.cost;
counter_basedef.amount++;
counter_basedef.buffvalue = counter_basedef.buffvalue + (1*counter_basedef.amount);
	counter_basedef.cost = round(1+((counter_basedef.amount*2)*(1+round(counter_basedef.amount/5)*3)));
}
}
if (Toggle100.oncheck = true){
for (i = 0; i < 100; i++){
	if ((counter_basedef.cost > obj_prestige.prestigepoints)){
	break;	
	}
	obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_basedef.cost;
counter_basedef.amount++;
counter_basedef.buffvalue = counter_basedef.buffvalue + (1*counter_basedef.amount);
	counter_basedef.cost = round(1+((counter_basedef.amount*2)*(1+round(counter_basedef.amount/5)*3)));
}
}
if (Toggle1k.oncheck = true){
for (i = 0; i < 1000; i++){
	if ((counter_basedef.cost > obj_prestige.prestigepoints)){
	break;	
	}
	obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_basedef.cost;
counter_basedef.amount++;
counter_basedef.buffvalue = counter_basedef.buffvalue + (1*counter_basedef.amount);
	counter_basedef.cost = round(1+((counter_basedef.amount*2)*(1+round(counter_basedef.amount/5)*3)));
}
}
if (ToggleMax.oncheck = true){
for (i = 0; i < 10000; i++){
	if ((counter_basedef.cost > obj_prestige.prestigepoints)){
	break;	
	}
	obj_prestige.prestigepoints = obj_prestige.prestigepoints - counter_basedef.cost;
counter_basedef.amount++;
counter_basedef.buffvalue = counter_basedef.buffvalue + (1*counter_basedef.amount);
	counter_basedef.cost = round(1+((counter_basedef.amount*2)*(1+round(counter_basedef.amount/5)*3)));
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
		
//maintext.maxhealth = round((maintext.basehealth + maintext.headhp + maintext.chesthp + maintext.gloveshp + maintext.legshp + counter_basehealth.buffvalue)*(1+counter_healthmult.buffvalue/100));
//			maintext.atk = round((maintext.baseatk + counter_baseatk.buffvalue + maintext.weaponattack)*(1+counter_atkmult.buffvalue/100));
			maintext.def = round((maintext.basedef + counter_basedef.buffvalue + maintext.headdef + maintext.chestdef + maintext.glovesdef + maintext.legsdef)*(1+counter_defmult.buffvalue/100));
}