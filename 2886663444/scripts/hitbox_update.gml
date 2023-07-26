if attack == AT_NSPECIAL {
    if hitbox_timer >= 2 {
        var explvfx = spawn_hit_fx(x,y,player_id.fspecSmallHit);
        explvfx.depth = player_id.depth - 1;
        destroyed = true;
    }
}

if ((attack == AT_FSPECIAL)  && hbox_num == 1) {
	 player_id.move_cooldown[AT_FSPECIAL] = 5;
	switch(boom_state) {
		case 0: 
			hsp -= (spr_dir * .05)//15
			if hitbox_timer >= 30 {
				boom_state = 1
			}
		break;
		case 1:
		if abs(hsp) < 10 {
			hsp -= (spr_dir * .2)
		}
		
		if ((x > player_id.x) && spr_dir == 1) ||  ((x < player_id.x) && spr_dir == -1) {
			if (y < player_id.y - player_id.char_height) {
				vsp += .2
			}
			if (y > player_id.y) {
				vsp -= .2
			}
		}
			
			if place_meeting(x, y, player_id) {
				    player_id.move_cooldown[AT_FSPECIAL] = 155;
				john = spawn_hit_fx(player_id.x, player_id.y - 34, 306)
				john.depth = 100
				x += floor((player_id.x - x)/2)
				y += floor((player_id.y - 34 - y)/2)
				//sound_play(sound_get("whoosh"),false,noone, .8, .6 )
				//sound_play(sound_get("croissant_eating"),false,noone, 1, 1 )
				//shake_camera(4,2)
				destroyed = true
			}
			
		break;
	}
	
	if player_id.move_cooldown[AT_FSPECIAL] > 0 {
		player_id.move_cooldown[AT_FSPECIAL] = 5
		
		sprite_index = sprite_get("nspecial_projectile_abyss")
		
		
		x += floor((player_id.x - x)/20)
        y += floor((player_id.y - 40 - y)/30)
		
		if (y < player_id.y ) {
				vsp += .5
			}
		if (y > player_id.y) {
				vsp -= .5
		}
			
		if (x < player_id.x ) {
				hsp += .5
		}
		
		if (x > player_id.x) {
				hsp -= .5
		}	
	}
	
	
	
}