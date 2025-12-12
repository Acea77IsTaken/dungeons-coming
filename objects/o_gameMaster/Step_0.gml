actor = initiative[| turn]

if(actor.turn_finished)
{
	actor.canAct = 0;
	actor.turn_finished = 0;
	
	turn += 1
	
	if (turn >= ds_list_size(initiative))
	{
		turn =0;
	}
}
else
{
	if(projectileExists == false)
	{
		actor.canAct = 1;
	}
}