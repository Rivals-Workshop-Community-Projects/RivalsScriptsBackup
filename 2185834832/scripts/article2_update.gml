//article2_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying

*/

//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}

if (player_id.state == PS_ATTACK_GROUND && player_id.attack == AT_TAUNT){
	//make him do stuff when you want if you want to
}

//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

//with (asset_get("pHitBox")){
//    if (place_meeting(x,y,other.id) && other.player_id != player_id){
//        other.shoulddie = true;
//        other.hitstop = 10; //Article freeze frames
//        hitpause = true;    //Player freeze frames
//        hitstop = 10;       //Player freeze frames, cont.
//    }
//}

//State 0: Up

player_id.uspec_non = 10

if(hitstun > 0){
	hsp = 0
	vsp = 0
}else if(hitstun == 0){
	hsp = old_hsp
	vsp = old_vsp
}

if (state == 0){
    image_index += 0.25
    create_hitbox(AT_USPECIAL, 1, x + 6*spr_dir, y - 18)
    if(state_timer == 0){
    	vsp = -7.8
    	hsp = 2 * spr_dir
    }
    vsp += 0.24
    if(hit_wall == true || !free){
    	state = 2
    	state_timer = 0
    }
    if(hsp > 0){
    	spr_dir = 1
    }else if(hsp < 0){
    	spr_dir = -1
    }
}



//State 1: Down

if (state == 1){
    image_index += 0.15
    create_hitbox(AT_USPECIAL, 1, x + 6*spr_dir, y - 18)
    if(state_timer == 0){
    	vsp = 6
    	hsp = 0
    }
    vsp += 0.24
    if(hit_wall == true || !free){
    	state = 2
    	state_timer = 0
    }
}

with (asset_get("pHitBox")){
	if (place_meeting(x, y, other)){
		if(other.got_hit_timer < 0){
		    if(player_id == other.player_id){
		        if(attack != AT_USPECIAL
		        && attack != AT_USPECIAL_2
		        && attack != AT_DSPECIAL && !(attack == AT_NSPECIAL && hbox_num == 2)){
				    var kb_distance = kb_value + damage *
				      kb_scale;
				    other.hsp = lengthdir_x( kb_distance, kb_angle) * spr_dir;
				    other.vsp = ( lengthdir_y(kb_distance, kb_angle) );
		            image_index = 0
		            sound_play(sound_effect)
		            spawn_hit_fx(x, y, hit_effect)
		            player_id.old_hsp = player_id.hsp;
					player_id.old_vsp = player_id.vsp;
		            player_id.hitpause = true
		            player_id.hitstop = 4
		            player_id.hitstop_full = 4
		            other.old_vsp = other.vsp
		        	other.old_hsp = other.hsp
		        	other.hitstun = 4
		            other.got_hit_timer = other.hitstun + 3
		            if(attack == AT_DTILT){
			            if(player_id.window == 2 || player_id.window == 3){
							player_id.window = 5
							player_id.window_timer = 0
						}
		            }
		            instance_destroy(pHitBox);
		            exit;
		        
			    }
			}
		}
	}
}

//State 2: Dying

if (state == 2){
	hsp = 0
	vsp = 0
	if(state_timer == 0){
		image_index = 0
		spawn_hit_fx(x, y, bbExplode);
	}
	if(state_timer == 3){
		create_hitbox(AT_USPECIAL, 2, x, y);
		sound_play( asset_get("sfx_waterhit_heavy"));
	}
	if(image_index < 8){
	image_index += 0.35
	}
	if(state_timer == 7){
		instance_destroy();
		exit;
	}
}

//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//If not already at the sprite it should be, switch to the new sprite and restart the animation

//delete if out of bounds
if (y > room_height){
    instance_destroy();
    exit;
}
if (sprite_index != sprite[state]){
    sprite_index = sprite[state];
}

//Make time progress
state_timer++;
hitstun--;
got_hit_timer--