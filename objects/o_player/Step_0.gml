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
		dir = -1;
	}
	if(keyboard_check_released(ord("A")))
	{
		dir = 180;
		Movement();
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
		
		var msg = "Equipo actual:\n";
		msg += "Arma: " + weaponName + "\n" + weaponDesc + "\n\n";
		msg += "Armadura: " + armorName + "\n" + armorDesc + "\n\n";
		msg += "Poción: " + potionName + "\n" + potionDesc;
		
		show_message(msg);
	}
}

if(hp <= 0)
{
	image_alpha = 0;
	alive = 0;
}