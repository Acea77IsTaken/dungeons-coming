

function PlayerAttack(argument0) //un objeto arma
{
	switch (argument0)
	{
		case o_sword:
			var objective = instance_nearest(mouse_x,y,o_enemy_body)
			if (point_distance(x,y,objective.x,objective.y) <= argument0.range)
			{
				var ToHit = choose(1,20) + baseAccuracy + argument0.accuracy;
				if(toHit < objective.defense)
				{
					//texto flotante que dice "miss!"
				}
				else
				{
					//texto flotante con el dmg
					objective.hp -= argument.dmg
				}
				turn_finished = 1
			}
		break;
	}
}