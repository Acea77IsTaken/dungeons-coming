actor = initiative[| turn]

var i = ds_list_size(initiative) - 1;
while (i >= 0)
{
	var checkActor = initiative[| i];
	if (!instance_exists(checkActor))
	{
		ds_list_delete(initiative, i);
		// Ajustar el turno si es necesario
		if (turn > i)
		{
			turn -= 1;
		}
		else if (turn == i && turn >= ds_list_size(initiative))
		{
			turn = 0;
		}
	}
	i -= 1;
}

if(actor.turn_finished)
{
	actor.canAct = 0;
	actor.turn_finished = 0;
	
	turn += 1
	
	if (turn >= ds_list_size(initiative))
	{
		turn =0;
	}
}
else
{
	if(projectileExists == false)
	{
		actor.canAct = 1;
	}
}

if(!o_player.alive)
{
	if (!endgame)
	{
		endgame = 1;
		instance_create_layer(o_player.x,o_player.y,"GUI",o_YouDied)
	}
}

// Cámara suavizada siguiendo al jugador
var cam = view_camera[0];
var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);
var vw = camera_get_view_width(cam);
var vh = camera_get_view_height(cam);

var tx = o_player.x - vw * 0.5;
var ty = o_player.y - vh * 0.5;

var lerpFac = 0.15;
var nx = lerp(cx, tx, lerpFac);
var ny = lerp(cy, ty, lerpFac);

camera_set_view_pos(cam, nx, ny);