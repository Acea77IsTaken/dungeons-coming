/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (chargingExplosion)
{
    // Parpadeo que acelera mientras se acerca la explosión.
    // Triangulo 0..1 para no depender de sin().
    var _tri = abs(frac(blink_t) * 2 - 1);
    image_blend = merge_color(blink_col_a, blink_col_b, _tri);

    // Pulso de escala: más fuerte cerca del final.
    var _u = 1 - (turnsLeft / 3);
    _u = clamp(_u, 0, 1);
    var _pulse = lerp(pulse_min, pulse_max, _u);
    var _s = pulse_base * (1 + _tri * _pulse);
    image_xscale = _s;
    image_yscale = _s;

    draw_self();

    // Restaurar para no afectar otros draws/hijos.
    image_blend = c_white;
    image_xscale = 1;
    image_yscale = 1;

}
else
{
    draw_self();
}

// Shockwave simple (sin sprites) cuando explota
if (ex_fx)
{
    var _n = clamp(ex_t / ex_dur, 0, 1);
    var _ease = 1 - power(1 - _n, 3);
    var _r = lerp(ex_r0, ex_r1, _ease);
    var _a = lerp(ex_alpha0, 0, _n);

    draw_set_alpha(_a);
    draw_set_color(make_color_rgb(170, 255, 170));
    draw_circle(x, y, _r * 0.35, false);

    draw_set_alpha(_a * 0.9);
    draw_set_color(make_color_rgb(90, 255, 120));
    draw_circle(x, y, _r, true);

    draw_set_alpha(_a * 0.5);
    draw_set_color(make_color_rgb(40, 200, 80));
    draw_circle(x, y, _r * 0.72, true);

    draw_set_alpha(1);
    draw_set_color(c_white);
}


// Inherit the parent event
event_inherited();

