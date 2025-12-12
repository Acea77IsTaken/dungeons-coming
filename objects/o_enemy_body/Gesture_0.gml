if(o_player.canAct){
	if(point_distance(x,y,o_player.x,o_player.y) < o_player.weapon.range)
	{
			var ToHit = irandom_range(1,20) + baseAccuracy + o_player.weapon.accuracy;
						if(ToHit < defense)
						{
							//texto flotante que dice "miss!"
							show_debug_message("le fallaste, pete")
						}
						else
						{
							//texto flotante con el dmg
							hp -= o_player.weapon.dmg
							show_debug_message("golpeaste al enemigo")
						}
						o_player.turn_finished = 1
	}
}