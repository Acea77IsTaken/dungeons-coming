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
	canAct = 0;
	exit;
}

if (isAwake && canAct && !moving && !chargingExplosion)
{
	// Comprobar si el jugador está en rango de ataque
	if (point_distance(player.x,player.y,x,y) <= 32)
	{
		chargingExplosion = 1;
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

if(chargingExplosion && canAct)
{
	turnsLeft -= 1;	
	if(turnsLeft <= 0)
	{
		Explode(self,attackRange,attackDmg)	
	}
	turn_finished = 1;
}
