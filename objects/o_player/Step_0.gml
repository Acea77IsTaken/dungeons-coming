// Actualizar movimiento suave; si termina en este frame, no permitir otra acción
var moveEnded = MovementUpdate();

// Si está moviéndose, no acepta input este frame
if (moving) {
	canAct = 0;
} else {
	canAct = 1;
}

if (moveEnded)
{
	canAct = 0;
}

if(canAct and alive =1)
{
	//movement-----------------
	if(keyboard_check_released(ord("W")))
	{
		dir = 90;
		Movement();
		dir = -1;
	
	}
	if(keyboard_check_released(ord("S")))
	{
		dir = 270;
		Movement();
		dir = -1;
		
	}
	if(keyboard_check_released(ord("D")))
	{
		dir = 0;
		Movement();
		image_xscale = 1
		dir = -1;
	}
	if(keyboard_check_released(ord("A")))
	{
		dir = 180;
		Movement();
		image_xscale = -1
		dir = -1;
	}
	
	if(keyboard_check_released(vk_control))
	{turn_finished=1}
	// Inspección de equipo (tecla I)
	if (keyboard_check_pressed(ord("I")))
	{
		var weaponName = (weapon != undefined) ? weapon.name : "Ninguna";
		var weaponDesc = (weapon != undefined && weapon.description != undefined) ? weapon.description : "";
		
		var armorName = (armor != undefined) ? armor.name : "Ninguna";
		var armorDesc = (armor != undefined && armor.description != undefined) ? armor.description : "";
		
		var potionName = (potion != undefined) ? potion.name : "Ninguna";
		var potionDesc = (potion != undefined && potion.description != undefined) ? potion.description : "";
		
		var msg1 = "Equipo actual:\n";
		msg1 += "Arma: " + weaponName + "\n" + weaponDesc;
		var msg2 = "Armadura: " + armorName + "\n" + armorDesc + "\n\n";
		var msg3 = "Pocion: " + potionName + "\n" + potionDesc;
		
		var inspect = instance_create_layer(x,y,"GUI",o_dialog)
		with inspect
		{
			addText(msg1);
			addText(msg2);
			addText(msg3);
			h = 100;
		}
	}
}

if(hp <= 0)
{
	image_alpha = 0;
	alive = 0;
}