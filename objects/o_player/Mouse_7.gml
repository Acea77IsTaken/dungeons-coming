if(canAct){

	var objective = instance_place(mouse_x,mouse_y,o_actor)
	if(objective != noone)
	{
		if(object_is_ancestor(objective,o_enemy_body))
		{
			var ToHit = irandom_range(1,20) + baseAccuracy + weapon.accuracy	
			if (ToHit >= objective.defense)
			{
				//texto flotante // 
				objective.hp -= weapon.dmg
			}
			else
			{
				//Texto flotante miss
			}
		}
	}
}