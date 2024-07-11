if (attack == AT_FSPECIAL){
    if (hbox_num == 1){
        if (!was_parried){
            if (hitbox_timer == length || hsp == 0){
                destroy_fx = 1;
                destroyed = true;
                
                //remove any other present article versions
                with (asset_get("obj_article1")){
                    if (player_id == other.player_id){
                        state = 9;
                        state_timer = 0;
                    }
                }
                
                //create article version
                instance_create(x + (spr_dir*0), y, "obj_article1");
            }
        }
    }
    
    if (hbox_num == 2 || hbox_num == 3){
        proj_angle = point_direction(0,0,hsp,vsp);
        
        if (hitbox_timer == length - 1){
            if (player == orig_player){
                sound_play(sound_get("swish"));
            }
            else{
                with (player_id){
                    sound_play(sound_get("swish"));
                }
            }
            
            spawn_hit_fx( x + 0*spr_dir, y - 6, 144 );
        }
        
        through_platforms = true;
        
        if (hitbox_timer mod 1 == 0){
            if (player == orig_player){
                var afterimage = instance_create(x + (spr_dir*0), y, "obj_article2");
                afterimage.angle_to_draw = proj_angle;
                afterimage.color = hitbox_timer mod 6;
            }
        }
        
        if (hitbox_timer == 0){
            if (hsp < 0){
    		    spr_dir = -1;
    		}
    		else{
    			spr_dir = 1;
    		}
        }
        
        /*
        if (position_meeting(x + 0*spr_dir, y + 10, asset_get("par_block")) || (position_meeting(x + 0*spr_dir, y + 10, asset_get("par_jumpthrough")) && vsp > 0)){
            sound_play(asset_get("sfx_ell_steam_hit"));
            spawn_hit_fx( x + 0*spr_dir, y - 6, 144 );
            
            instance_destroy();
            exit;
        }
        */
    }
}

if (attack == AT_NSPECIAL){
    
    if (!was_parried){
        with (obj_article1){
            if (place_meeting(x, y, other) && player_id == other.player_id){
                if (state == 1){
                    state = 4;
                    state_timer = 0;
    
                    target_id = player_id;
                    targetter_id = player_id;
                    
                    with (other){
                        //create article version
            	        var fist = instance_create(x + (spr_dir*0), y, "obj_article3");
            	        fist.vsp = -4;
            	        fist.hsp = -1*spr_dir;
            	        fist.y -= 5;
            	        fist.spr_dir = spr_dir;
            	        
                        sound_play(asset_get("sfx_blow_medium1"));
                        spawn_hit_fx( x + 0*spr_dir, y, 144 );
                        
                        //if it gets parried and hits the ground it goes very high
	                    if (was_parried && other.hit_player_obj == player_id){
	                        fist.vsp *= 4;
	                    }
            	        
                        instance_destroy();
                        exit;
                    }
                }
            }
        }
    }
    
    if (position_meeting(x + 0*spr_dir, y + 10, asset_get("par_block")) || (position_meeting(x + 0*spr_dir, y + 10, asset_get("par_jumpthrough")) && vsp > 0)){
        sound_play(asset_get("sfx_blow_weak1"));
        spawn_hit_fx( x + 0*spr_dir, y - 6, 144 );
        
        //create article version
        var fist = instance_create(x + (spr_dir*0), y - 10, "obj_article3");
        fist.vsp = -5;
        fist.y -= 5;
        fist.spr_dir = spr_dir;
            
        instance_destroy();
        exit;
    }

    if (hitbox_timer mod 4 == 0){
        spawn_hit_fx( x + 0*spr_dir, y - 0, player_id.water_trail_vfx );
    }
    
        if (hitbox_timer == length - 1){
            with (player_id){
                sound_play(sound_get("swish"), false, other.x, 1, 1);
            }
            spawn_hit_fx( x + 0*spr_dir, y - 0, 144 );
            
            with (player_id){
                move_cooldown[AT_NSPECIAL] = 1;
            }
        }
        else if (hitbox_timer < length - 1){
            with (player_id){
                move_cooldown[AT_NSPECIAL] = other.length - other.hitbox_timer + 2;
            }
        }
        
    proj_angle = point_direction(0,0,hsp,vsp);
}