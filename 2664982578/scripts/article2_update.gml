//article2_update - runs every frame the article exists

/*STATE LIST

- 0 Idle
- 1 Destroyed/Hit
- 2 Grabbed by Fspecial
- 3 Bouncing off of Fspecial
- 4 Swap places with Uspecial
- 5 Grabbed by Dspecial
- 6 FUCKING BALLING
- 7 bALLING VICTORY
- 8 GRABBED HOOP!?!?!?!?


*/



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

with (pHitBox){
    if (place_meeting(x,y,other.id) and player_id == other.player_id and attack == AT_USPECIAL and hbox_num == 1){
        other.state = 4;
        other.state_timer = 0;
        other.x = player_id.x;
        other.y = player_id.y;
    }
}



//State 0: Idle

if (state == 0){
		if(player_id.attack == AT_NSPECIAL){
		if(player_id.window == 3 && player_id.window_timer = 6){
			state = 1;
			state_timer = 0;
		}
	}	    player_id.in_range_of_orb = false;
        playerdetect = collision_rectangle(x - 50, y - 50, x + 50, y + 50, player_id, false, true);
        if (playerdetect != noone && instance_exists(playerdetect)){
	    with(playerdetect){
	    	in_range_of_orb = true;
	    if(attack == AT_FSPECIAL_2){
		if(window == 1 && window_timer > 20){
			window_timer = 0;
			other.state = 3;
			other.state_timer = 0;
		}
	}if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if(attack == AT_DSPECIAL){
    	if(window == 1){
    		if(window_timer > 4){
    		other.state = 5
    		other.state_timer = 0;
    		window = 4;
    		window_timer = 0;
    		}
    	}
    }
	}
	    }
    }
with (pHitBox){
    if (place_meeting(x,y,other.id) and player_id == other.player_id and attack == AT_FSPECIAL and hbox_num == 1){
        other.state = 2;
        other.state_timer = 0;
    }
}
}



//State 1: Destroyed/Hit

if (state == 1){
	if(state_timer = 2){
	oops = create_hitbox(AT_NSPECIAL, 2, x, y+5);
	spawn_hit_fx(x - spr_dir, y, 304);
	sound_play(sound_get("classic_hurt"));
    instance_destroy();
    exit;
	}
}

//State 2: Grabbed by Fspecial

if (state == 2){
	    x = player_id.x - 40 * player_id.spr_dir;
        y = player_id.y - 10;
        if(state_timer = 1){
        	spawn_hit_fx(x - spr_dir, y, 304);
        	        sound_play(sound_get("kss_grab_activate"));
        	        with (player_id){
        	    if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
		destroy_hitboxes();
		attack_end();
		set_attack(AT_FSPECIAL_2);
		grabbed_orb = true;
        	    }
        }
        }
        if(player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
        if(player_id.attack == AT_FSPECIAL_2){
        	if(player_id.window == 2){
        		spawn_hit_fx(player_id.x + player_id.spr_dir * 46, player_id.y - 26, 112);
        		sound_play(asset_get("sfx_ori_energyhit_heavy"));
        		create_hitbox(AT_NSPECIAL, 1, player_id.x + player_id.spr_dir * 46, player_id.y - 26);
        		    instance_destroy();
                    exit;
                    if(player_id.attack != AT_FSPECIAL_2 || player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND || player_id.state == PS_TUMBLE){
        	sound_stop(asset_get("sfx_ori_charged_flame_charge2"));
        	        	spawn_hit_fx(x - spr_dir, y, 13);
        	            instance_destroy();
                         exit;
        }
        	}if(player_id.window == 3){
        		        	sound_stop(asset_get("sfx_ori_charged_flame_charge2"));
        	        	spawn_hit_fx(x - spr_dir, y, 13);
        	            instance_destroy();
                         exit;
        	}if(player_id.window == 6){
        		if(player_id.window_timer < 3){
        				    x = player_id.x + 30 * player_id.spr_dir;
        					y = player_id.y - 20;
        		}if(player_id.window_timer == 3){
        		spawn_hit_fx(player_id.x + player_id.spr_dir * 30, player_id.y - 20, 112);
        		sound_play(asset_get("sfx_ori_energyhit_heavy"));
        		create_hitbox(AT_NSPECIAL, 1, player_id.x + player_id.spr_dir * 30, player_id.y - 20);
        		    instance_destroy();
                    exit;
        		}
        	}
        }
        }if(state_timer > 2){
        if(player_id.attack != AT_FSPECIAL_2 || player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND || player_id.state == PS_TUMBLE){
        	sound_stop(asset_get("sfx_ori_charged_flame_charge2"));
        	        	spawn_hit_fx(x - spr_dir, y, 13);
        	            instance_destroy();
                         exit;
        }
        }

}

