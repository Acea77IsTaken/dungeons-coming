// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemyMovement(){
	if (moving) 
	{return;}
	
	var nx = x;
	var ny = y;
	
	switch (dir)
	{
		case 0:   
			nx = x + 32;
			image_xscale = 1
		break;
		case 90:  
			ny = y - 32; 
		break;
		case 180: 
			nx = x - 32; 
			image_xscale = -1
			break;
		case 270: 
			ny = y + 32; 
		break;
		default: 
		return;
	}
	if (instance_place(nx, ny, all) == noone)
	{
		target_x = nx;
		target_y = ny;
		moving = true;
	}
	else
	{
		turn_finished = 1;
	}
}