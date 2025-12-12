// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function EnemyMovement(){
		switch (dir)
	{
		case 0:
			if(instance_place(x+32,y,o_actor) == noone)
			{
				x+=32

			}
			else {
				
			}
		break;
		case 90:
			if(instance_place(x,y-32,o_actor) == noone)
			{
				y-=32
			}
			else {
				
			}
		break;
		case 180:
			if(instance_place(x-32,y,o_actor) == noone)
			{
				x-=32
				
			}
			else {
			
			}
		break;
		case 270:
			if(instance_place(x,y+32,o_actor) == noone)
			{
				y+=32
			
			}
			else {
				
			}
		break;
	}
	
	if(distance_to_object(o_player) <= 32)
	{
		//Attack
		turn_finished = 1;
	}
	else
	{
		turn_finished = 1;
	}
}