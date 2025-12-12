if(canAct)
{
	//movement-----------------
	if(keyboard_check(vk_up))
	{
		dir = 90;
		Movement();
		dir = -1;
	
	}
	if(keyboard_check(vk_down))
	{
		dir = 270;
		Movement();
		dir = -1;
		
	}
	if(keyboard_check(vk_right))
	{
		dir = 0;
		Movement();
		dir = -1;
	}
	if(keyboard_check(vk_left))
	{
		dir = 180;
		Movement();
		dir = -1;
	}
	
	//Atack
	if(mouse_check_button(mb_left))
	{
		PlayerAttack(weapon);
	}
}