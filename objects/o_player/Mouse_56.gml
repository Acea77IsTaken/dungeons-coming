if(canAct){
	var objective = instance_place(mouse_x,mouse_y,o_actor)
	if(objective != noone)
	{
		if(object_is_ancestor(objective.object_index,o_enemy_body))
		{
			show_debug_message("si es hijo de enemy body")
			// Verificar que el enemigo esté en rango del arma
			var distance = point_distance(x, y, objective.x, objective.y)
			if(distance <= weapon.range)
			{
				var ToHit = irandom_range(1,20) + baseAccuracy + weapon.accuracy	
				if (ToHit >= objective.defense)
				{
					//texto flotante // 
					objective.hp -= weapon.dmg
					show_debug_message("wooo golpeaste")
				}
				else
				{
					//Texto flotante miss
					show_debug_message("wooo no hiciste nada inutil")
				}
				// Terminar el turno después del ataque
				turn_finished = 1
			}
			else
			{
				show_debug_message("El enemigo está fuera de rango. Distancia: " + string(distance) + ", Rango: " + string(weapon.range))
			}
		}
		
		if(object_is_ancestor(objective.object_index,o_npc))
		{
			show_debug_message("es un npc")
			// Verificar que el enemigo esté en rango del arma
			var distance = point_distance(x, y, objective.x, objective.y)
			if(distance <= 32)
			{
				with(objective)
				{
					event_perform(ev_other,ev_user0)
				}
			}

		}
	}
}