//State 3: Bouncing off of Fspecial

if (state == 3){
	if(state_timer = 1){
	spawn_hit_fx(x - spr_dir, y, 112);
	sound_play(asset_get("sfx_ori_energyhit_medium"));
	state = 6;
	state_timer = 0;
	}

}


//State 4: Swap places with Uspecial

if (state == 4){
	if(state_timer = 1){
    spawn_hit_fx(x - spr_dir, y, 139);
    teleport_hitbox = create_hitbox(AT_NSPECIAL, 1, x, y);
    sound_play(asset_get("sfx_ell_fist_explode"));
    		    instance_destroy();
    exit;
	}
}

//State 5: Grabbed by Dspecial

if (state == 5){
	if(state_timer = 1){
        	spawn_hit_fx(x - spr_dir, y, 304);
        	sound_play(sound_get("kss_grab_activate"));
    		    instance_destroy();
    exit;
	}
}

//State 6: FUCKING BALLING

if (state == 6){
	if(state_timer = 1){
		spr_dir = player_id.spr_dir;
        x = player_id.x + player_id.spr_dir * 180;
        y = player_id.y - 110;
        spawn_hit_fx(x - spr_dir, y, 112);
	}if(state_timer = 150){
		spawn_hit_fx(x - spr_dir, y, 13);
    		    instance_destroy();
    			exit;
	}player_id.in_range_of_orb = false;
        playerdetect = collision_rectangle(x - 50, y - 50, x + 50, y + 50, player_id, false, true);
        if (playerdetect != noone && instance_exists(playerdetect)){
	    with(playerdetect){
	    	in_range_of_orb = true;
	    if(attack == AT_FSPECIAL_2){
		if(window == 1 && window_timer > 20){
			if(other.state_timer > 10){
			window = 4;
			window_timer = 0;
			other.state = 7;
			other.state_timer = 0;
			}
		}
	}
	    }
    }
with (pHitBox){
    if (place_meeting(x,y,other.id) and player_id == other.player_id and attack == AT_FSPECIAL and hbox_num == 1){
        other.state = 8;
        other.state_timer = 0;
    }
}
}

//State 7: FUCKING BALLING

if (state == 7){
	if(state_timer = 1){
		player_id.y = y + 100;
		sound_play(sound_get("ballin"));
		sound_play(sound_get("ballin2"));
	}
if(player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
        if(player_id.attack == AT_FSPECIAL_2){
        	if(player_id.window == 5){
		spawn_hit_fx(x - spr_dir, y, 13);
    		    instance_destroy();
    			exit;
        		}
        	}
        }
    if(state_timer = 120){
		spawn_hit_fx(x - spr_dir, y, 13);
    		    instance_destroy();
    			exit;
	}
}

//State 8: GRABBED HOOP!?!?!?!?

