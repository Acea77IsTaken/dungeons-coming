// Cofre: genera loot la primera vez y abre un diálogo para equipar/guardar o dejarlo
if (createdLoot == undefined)
{
	createdLoot = OpenChest(o_player)
}

// Mostrar diálogo solo si no hay uno activo
if (createdLoot != undefined && !awaitingChoice && !instance_exists(o_dialog))
{
	var lootName = (createdLoot.name != undefined) ? createdLoot.name : "Objeto misterioso";
	var lootDesc = (createdLoot.description != undefined) ? createdLoot.description : "";
	
	activeDialog = instance_create_layer(x, y, "GUI", o_dialog);
	with (activeDialog)
	{
		text = [];
		page = 0;
		page_number = 0;
		textLength = [];
		textbox_x_offset = [];
		
		addText("Encontraste: " + lootName);
		addText(lootDesc);
		addText("Presiona Y para equipar/guardar, N para dejarlo en el cofre.");
	}
	
	awaitingChoice = true;
}
