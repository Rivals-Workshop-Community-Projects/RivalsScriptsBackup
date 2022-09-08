//ricE gave me permission to use this. thanks ricE :eggdog:
var longest_dist = 10000; //maximum targetable distance
if (hitbox_timer == 1 && attack == AT_NSPECIAL){
	spawn_hit_fx( x + (spr_dir*5), y - 15, 14 );
	sound_stop(sound_get("blast"));
	sound_play(sound_get("blast"));
			with (asset_get("oPlayer")) {
				if (player != other.player && state != PS_DEAD) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					var curr_angle = point_direction(other.x, other.y, x, y);
					if (curr_dist < longest_dist) { //The 60 is the deadzone angle from diagonally up. So, Sonic can't target more than 30 degrees above him
						longest_dist = curr_dist;
						other.longest_id = id;
						other.homing_x = x;
						other.homing_y = y - char_height / 2;
						other.homing_vsp = lengthdir_y(8, curr_angle); //25 is Sonic's max speed while homing.
						other.homing_hsp = lengthdir_x(8, curr_angle); //These two are the vsp/hsp sonic will move at
						spawn_hit_fx( x + 4*spr_dir, y - 20, 14 );
					}
				}
			}
}
			
			var go_time = 20;
			
			//go
			if (hitbox_timer > go_time){
				if (hitbox_timer == go_time + 1){
					sound_stop(asset_get("sfx_swipe_weak1"));
					sound_play(asset_get("sfx_swipe_weak1"));
				}
			    vsp = homing_vsp * 0.85;
				hsp = homing_hsp * 0.85;
				if (hsp < 0){
				    spr_dir = -1;
				}
				else{
					spr_dir = 1;
				}
			}
			
			
		
/*	
if (attack == AT_NSPECIAL && !free && destroyed == false){
    destroyed = true;
}
*/

if (attack == AT_NSPECIAL){
    if (hitbox_timer == length - 1){
        spawn_hit_fx( x + 12*spr_dir, y + 2, 14 );
    }
    
    if (player_id.state == PS_HITSTUN){
        destroyed = true;
    }
    
    var kb_modifier = 5;
    if (supercharged && !supercharged_effect){
    	kb_value += kb_modifier;
    	kb_scale = 0.7;
    	damage += 4;
    	hit_effect = 304;
    	supercharged_effect = true;
    	hitpause = 9;
    	//no_other_hit = 10;
    	spawn_hit_fx( floor(x), floor(y), 20 );
    	sprite_index = sprite_get("butterfly_charged");
    	mask_index = sprite_get("butterfly_charged");
    	sound_stop(asset_get("mfx_star"));
    	sound_play(asset_get("mfx_star"));
    }
}


if (attack == AT_NSPECIAL){
	with (asset_get("obj_article1")){
    	if (place_meeting(x, y, other) && player_id == other.player_id && !other.supercharged){
            other.supercharged = true;
        }
    }
    
    var flash_time = 45;
	
	if (hitbox_timer > length - 16){
		visible = !(flash_time && hitbox_timer % 8 < 4);
	}
}