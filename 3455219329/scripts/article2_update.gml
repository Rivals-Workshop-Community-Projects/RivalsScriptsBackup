//Nectar update
state_timer++;

switch(state){
	case(0)://Spawn
		//Nothing yet
	break;
	case(1)://Come from offscreen
		var next_x = round(lerp(start_x, goto_x, (state_timer/30)));
		var next_y = round(lerp(start_y, goto_y, (state_timer/30)));
		hsp = (next_x - x);
		vsp = (next_y - y);
		if(state_timer == 30){
			state = 2;
			state_timer = 0;
		}
	break;
	case(2)://Idle
		vsp = 0
		hsp = 0;
		image_index += 0.2;
		with(asset_get("oPlayer")){
			if (place_meeting(x,y,other.id)){
				other.hitplayer = player;
				other.state = 3;
			}
		}
		if(state_timer > 600){
			if(state_timer%2 = 1){
				if(image_alpha = 0.5){
					image_alpha = 0.25;
				} else {
					image_alpha = 0.5;
				}
			}
			if(state_timer >= 720){
				state = 4;
			}
		}
	break;
	case(3)://What happens when touched by player
		with(oPlayer){
			if(player == other.hitplayer and other.item<2){
				other.x = x;
				other.y = y - char_height;
			}
		}
		switch(item){
			case(0)://Nectar
				image_alpha = 0;
				collected_fx = spawn_hit_fx(x, y, collect_fx);
				collected_fx.depth = -10;
				sound_play(sound_get("banana"));
				with(oPlayer){
					if(player == other.hitplayer){
						take_damage( player, -1, -2 );
					}
				}
				state = 4;
			break;
		}
	break;
	case(4)://die
		instance_destroy();
		exit;
	break;
}