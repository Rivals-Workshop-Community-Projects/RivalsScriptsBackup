//I am the bold action man

/*STATE LIST

- 0 intro
- 1 idle
- 2 dying
- 3 flying
- 4 intro 2
- 5 
- 6 
- 7 
- 8 
- 9

*/

player_id.diamond_hits = times_hit;

if (instance_exists(d_hitbox) && d_hitbox.has_hit == true or hit_wall = true){
	hsp *= -1;
}
if (x > room_width or y > room_height + 100){
	player_id.move_cooldown[AT_DSPECIAL] = 100;
    instance_destroy();
    exit;
}

if (times_hit >= 5 && free == false && state_timer > 15){
	spawn_hit_fx( x, y, 144 );
	player_id.move_cooldown[AT_DSPECIAL] = 300;
    instance_destroy();
    exit;
}

if (hitbox_timer > 0){
hitbox_timer --;
}

/*if (free == true){
    if (vsp != gravity_speed){
        vsp ++;
    }
}*/
if (free == false){
    if (spr_dir == -1){
        mask_index = sprite_get("diamond_mask_ground_flipped");
    }
    else mask_index = sprite_get("diamond_mask_ground");
    if (hsp > 0){
        hsp -= ground_friction;
        if (hsp < 0){
        	hsp = 0;
        }
    }
    if (hsp < 0){
        hsp += ground_friction;
        if (hsp < 0){
        	hsp = 0;
        }
    }
}


if (state == 0){ //Idle
	owner = player_id.player;
	if (!instance_exists(d_hitbox)){
	d_hitbox = create_hitbox( AT_DSPECIAL, 1, x, y);	
	}
    vsp = 10;
    if (free == false){
        setState(4);
    }
}

if (state == 4){
    image_index += 12 / 60;
    if (state_timer == 24){
        setState(1);
    }
}

if (state != 0 && state != 4){
	if (free == false){
    sprite_index = sprite_get("diamond_intro");
    image_index = 5;
	}
	if (free == true){
	    sprite_index = sprite_get("diamond_air");
	    image_index += 16 / 60;
	}
}

if (!instance_exists(d_hitbox)){
	d_hitbox = noone;
}

if (lockout > 0){
	lockout --;
}

if (place_meeting(x, y, pHitBox) && pHitBox.throws_rock != 2 && pHitBox.type == 1 && /*pHitBox.hbox_num == 1 &&*/ pHitBox.kb_value >= 8 && pHitBox.player_id == player_id && got_hit == false && hitstop == false){
	times_hit += 1;
	got_hit = true;
	lockout = 30;
}

if (place_meeting(x, y, pHitBox) && /*pHitBox.hbox_num == 1 &&*/ pHitBox.kb_value >= 6 && pHitBox.player_id != player_id && got_hit == false && hitstop == false){
	sound_play(pHitBox.sound_effect);	
	spawn_hit_fx(x, y, pHitBox.hit_effect);
	pHitBox.player_id.has_hit = true;
	times_hit += 1;
	got_hit = true;
	lockout = 30;
}

if (lockout == 0){
	got_hit = false;
}

if (free or !free && hsp != 0){
	with(oPlayer){
	    if(player != other.owner && place_meeting(x, y, other)){
	        with other{
	        	if (!instance_exists(d_hitbox)){
				d_hitbox = create_hitbox( AT_DSPECIAL, 1, x, y);
	        	}
	        }
	    }
	}
}

if (state == 1){
	if (free && hitstop == 0){
	vsp += .5;
	}
	if (!instance_exists(d_hitbox) && free && state_timer > 90){
	d_hitbox = create_hitbox( AT_DSPECIAL, 1, x, y);	
	}
	if (vsp > 2){
		past_hitbox = noone;
		past_attack = noone;
		past_group = noone;		
	}
	
	with (pHitBox){
		if (place_meeting(x, y, other)){
			if (other.hit_delay <= 1 && throws_rock != 2 && player_id == other.player_id && other.times_hit <= 5){
				if ((!(other.past_hitbox == hbox_num && other.past_attack == attack)) && 
				((other.past_group == hbox_group && other.past_attack != attack) || 
				other.past_group != hbox_group || -1 = hbox_group)){
					other.past_hitbox = hbox_num;
					other.past_attack = attack;
					other.past_group = hbox_group;

					other.hsp = 0;
					other.vsp = 0;
					other.hit_delay = 4 + hitpause + extra_hitpause;
					other.owner = player;
					other.kb_scaling = kb_scale;
					other.bkb = kb_value;
					with (other) {kb_angle = get_hitbox_angle(other.id)}
					other.hitpause = true;
					other.hitstop = hitpause + extra_hitpause;
					
					state_timer = 0;

					sound_play(pHitBox.sound_effect);	
					spawn_hit_fx(other.x, other.y, pHitBox.hit_effect);
					
					if (other.state_timer > 10 && type == 1){
						pHitBox.player_id.has_hit = true;
						pHitBox.player_id.hitpause = true;
						pHitBox.player_id.hitstop = hitpause + 2;
						
						pHitBox.player_id.old_hsp = pHitBox.player_id.hsp;
						pHitBox.player_id.old_vsp = pHitBox.player_id.vsp;
					}
				}
			}
		}
	}

	kb_speed = ((bkb + 50 * kb_scaling * fancynum * kb_adj)); // calculates knockback speed

    
    if (hit_delay == 4){
        if (kb_angle >= 40 && kb_angle < 140){
            vsp = lengthdir_y(kb_speed , kb_angle);
    		hsp = lengthdir_x(kb_speed , kb_angle);
        }
		if (kb_angle >= 0 && kb_angle < 40 or kb_angle >= 300 && kb_angle <= 360){
		    hsp = (kb_speed*.75);
		    vsp = (-kb_speed*.25);
		}
		if (kb_angle >= 90 && kb_angle < 120 or kb_angle >= 240 && kb_angle < 300){
		    hsp = (kb_speed*0);
		    vsp = (-kb_speed);
		}
		if (kb_angle >= 140 && kb_angle < 240){
		    hsp = (-kb_speed*.5);
		    vsp = (-kb_speed*.5);
		}
	}
	if (hit_delay > -10){
		hit_delay--;
	}
}




state_timer++;

exist_timer++;

#define setState(new_state) //This custom function makes it easier to switch states. You can't use it outside of articleX_update.gml; if you want to do this from the player's update.gml or something, just copy the contents of this to the with statement.

state = new_state;
state_timer = 0;