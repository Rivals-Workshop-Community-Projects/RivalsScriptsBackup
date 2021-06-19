//gotta break the game a bit to make this work
if (is_master_player) exit;


//end-of-frame updates
if (!custom_clone) {
    //sync state
    buffer_sync_state[((buffer_counter + partner_input_buffer_delay - 1) mod partner_input_buffer_delay)] = state;
    //update health
    if (damage_percent_as_teammate < 0) take_damage(player, -1, damage_percent_as_teammate);
    damage_percent_as_teammate = get_player_damage(player);
}
else {
	//update health
	damage_percent_as_teammate = clamp(damage_percent_as_teammate, 0, 999);
}


switch (state) {
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
        //attack animation handler
        switch (attack) {
            
            case AT_USPECIAL:
            case AT_USPECIAL_2:
                if (window >= 3) {
                    switch (uspecial_angle) {
                        
                        case 270:
                            if (window == 3) {
                                //spr_angle = 180;
                            }
                        case 90:
                            var img_index = image_index - 6;
                            var spr_name = "uspecial_vertical";
                            if (species_id == 1) spr_name = "m_" + spr_name;
                            sprite_index = sprite_get(spr_name);
                            image_index = img_index;
                        break;
                    }
                }
            break;
            
            case AT_FSTRONG_2:
                if (window == 3) image_index = 13 + (window_timer / 2) mod 8;
            //don't break
            
            case AT_FSTRONG:
            case AT_FTHROW: //index for partner FStrong
            case 40: //index for AT_MINUN_FSTRONG (no longer used)
                //fix for fstrong going in the wrong direction.
                if (dir_correct == 0) break;
            	spr_dir = dir_correct;
            	dir_correct = 0;
            break;
        }
    break;
    
    case PS_DASH:
    case PS_DASH_START:
    case PS_DASH_TURN:
    case PS_DASH_STOP:
        //dashing has its own hurtbox
        hurtboxID.sprite_index = spr_hurtbox_dash;
        //if minun, reskin the dash
        if (species_id != 1) break;
        //replace the sprite according to the reskin array
        var img_index = image_index;
        sprite_index = spr_minun_reskin[state];
        image_index = img_index;
    break;
    
    case PS_HITSTUN:
        //sprite reskin for minun only
        if (species_id != 1) break;
        //get the correct hurt sprite
        var hurt_index = max( ds_list_find_index(ds_list_original_hurt_sprites, sprite_index) , 0);
        //var img_index = image_index;
        sprite_index = spr_minun_reskin_hurt[hurt_index];
        //image_index = img_index;
    break;
    
    case PS_WALK:
    case PS_WALK_TURN:
        //reset hurtbox
        hurtboxID.sprite_index = hurtbox_spr;
        //sprite reskin for minun only
        if (species_id != 1) break;
        //get the correct hurt sprite
        var img_index = image_index;
        sprite_index = spr_minun_reskin[state];
        image_index = img_index;
    break;
    
    
    case PS_SPAWN:
        var intro_delay = 20;
		if (species_id == 0) {
		    if (state_timer >= 48 + intro_delay)  break;
			sprite_index = sprite_get("intro");
			image_index = max(0, floor((state_timer - intro_delay) / 3) );
			if (image_index == 4) sound_play(sound_get("introplus"));
		}
        else {
            if (state_timer >= 75 + intro_delay) {
                //replace the sprite according to the reskin array
                //var img_index = image_index;
                sprite_index = spr_minun_reskin[state];
                //image_index = img_index;
                image_index = teammate_player_id.image_index + 6;
            }
            else {
                sprite_index = sprite_get("m_intro");
                image_index = max(0, floor((state_timer - intro_delay) / 3) );
			    //image_index = floor(state_timer / 3);
			    if (image_index == 8) sound_play(sound_get("introminus"));
            }
        }
	break;
    
    
    case PS_IDLE:
        //reset hurtbox
        hurtboxID.sprite_index = hurtbox_spr;
    //don't break
    case PS_RESPAWN:
        //synchronise idle animation with partner
        if (custom_clone && instance_exists(teammate_player_id) && teammate_player_id.state == state) {
            image_index = teammate_player_id.image_index + 6;
        }
    //don't break

    default:
        //sprite reskin for minun only
        if (species_id != 1) break;
        //replace the sprite according to the reskin array
        var img_index = image_index;
        sprite_index = spr_minun_reskin[state];
        image_index = img_index;
    break;
}