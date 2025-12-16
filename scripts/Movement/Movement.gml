// Movimiento en grid con interpolación suave
// Requiere variables de instancia: move_speed, moving, target_x, target_y

function Movement(){
	if (moving) return; // ya en movimiento
	
	var nx = x;
	var ny = y;
	
	switch (dir)
	{
		case 0:
			nx = x + 32;
		break;
		case 90:
			ny = y - 32;
		break;
		case 180:
			nx = x - 32;
		break;
		case 270:
			ny = y + 32;
		break;
		default:
			return;
	}

	// --- Excepción de colisión: permitir pararse/entrar en o_transition ---
	// Primero: si hay transición en la casilla destino, NO bloquea el movimiento.
	var _tr = instance_place(nx, ny, o_transition);
	if (_tr != noone)
	{
		// Si tu transición usa collision con o_player para cambiar de room,
		// basta con movernos a la casilla y la colisión se encargará.
		target_x = nx;
		target_y = ny;
		moving = true;
		exit;
	}

	// Bloquear con sólidos/obstáculos (pero no con la transición)
	// Nota: si tus paredes son o_wall, esto evita que te bloquee cualquier cosa "all".
	if (place_meeting(nx, ny, o_wall))
	{
		return;
	}

	// Si tienes otros obstáculos además de o_wall, agrégalos aquí:
	// if (place_meeting(nx, ny, o_enemy_body)) return;

	target_x = nx;
	target_y = ny;
	moving = true;
}

// Devuelve true si el movimiento terminó en este frame (para evitar doble acción)
function MovementUpdate(){
	if (!moving) return false;
	
	var step = move_speed;
	
	var dx = target_x - x;
	var dy = target_y - y;
	var dist = point_distance(0,0,dx,dy);
	if (dist <= step || dist == 0)
	{
		x = target_x;
		y = target_y;
		moving = false;
		turn_finished = 1;
		return true;
	}
	
	var nx = x + (dx / dist) * step;
	var ny = y + (dy / dist) * step;
	x = nx;
	y = ny;
	return false;
}