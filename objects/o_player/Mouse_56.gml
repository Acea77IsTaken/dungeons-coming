if(canAct){
	// Primero, intentar interactuar con cofres (o_interactable / o_chest)
	var chest = instance_place(mouse_x, mouse_y, o_chest);
	if (chest != noone)
	{
		var distChest = point_distance(x, y, chest.x, chest.y);
		if (distChest <= 59) // margen similar al que usabas
		{
			with (chest)
			{
				event_perform(ev_other, ev_user0);
			}
			turn_finished = 1;
			exit;
		}
	}
	
	// Luego, actores (enemigos / NPC)
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
				var ToHit = irandom_range(1,20) + baseAccuracy + weapon.accuracy * clamp(str,str/weapon.strReq,1)
				if (ToHit >= objective.defense)
				{
					//texto flotante // 
					objective.hp -= weapon.dmg
					var floatText = instance_create_layer(objective.x,objective.y,"GUI",o_floating_text)
					floatText.value = string(weapon.dmg) + "!"
					floatText.type = "att"
				}
				else
				{
					var floatText = instance_create_layer(objective.x,objective.y,"GUI",o_floating_text)
					floatText.value = "fallaste!"
					floatText.type = "att"
				}
				// Terminar el turno después del ataque
				turn_finished = 1
			}

		}
		
		if(object_is_ancestor(objective.object_index,o_npc))
		{

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