switch (attack) {

case AT_FSTRONG:
spawn_hit_fx( x, y, square_tail_fx);
if "danmoment_hitpause" not in self danmoment_hitpause = 0;
    if(danmoment_hitpause > 0){
        in_hitpause = true;
        danmoment_hitpause--;
		hit_priority = 0;
    }else{
        in_hitpause = false;
		hit_priority = hbox_num + 2;
    }
break;

case AT_DATTACK:
if hbox_num == 2 {
x = 10 * player_id.spr_dir;
}
break;

case AT_JAB:
case AT_FTILT:
case AT_NAIR:
depth = player_id.depth + 1;
    if destroyed || hitbox_timer == length{
	spawn_hit_fx( x, y, pshooter_destroy);
	}
break;

case AT_UAIR:
case AT_DAIR:
depth = player_id.depth + 1;

//parry cluster
if player_id.bounce_cluster = cluster_num && !was_parried{
hitbox_timer = 0;
image_index = 0;
vsp *= -1;
hsp = 0;
player = player_id.bounce_player;
was_parried = true;
    if kb_angle = 90 {
    kb_angle = 270;
    } else if kb_angle = 270 {
    kb_angle = 90;
    }
}

if was_parried{
through_platforms = 2;
}

    if destroyed || hitbox_timer == length{
	spawn_hit_fx( x, y, pshooter_destroy);
	}
	if hsp != 0 {
	hsp += decel_num;
	}
	if !free {
	destroyed = true;
	}
break;

//HITPAUSE ---------------------------------------------------------------------
if "danmoment_hitpause" not in self danmoment_hitpause = 0;
    if(danmoment_hitpause > 0){
        in_hitpause = true;
        danmoment_hitpause--;
		hit_priority = 0;
    }else{
        in_hitpause = false;
		    if hitbox_timer < 7 {
		    hit_priority = 5;
		    } else {
		    hit_priority = 0;
		    }
    }

break;

case AT_FAIR:
if hbox_num = 1 {
    if image_index = 2 {
    img_spd = 0;
    }
    if !free {
    destroyed = true;
    }
    if destroyed {
    with player_id sound_play(sound_get("block_break"));
    }
}
break;

case AT_FSPECIAL:
if hbox_num = 3 {
spawn_hit_fx( x, y, player_id.fspec_trail);
}
through_platforms = 2;
if vsp = 0 && abs(hsp) != 10 {
destroyed = true;
}
if destroyed || hitbox_timer == length{
spawn_hit_fx( x, y, pshooter_destroy);
}
break;

//DSTRONG SPIKES ---------------------------------------------------------------
case AT_DSTRONG:
if hbox_num != 1{

//DESTROY IF NOT ON THE GROUND && PUT BEHIND PLAYER
if free && hitbox_timer > 1{
    if !has_rune("G"){
    destroyed = true;
    if player_id.spike_count > 1 {
    player_id.spike_count -= 1;
	}
	} else {
	grav = 0;
	vsp = 0;
	}
}
depth = player_id.depth + 1;
//HITPAUSE ---------------------------------------------------------------------
if "danmoment_hitpause" not in self danmoment_hitpause = 0;
    if(danmoment_hitpause > 0){
        in_hitpause = true;
        danmoment_hitpause--;
		hit_priority = 0;
		proj_break = 1;
    }else{
        in_hitpause = false;
		    if sprite_index = spr_spike || sprite_index = spr_airspike{
		        if image_index >= 3 && image_index <= 4.5 {
		        hit_priority = 4;
				proj_break = 0;
		        } else {
		        hit_priority = 0;
				proj_break = 1;
		        }
			}
    }
//SPRITE LOGIC ------------------------------------------------------------------
    if (sprite_index = spr_spikespawn || sprite_index = spr_spikespawn_air) && image_index == 3.5 {
        if !free {
		sprite_index = spr_spikeloop
		}else{
		sprite_index = spr_spikeloop_air
		}
		image_index = 0;
		img_spd = 0.2;
	}
	if player_id.window == 2 && player_id.window_timer == 1 && !player_id.hitpause {
	    if !free {
		sprite_index = spr_spike;
		}else{
		sprite_index = spr_airspike;
		}
		image_index = 0;
		img_spd = 0.5;
	}
	if (sprite_index = spr_spike || sprite_index = spr_airspike) {
	    if image_index == 3 {
		    //PLAY SFX
            if player_id.spike_count != 0 {
            sound_play(sound_get("spikes_" + string(player_id.spike_count)));
            player_id.spike_count = 0;
            }
		}
	    if image_index == 14.5 {
        destroyed = true;
		}
	}
	if player_id.state_cat == SC_HITSTUN {
	spawn_hit_fx( x, y, square_destroy);
	destroyed = true;
	}
}
break;

case AT_USPECIAL:
if player_id.window > 4 {
hit_priority = 0;
}
break;

    case AT_EXTRA_1:
    if old_vsp > 0 && vsp < 0 {
	sound_play(sound_get("smiley_dink"));
	}
	old_vsp = vsp;
	    if hitbox_timer > length-2 {
		destroyed = true;
		}
    break;
    
    case AT_DSPECIAL_AIR:
    	if "client_id" not in self || !instance_exists(client_id) {
    		instance_destroy();
    		exit;
    	}
    	else {
    		if !dunked {
	    		x = x + client_id.hsp;
	    		if place_meeting(x, y, client_id) {
	    			dunked = true;
	    			shaking = true;
	    			shaking_x = x;
	    			shaking_y = y;
	    			sound_play(sound_get("dunk"));
	    		}
    		}
    		else if shaking {
    			hitbox_timer = 40;
    			shaking_timer -= 1;
    			x = shaking_x - (6 + random_func_2(0, 13, true)) * shaking_timer / 30;
    			y = shaking_y - (6 + random_func_2(1, 13, true)) * shaking_timer / 30;
    			if shaking_timer <= 0 {
    				shaking = false;
    			}
    		}
    	}
    break;
}