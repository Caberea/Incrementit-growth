/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 6){
oncheck = true;
Toggle1.oncheck = false;
Toggle10.oncheck = false;
Toggle100.oncheck = false;
Toggle1k.oncheck = false;

	function bigcheck(){
	curamount = counter_atkmult.amount;
	projcost = counter_atkmult.cost;
	for (compamount = 0; compamount < 10000; compamount += 1){
		fullcost = fullcost + projcost;
		if (fullcost > obj_prestige.prestigepoints){
		maxamount = (compamount);
		fullcost = 0;
		curamount = counter_atkmult.amount;
		projcost = counter_atkmult.cost;
		for (compamount = 0; compamount < maxamount; compamount += 1){
		fullcost = fullcost + projcost;
		curamount ++;
		projcost = 5+((curamount*5)*(1+curamount)*(1+round(curamount/5)*4));
		}
		break;
		}
		curamount ++;
		projcost = 5+((curamount*5)*(1+curamount)*(1+round(curamount/5)*4));
	}
	counter_atkmult.bulkamount = compamount;
	counter_atkmult.bulkcost = fullcost;
	counter_atkmult.bulkvalue = 5*compamount;

	curamount = counter_defmult.amount;
	projcost = counter_defmult.cost;
	for (compamount = 0; compamount < 10000; compamount += 1){
		fullcost = fullcost + projcost;
		if (fullcost > obj_prestige.prestigepoints){
		maxamount = (compamount);
		fullcost = 0;
		curamount = counter_defmult.amount;
		projcost = counter_defmult.cost;
		for (compamount = 0; compamount < maxamount; compamount += 1){
		fullcost = fullcost + projcost;
		curamount ++;
		projcost = 5+((curamount*5)*(1+curamount)*(1+round(curamount/5)*3));
		}
		break;
		}
		curamount ++;
		projcost = 5+((curamount*5)*(1+curamount)*(1+round(curamount/5)*3));
	}
	counter_defmult.bulkamount = compamount;
	counter_defmult.bulkcost = fullcost;
	counter_defmult.bulkvalue = 5*compamount;


	curamount = counter_healthmult.amount;
	projcost = counter_healthmult.cost;
	for (compamount = 0; compamount < 10000; compamount += 1){
		fullcost = fullcost + projcost;
		if (fullcost > obj_prestige.prestigepoints){
		maxamount = (compamount);
		fullcost = 0;
		curamount = counter_healthmult.amount;
		projcost = counter_healthmult.cost;
		for (compamount = 0; compamount < maxamount; compamount += 1){
		fullcost = fullcost + projcost;
		curamount ++;
		projcost = round(4+((curamount*4)*(1+curamount)*(1+round(curamount/6)*2)));
		}
		break;
		}
		curamount ++;
		projcost = round(4+((curamount*4)*(1+curamount)*(1+round(curamount/6)*2)));
	}
	counter_healthmult.bulkamount = compamount;
	counter_healthmult.bulkcost = fullcost;
	counter_healthmult.bulkvalue = 5*compamount;

	curamount = counter_baseatk.amount;
	projcost = counter_baseatk.cost;
	projvalue = 0;
	for (compamount = 0; compamount < 10000; compamount += 1){
		fullcost = fullcost + projcost;
		if (fullcost > obj_prestige.prestigepoints){
		maxamount = (compamount);
		fullcost = 0;
		projvalue = 0;
		curamount = counter_baseatk.amount;
		projcost = counter_baseatk.cost;
		for (compamount = 0; compamount < maxamount; compamount += 1){
		fullcost = fullcost + projcost;
		curamount ++;
		projvalue = projvalue + (1*curamount);
		projcost = round(2+((curamount*2)*(1+round(curamount/4)*3)));
		}
		break;
		}
		curamount ++;
		projvalue = projvalue + (1*curamount);
		projcost = round(2+((curamount*2)*(1+round(curamount/4)*3)));
	}
	counter_baseatk.bulkamount = compamount;
	counter_baseatk.bulkcost = fullcost;
	counter_baseatk.bulkvalue = projvalue;

	curamount = counter_basedef.amount;
	projcost = counter_basedef.cost;
	projvalue = 0;
	for (compamount = 0; compamount < 10000; compamount += 1){
		fullcost = fullcost + projcost;
		if (fullcost > obj_prestige.prestigepoints){
		maxamount = (compamount);
		fullcost = 0;
		projvalue = 0;
		curamount = counter_basedef.amount;
		projcost = counter_basedef.cost;
		for (compamount = 0; compamount < maxamount; compamount += 1){
		fullcost = fullcost + projcost;
		curamount ++;
		projvalue = projvalue + (1*curamount);
		projcost = 1+((curamount*2)*(1+round(curamount/5)*3));
		}
		break;
		}
		curamount ++;
		projvalue = projvalue + (1*curamount);
		projcost = 1+((curamount*2)*(1+round(curamount/5)*3));
	}
	counter_basedef.bulkamount = compamount;
	counter_basedef.bulkcost = fullcost;
	counter_basedef.bulkvalue = projvalue;

	curamount = counter_basehealth.amount;
	projcost = counter_basehealth.cost;
	projvalue = 0;
	for (compamount = 0; compamount < 10000; compamount += 1){
		fullcost = fullcost + projcost;
		if (fullcost > obj_prestige.prestigepoints){
		maxamount = (compamount);
		fullcost = 0;
		projvalue = 0;
		curamount = counter_basehealth.amount;
		projcost = counter_basehealth.cost;
		for (compamount = 0; compamount < maxamount; compamount += 1){
		fullcost = fullcost + projcost;
		curamount ++;
		projvalue = projvalue + (2*curamount);
		projcost = 1+(curamount*(1+round(curamount/6)*2));
		}
		break;
		}
		curamount ++;
		projvalue = projvalue + (2*curamount);
		projcost = 1+(curamount*(1+round(curamount/6)*2));
	}
	counter_basehealth.bulkamount = compamount;
	counter_basehealth.bulkcost = fullcost;
	counter_basehealth.bulkvalue = projvalue;

	curamount = counter_exp.amount;
	projcost = counter_exp.cost;
	for (compamount = 0; compamount < 10000; compamount += 1){
		fullcost = fullcost + projcost;
		if (fullcost > obj_prestige.prestigepoints){
		maxamount = (compamount);
		fullcost = 0;
		curamount = counter_exp.amount;
		projcost = counter_exp.cost;
		for (compamount = 0; compamount < maxamount; compamount += 1){
		fullcost = fullcost + projcost;
		curamount ++;
		projcost = round(1+(curamount*(1+round(curamount/10)*2)));
		}
		break;
		}
		curamount ++;
		projcost = round(1+(curamount*(1+round(curamount/10)*2)));
	}
	counter_exp.bulkamount = compamount;
	counter_exp.bulkcost = fullcost;
	counter_exp.bulkvalue = 5*compamount;

	curamount = counter_evade.amount;
	projcost = counter_evade.cost;
	evacheck = 90 - counter_evade.amount
	for (compamount = 0; compamount < evacheck; compamount += 1){
		fullcost = fullcost + projcost;
		if (fullcost > obj_prestige.prestigepoints){
		maxamount = (compamount);
		fullcost = 0;
		curamount = counter_exp.amount;
		projcost = counter_exp.cost;
		for (compamount = 0; compamount < maxamount; compamount += 1){
		fullcost = fullcost + projcost;
		curamount ++;
		projcost = 3+((curamount*4)*(1+curamount));
		}
		break;
		}
		curamount ++;
		projcost = 3+((curamount*4)*(1+curamount));
	}
	counter_evade.bulkamount = compamount;
	counter_evade.bulkcost = fullcost;
	counter_evade.bulkvalue = compamount;
	}
	bigcheck()
}