if (state == 8){
	    x = player_id.x - 60 * player_id.spr_dir;
        y = player_id.y - 20;
        if(state_timer = 1){
        	spawn_hit_fx(x - spr_dir, y, 304);
        	        sound_play(sound_get("kss_grab_activate"));
        	        with (player_id){
        	    if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
		destroy_hitboxes();
		attack_end();
		set_attack(AT_FSPECIAL_2);
		grabbed_orb = true;
        	    }
        }
        }
        if(player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR){
        if(player_id.attack == AT_FSPECIAL_2){
        	if(player_id.window == 2){
        		spawn_hit_fx(player_id.x + player_id.spr_dir * 46, player_id.y - 26, 112);
        		sound_play(asset_get("sfx_ori_energyhit_heavy"));
        		create_hitbox(AT_NSPECIAL, 1, player_id.x + player_id.spr_dir * 46, player_id.y - 26);
        		    instance_destroy();
                    exit;
                    if(player_id.attack != AT_FSPECIAL_2 || player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND || player_id.state == PS_TUMBLE){
        	sound_stop(asset_get("sfx_ori_charged_flame_charge2"));
        	        	spawn_hit_fx(x - spr_dir, y, 13);
        	            instance_destroy();
                         exit;
        }
        	}if(player_id.window == 3){
        		        	sound_stop(asset_get("sfx_ori_charged_flame_charge2"));
        	        	spawn_hit_fx(x - spr_dir, y, 13);
        	            instance_destroy();
                         exit;
        	}if(player_id.window == 6){
        		spawn_hit_fx(player_id.x + player_id.spr_dir * 30, player_id.y - 20, 112);
        		sound_play(asset_get("sfx_ori_energyhit_heavy"));
        		create_hitbox(AT_NSPECIAL, 1, player_id.x + player_id.spr_dir * 30, player_id.y - 20);
        		    instance_destroy();
                    exit;
        	}
        }
        }if(state_timer > 2){
        if(player_id.attack != AT_FSPECIAL_2 || player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND || player_id.state == PS_TUMBLE){
        	sound_stop(asset_get("sfx_ori_charged_flame_charge2"));
        	        	spawn_hit_fx(x - spr_dir, y, 13);
        	            instance_destroy();
                         exit;
        }
        }

}


//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
if(player_id.eggdog_skin == false){
switch(state){
    case 0:
        new_sprite = sprite_get("orb_idle");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("blank_sheet");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("orb_idle");
        animation_type = 1;
        break;
    case 3:
        new_sprite = sprite_get("orb_idle");
        animation_type = 1;
        break;
    case 4:
        new_sprite = sprite_get("orb_idle");
        animation_type = 1;
        break;
    case 5:
        new_sprite = sprite_get("orb_idle");
        animation_type = 1;
        break;
    case 6:
        new_sprite = sprite_get("we_cock_dick_ballin");
        mask_index = sprite_get("we_cock_dick_ballin");
        animation_type = 1;
        break;
    case 7:
        new_sprite = sprite_get("we_cock_dick_ballin");
        animation_type = 1;
        break;
    case 8:
        new_sprite = sprite_get("we_cock_dick_ballin");
        animation_type = 1;
        break;
}
}if(player_id.eggdog_skin == true){
switch(state){
    case 0:
        new_sprite = sprite_get("eggdog_orb_idle");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("blank_sheet");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("eggdog_orb_idle");
        animation_type = 1;
        break;
    case 3:
        new_sprite = sprite_get("eggdog_orb_idle");
        animation_type = 1;
        break;
    case 4:
        new_sprite = sprite_get("eggdog_orb_idle");
        animation_type = 1;
        break;
    case 5:
        new_sprite = sprite_get("eggdog_orb_idle");
        animation_type = 1;
        break;
    case 6:
        new_sprite = sprite_get("we_cock_dick_ballin");
        mask_index = sprite_get("we_cock_dick_ballin");
        animation_type = 1;
        break;
    case 7:
        new_sprite = sprite_get("we_cock_dick_ballin");
        animation_type = 1;
        break;
}
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}

//delete if out of bounds
if (y > room_height){
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width){
    instance_destroy();
    exit;
}

//Make time progress
state_timer++;