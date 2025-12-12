

function PlayerAttack(argument0) //un objeto arma
{
	if (object_is_ancestor(argument0,o_sword)){
			var objective = instance_nearest(mouse_x,mouse_y,o_enemy_body)
			show_debug_message("entro al case o_sword")
			if(objective != noone)
			{
				if (point_distance(x,y,objective.x,objective.y) <= argument0.range)
				{
					var ToHit = irandom_range(1,20) + baseAccuracy + argument0.accuracy;
					if(ToHit < objective.defense)
					{
						//texto flotante que dice "miss!"
						show_debug_message("le fallaste, pete")
					}
					else
					{
						//texto flotante con el dmg
						objective.hp -= argument0.dmg
						show_debug_message("golpeaste al enemigo")
					}
					turn_finished = 1
				}
			}
	}
	show_debug_message("ejecuto el ataque?")
}