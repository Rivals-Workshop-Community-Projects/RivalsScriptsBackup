//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Controlling
- 1 Teleport


*/



//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){
    with(player_id){
    	if(attack == AT_USPECIAL){
    		if(window == 2){
    	if(!joy_pad_idle){
            other.hsp = (lengthdir_x(1, joy_dir)*5.4);
            other.vsp = (lengthdir_y(1, joy_dir)*5.4);
    	}else {
            other.hsp *= 0;
            other.vsp *= 0;
        }
    		}if(window != 2){
    			other.hsp = 0;
    			other.vsp = 0;
    		}
    	}
    }        if(player_id.teleport){
    	        teleport_hitbox = create_hitbox(AT_USPECIAL, 1, x, y);
        		state = 1;
        		state_timer = 0;
        		player_id.teleport = false;
        }if(player_id.tele_cancel){
        	player_id.teleport_outline = false;
        	spawn_hit_fx(x - spr_dir, y, 109);
        	sound_play(asset_get("sfx_ori_bash_use"));
        	player_id.tele_cancel = false;
        	player_id.teleport = false;
        			    instance_destroy();
                         exit;
        }if(player_id.attack != AT_USPECIAL || player_id.state == PS_HITSTUN || player_id.state == PS_HITSTUN_LAND || player_id.state == PS_TUMBLE){
        	player_id.teleport_outline = false;
        	sound_stop(asset_get("sfx_ori_charged_flame_charge2"));
        	        	spawn_hit_fx(x - spr_dir, y, 109);
        	sound_play(asset_get("sfx_ori_bash_use"));
        	player_id.teleport = false;
        	            instance_destroy();
                         exit;
        }
}



//State 1: Idle

if (state == 1){
	if(state_timer = 1){
		player_id.teleport_outline = false;
		sound_play(asset_get("sfx_ori_bash_launch"));
		spawn_hit_fx(x - spr_dir, y, 66);
		player_id.x = x;
		player_id.y = y;
		    instance_destroy();
    exit;
	}
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("wonder_trade");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("blank_sheet");
        animation_type = 1;
        break;
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



//Make time progress
state_timer++;