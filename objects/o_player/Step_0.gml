if(canAct)
{
	//movement-----------------
	if(keyboard_check_released(ord("W")))
	{
		dir = 90;
		Movement();
		dir = -1;
	
	}
	if(keyboard_check_released(ord("S")))
	{
		dir = 270;
		Movement();
		dir = -1;
		
	}
	if(keyboard_check_released(ord("D")))
	{
		dir = 0;
		Movement();
		dir = -1;
	}
	if(keyboard_check_released(ord("A")))
	{
		dir = 180;
		Movement();
		dir = -1;
	}
	

}