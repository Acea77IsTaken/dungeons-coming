// Manejar decisión del jugador sobre el loot del cofre
if (awaitingChoice)
{
	// Si el diálogo ya no existe, cancelar la espera
	if (!instance_exists(activeDialog))
	{
		awaitingChoice = false;
		activeDialog = noone;
		exit;
	}
	
	// Equipar/guardar
	if (keyboard_check_pressed(ord("Y")))
	{
		if (createdLoot != undefined)
		{
			
				if (createdLoot.Id > 0 and createdLoot.Id < 21)
				{
					o_player.weapon = createdLoot;
					show_message("Equipaste el arma: " + createdLoot.name);
				}
				else if (createdLoot.Id > 19 and createdLoot.Id < 30)
				{
					o_player.armor = createdLoot;
					show_message("Equipaste la armadura: " + createdLoot.name);
				}
				else if (createdLoot.Id > 29 and createdLoot.Id < 41)
				{
					o_player.potion = createdLoot;
					show_message("Guardaste la poción: " + createdLoot.name);
				}
			
			// Vaciar cofre al equipar/guardar
			createdLoot = undefined;
		}
		
		if (instance_exists(activeDialog)) with (activeDialog) instance_destroy();
		awaitingChoice = false;
		activeDialog = noone;
	}
	
	// Dejar en el cofre
	if (keyboard_check_pressed(ord("N")))
	{
		// Simplemente cerrar el diálogo y dejar el loot
		if (instance_exists(activeDialog)) with (activeDialog) instance_destroy();
		awaitingChoice = false;
		activeDialog = noone;
	}
}

