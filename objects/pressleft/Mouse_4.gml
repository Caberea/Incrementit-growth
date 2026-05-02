/// @description Insert description here
// You can write your code in this editor
if (action1.scene = 1 && action1.attacking = 1 && maintext.onehandmode=true){
oncheck = true;
if (action1.hitcheck < maintext.weaponhits){
	if (action1.strike[action1.hitcheck] = 2)
		{
				array_set(action1.strike, action1.hitcheck, 6);
				action1.hitcount++;
				action1.hitcheck++;		
		}
			else
		{
				array_set(action1.strike, action1.hitcheck, 8);
				action1.hitcheck++;
		}
}
}