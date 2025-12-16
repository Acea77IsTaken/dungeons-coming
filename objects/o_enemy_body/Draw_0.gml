// Dibujar el sprite del enemigo primero
draw_self()

// Solo dibujar la barra de vida si han recibido daño
if (hp < maxHp && maxHp > 0)
{
	// Calcular la posición de la barra (encima de la cabeza)
	var barY = y - 20; // Offset hacia arriba
	var barWidth = 24; // Ancho de la barra
	var barHeight = 4; // Alto de la barra
	var barX = x - barWidth / 2; // Centrar la barra
	
	// Calcular el porcentaje de vida
	var healthPercent = hp / maxHp;
	var healthWidth = barWidth * healthPercent;
	
	// Dibujar fondo de la barra (gris oscuro)
	draw_set_color(c_black);
	draw_rectangle(barX - 1, barY - 1, barX + barWidth + 1, barY + barHeight + 1, false);
	
	// Dibujar la barra de vida (verde)
	draw_set_color(c_green);
	draw_rectangle(barX, barY, barX + healthWidth, barY + barHeight, false);
	
	// Restaurar color por defecto
	draw_set_color(c_white);
}

