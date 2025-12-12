/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

draw_set_color(c_white)

draw_text(actor.x,actor.y-32,turn)
draw_text(actor.x,actor.y-60,"can act = "+ string(actor.canAct))
draw_text(actor.x,actor.y-70,"dir = "+ string(actor.dir))
if(actor.obj.object_index == o_enemy_body)
{
draw_text(actor.x,actor.y-80,"chocando con un enemigo")
}
else
{
draw_text(actor.x,actor.y-80,"no se detecto un enemi body")	
}