// Actualizar movimiento suave; si acaba en este frame, no actuar de nuevo
var moveEnded = MovementUpdate();
var player = instance_nearest(x, y, o_player);
// Despertar y entrar a iniciativa solo si está cerca del jugador
if (!isAwake)
{
	if (distance_to_object(o_player) <= wakeRange)
	{
		isAwake = 1;
		isSleep = 0;
		if (!addedToInitiative && global.GameMaster != noone)
		{
			ds_list_add(global.GameMaster.initiative, self);
			addedToInitiative = 1;
		}
	}
}

if (moving)
{
	canAct = 0;
}

if (moveEnded)
{
	// Ya consumió el turno al terminar de moverse
	canAct = 0;
	exit;
}

if (isAwake && canAct && !moving)
{
	// Comprobar si el jugador está en rango de ataque
	if (point_distance(player.x,player.y,x,y) <= attackRange)
	{
		
		if (player != noone)
		{
			// Calcular defensa del jugador 
			var playerDefense = player.baseDefense;
			if (variable_instance_exists(player, "armor") && player.armor != undefined)
			{
				playerDefense += player.armor.defenseBonus;
			}
			
			var ToHit = irandom_range(1, 20) + attackAccuracy;
			if (ToHit >= playerDefense)
			{
				var _dmg = attackDmg+irandom_range(-2,2);
				player.hp -= _dmg;
				var floatText = instance_create_layer(player.x,player.y,"GUI",o_floating_text)
					floatText.value = string(_dmg) + "!"
					floatText.type = "dmg"
			}
			else
			{
				// Ataque fallido
				var floatText = instance_create_layer(x,y,"GUI",o_floating_text)
					floatText.value = "Fallo!"
					floatText.type = "dmg"
			}
		}
		turn_finished = 1;
	}
	else
	{
		BasicPathFind()
		EnemyMovement()
	}
	
}

if(hp <= 0)
{
	instance_destroy()
}

