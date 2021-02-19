//article2_update - runs every frame the article exists

/*STATE LIST

- 0 Charging
- 1 
- 2 Ded
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 

*/
//Set killarticles3 to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles3 && state != 2){
    state = 2;
    state_timer = 0;
}

if (replacedcount > maxarticles){
    shoulddie = true;
}

//State buffering
    
if (buffertimer < 20){
	++buffertimer;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

if (b_whip)
{
	if (player_id.visible && player_id.draw_indicator && get_gameplay_time()>68)
	{
		sprite_index = sprite_get("ropething");
		var xx = previous.x;
		var yy = previous.y;
		if (previous == player_id)
		{
			xx -= 4*player_id.spr_dir;
			yy -= 20;
		}
		var xdiff = xx - x;
		var ydiff = yy - y;
		var nodedist = point_distance(xx,yy,x,y);
		var xforce = 0;
		var yforce = 0;
		if (part_length<nodedist)
		{
			var tension = (nodedist-part_length)/nodedist;
			xforce = tension*xdiff*friction;
			yforce = tension*ydiff*friction+(free?3:0);
		}
		if (point_distance(player_id.x,player_id.y,x,y) > 100)
		{
			if (!ignores_walls)
			{
				ignores_walls = true;
				sound_play(sound_get("bell"));
			}
		}
		else
		{
			ignores_walls = false;
		}
		hsp = (hsp+xforce)*friction;
		vsp = (vsp+yforce)*friction;
	}
	else
	{
		sprite_index = asset_get("empty_sprite");
		hsp = 0;
		vsp = 0;
		x = player_id.x;
		y = player_id.y;
	}
}
else
{
	switch (state)
	{
	//State 0: Charging
	case 0:
	    if (shoulddie)
		{
		    state = 2;
		    state_timer = 0;
	    }
		break;
	//State 2: Dying
	case 2:
		player_id.killarticles3 = false;
		spawn_hit_fx( x, y, 144 );
		sound_play( asset_get( "sfx_bubblepop" ) );
		instance_destroy();
		exit;
		break;
	}
}
++state_timer;