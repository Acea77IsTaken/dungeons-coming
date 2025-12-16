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
					var _d = (instance_exists(o_dialog)) ? instance_find(o_dialog, 0) : instance_create_layer(x, y, "GUI", o_dialog);
					with (_d)
					{
						text = [];
						page = 0;
						page_number = 0;
						textLength = [];
						textbox_x_offset = [];
						addText("Equipaste el arma: " + other.createdLoot.name);
					}
				}
				else if (createdLoot.Id > 19 and createdLoot.Id < 30)
				{
					o_player.armor = createdLoot;
					var _d = (instance_exists(o_dialog)) ? instance_find(o_dialog, 0) : instance_create_layer(x, y, "GUI", o_dialog);
					with (_d)
					{
						text = [];
						page = 0;
						page_number = 0;
						textLength = [];
						textbox_x_offset = [];
						addText("Equipaste la armadura: " + other.createdLoot.name);
					}
				}
				else if (createdLoot.Id > 29 and createdLoot.Id < 41)
				{
					o_player.potion = createdLoot;
					var _d = (instance_exists(o_dialog)) ? instance_find(o_dialog, 0) : instance_create_layer(x, y, "GUI", o_dialog);
					with (_d)
					{
						text = [];
						page = 0;
						page_number = 0;
						textLength = [];
						textbox_x_offset = [];
						addText("Guardaste la poción: " + other.createdLoot.name);
					}
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

