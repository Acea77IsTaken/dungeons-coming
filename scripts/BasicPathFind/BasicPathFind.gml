// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información
function BasicPathFind(){
	var playerAngle = point_direction(x,y,o_player.x,o_player.y)
	
	if (playerAngle < 45 and playerAngle >= 0)
	{
		dir = 0;
	}
	else if (playerAngle < 135 and playerAngle > 45)
	{
		dir = 90;	
	}
	else if (playerAngle < 225 and playerAngle > 135)
	{
		dir = 180;	
	}
	else if (playerAngle < 315 and playerAngle > 225)
	{
		dir = 270;	
	}
	else if (playerAngle < 359 and playerAngle > 315)
	{
		dir = 0;
	} 
	else if (playerAngle == 45)
	{
		dir = choose(0,90)
	}
	else if (playerAngle == 135)
	{
		dir = choose(180,90)
	}
	else if (playerAngle == 225)
	{
		dir = choose(270,180)
	}
	else if (playerAngle == 315)
	{
		dir = choose(270,0)
	}
	else
	{
		show_message("no encontre al jugador")
	}
}