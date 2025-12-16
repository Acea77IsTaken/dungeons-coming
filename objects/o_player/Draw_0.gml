/// @description Draw player and HUD

// Dibujar sprite
draw_self()

// HUD de vida (anclado a la vista)
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);

var barX = vx + 16;
var barY = vy + 16;
var barW = 120;
var barH = 10;

var hpPerc = clamp(hp / maxHp, 0, 1);

// Fondo
draw_set_color(c_black);
draw_rectangle(barX - 1, barY - 1, barX + barW + 1, barY + barH + 1, false);

// Vida
draw_set_color(c_lime);
draw_rectangle(barX, barY, barX + barW * hpPerc, barY + barH, false);

// Texto de vida
draw_set_color(c_white);
draw_text(barX, barY - 14, "HP: " + string(hp) + " / " + string(maxHp));

// Restaurar color
draw_set_color(c_white);
