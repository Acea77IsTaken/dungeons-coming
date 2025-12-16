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
	
	// colisión básica
	if (instance_place(nx, ny, all) == noone)
	{
		target_x = nx;
		target_y = ny;
		moving = true;
	}
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