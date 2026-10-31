//Hitbox update
if(attack == AT_USTRONG and hbox_num = 3){
    if(hitbox_timer >= 150){
        proj_angle += -15*spr_dir;
        draw_xscale -= 0.05*spr_dir;
        draw_yscale -= 0.05;
        hsp = 0;
        vsp = 0;
    } else {
        x = player_id.x;
        if((image_index > 0 and image_index < 1) or (image_index > 2 and image_index < 3)){
            draw_xscale += 0.05*spr_dir
            draw_yscale += 0.05;
        } else {
            draw_xscale -= 0.05*spr_dir
            draw_yscale -= 0.05;
        }
        if(player_id.state != PS_ATTACK_GROUND or player_id.window > 2){
            hitbox_timer = 150;
        }
    }
}

if(attack == AT_DSTRONG){
    player_id.mace_position = x;
    if(hbox_num == 1){
        depth = player_id.depth+1;
        draw_xscale += 0.2*spr_dir;
        draw_yscale += 0.2
        hsp *= 1.4
        if(player_id.state == PS_ATTACK_GROUND){
            y = player_id.y - 20
        }
    }
    if(hbox_num == 2){
        if(hitbox_timer < length/2){
            draw_xscale += 0.05*spr_dir;
            draw_yscale += 0.05
        } else {
            draw_xscale -= 0.05*spr_dir;
            draw_yscale -= 0.05;
            hsp *= 0.95
        }
        if(player_id.state == PS_ATTACK_GROUND){
            y = player_id.y - 20
        }
        if(hitbox_timer == length-1){
            create_hitbox( AT_DSTRONG, 3, x, y );
        }
        if(has_hit){
            shake_camera( 8, 10 );
            has_hit = false;
        }
        if(reflected){
            hsp *= -1;
            spr_dir = -spr_dir
            reflected = false;
        }
    }
    if(hbox_num == 3){
        depth = player_id.depth+1
        hsp *= 0.75
        if(hitbox_timer < 2){
            draw_xscale = 1.9*spr_dir;
            draw_yscale = 1.9
        } else if(hsp <= -0.5 or hsp >= 0.5) {
            draw_xscale -= 0.02*spr_dir;
            draw_yscale -= 0.02
        }
        if(player_id.state == PS_ATTACK_GROUND){
            y = player_id.y - 20
        }
    }
}

if(attack == AT_JAB){
    if (hitbox_timer == length - 1){
        destroyed = true;
    }
    if(reflected){
        hsp *= 1.5;
        hitbox_timer = 0;
        reflected = false;
    }
}

//Autobomb Small fire
if (attack == AT_NSPECIAL && hbox_num == 2){
	if (hitbox_timer % 5 == 0){
		clone = create_hitbox(AT_NSPECIAL, 2, x, y);
		clone.can_hit_self = true;
		clone.image_index = image_index;
		clone.owner = owner;
		clone.player = player;
		clone.player_id = player_id;
		clone.orig_player = orig_player;
		clone.orig_player_id = orig_player_id;
		clone.last_player_id = last_player_id;
		clone.spr_dir = spr_dir;
		clone.image_xscale = image_xscale;
		clone.draw_xscale = draw_xscale;
		if(has_hit){
		    clone.hsp = hsp * 0.7;
		} else {
	    	clone.hsp = hsp * 0.90;
		}
		clone.vsp = vsp /// 1.25;
		clone.hitbox_timer = hitbox_timer + 1;
		if(hitbox_timer >= 56){
			clone.kb_angle = 70;
			clone.kb_value = 8;
			clone.kb_scale = 0.5;
			clone.hitpause = 6;
			clone.hitpause_growth = 0.3;
			clone.dumb_di_mult = 1;
			clone.hit_effect = HFX_GEN_BIG;
		}
		//image_index += 1;
		//sound_play(sound_get("cloud3"), false, noone, 0.5, 2.5 - hitbox_timer / 7.5);
		destroyed = true;
		if (hitbox_timer < 50){
			var trail_y = random_func(4, 24, true);
			var trail_effect = spawn_hit_fx(x, y + trail_y - 12, trail_fx);
			trail_effect.depth = depth + 1;
			trail_effect.spr_dir = spr_dir;
		}
	}
	if (hitbox_timer > 55){
		image_xscale *= 1.05;
		image_yscale *= 1.05;
		draw_xscale *= 1.05;
		draw_yscale *= 1.05;
	}
    if (hitbox_timer == length - 1){
        spawn_hit_fx(x, y - 4, small_fire_end_fx);
    }
    if(reflected){
            draw_xscale *= -1
            reflected = false;
        }
}

if(attack == AT_NSPECIAL and hbox_num == 6){
    if(hitbox_timer > 5){
        can_hit_self = true;
    }
    if (hitbox_timer % 5 == 0){
			var trail_y = random_func(4, 24, true);
			var trail_effect = spawn_hit_fx(x, y + trail_y - 12, trail_fx);
			trail_effect.depth = depth + 1;
			trail_effect.spr_dir = spr_dir;
		}
    hsp *= 1.02;
    player_id.fire_shotID = id;
    if(reflected){
            draw_xscale *= -1
            reflected = false;
        }
}