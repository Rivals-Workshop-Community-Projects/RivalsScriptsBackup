


//sdi check
if (my_hitboxID.attack != AT_USTRONG || (my_hitboxID.attack == AT_USTRONG && my_hitboxID.hbox_num > 1 && my_hitboxID.hbox_num < 6)) {
	hit_player_obj.sdi_mult = 1;
	hit_player_obj.dumb_di_mult = 1;
}

switch (my_hitboxID.attack) {
    case AT_FTILT:
        if (my_hitboxID.hbox_num == 1) {
            sound_play(asset_get("sfx_blow_medium2"));
            sound_play(asset_get("sfx_rag_plant_shoot"));
        }
        else sound_play(asset_get("sfx_metal_hit_weak"));
        break;
        
    case AT_FAIR:
        if (my_hitboxID.hbox_num < 3) {
            var y_dest = my_hitboxID.y - my_hitboxID.image_yscale*100; // equivalent to y + (height/2)
            hit_player_obj.y = lerp(hit_player_obj.y, y_dest, 0.2);
        }
        break;
        
    case AT_BAIR:
        sound_play(asset_get("sfx_blow_heavy2"));
        if (strong_charge > 15) sound_play(sound_get("thunderpunchedited"), false, noone, 0.7, 0.9);
        break;
        
    case AT_DAIR:
        if (my_hitboxID.hbox_num == 1) sound_play(asset_get("sfx_blow_heavy1"), false, noone, 0.7,  0.9);;
        break;
        
    case AT_UAIR:
    	if (hit_player_obj.activated_kill_effect) sound_play(sound_get("ig_eureka"), false, 0, 1, 1);
    	break;
    
    case AT_FSTRONG:
        sound_play(asset_get("sfx_blow_heavy2"), false, noone, 0.5,  1.2);
        break;
    
    case AT_USTRONG:
        if (my_hitboxID.hbox_num == 5) sound_play(asset_get("sfx_absa_kickhit"), false, noone, 1,  1);
        else if (my_hitboxID.hbox_num > 1 && my_hitboxID.hbox_num < 6) sound_play(asset_get("sfx_absa_singlezap1"), false, noone, 1,  1);
        has_long_endlag = false //pseudo whifflag
        
        // Multihits: pull opponents down through plats if necessary
        if (2 <= my_hitboxID.hbox_num && my_hitboxID.hbox_num <= 4 &&
            my_hitboxID.y > hit_player_obj.y && !hit_player_obj.free &&
            hit_player_obj.ground_type == 2)
        {
            hit_player_obj.y += 2;
            hit_player_obj.free = false;
        }
        
        // Multihits: slight lerp code
        if (my_hitboxID.hbox_num >= 6 || my_hitboxID.hbox_num == 1) && !hit_player_obj.clone
		{
    		hit_player_obj.x = lerp(hit_player_obj.x,x+(spr_dir), 1)
    		hit_player_obj.y = lerp(hit_player_obj.y,y-32, 1)
		}
        
        break;
        
    case AT_DSTRONG:
        if (my_hitboxID.hbox_num > 2) sound_play(asset_get("sfx_blow_medium2"), false, noone, 1,  0.8);
        break;
    
    // Claw grab
    case AT_EXTRA_3:
        if (my_hitboxID.hbox_num == 1) {
        	if (is_voiced) {
				var voice_line = random_func_2((current_second % 50) + get_player_color( player ), 7, true); // TODO: does this desync?
				if (voice_line == 1) sound_play(sound_get("ig_claw_1"), false, 0, 1, 1);
				else if (voice_line == 2) sound_play(sound_get("ig_claw_2"), false, 0, 1, 1);
				else if (voice_line == 3) sound_play(sound_get("ig_claw_3"), false, 0, 1, 1);
				else if (voice_line == 4) sound_play(sound_get("ig_claw_4"), false, 0, 1, 1);
				else if (voice_line == 5) sound_play(sound_get("ig_claw_5"), false, 0, 1, 1);
				print_debug (voice_line)
			}
			
            print_debug("hit!");
            window = 3;
    		window_timer = 0;
    		grabbed_player_obj = hit_player_obj;
    		my_hitboxID.destroyed_next = true;
    		has_long_endlag = false;
    		
    		hitpause = true;
    		hitstop = hit_player_obj.hitstop;
    		hitstop_full = hitstop;
        } else if (my_hitboxID.hbox_num == 2 || my_hitboxID.hbox_num == 3) sound_play(asset_get("sfx_frog_uspecial_cast"), false, noone, 0.6, 1.2);
        else if (my_hitboxID.hbox_num == 4) sound_play(asset_get("sfx_abyss_hazard_burst"));
        break;
    
    case AT_EXTRA_2:
            spawn_hit_fx( hit_player_obj.x, hit_player_obj.y - (hit_player_obj.char_height / 2), 301)
        break;
    
    case AT_NSPECIAL:
        //turn into rune post-release
        //if (my_hitboxID.hbox_num == 3) {
        //    sound_play(asset_get("sfx_swish_medium"), false, noone, 1.2, 0.6);
        //    
        //    if (!hit_player_obj.twenny_hexed) {
        //        hit_player_obj.twenny_text_timer = 120;
        //        sound_play(sound_get("hexed"));
        //    }
        //    
        //    hit_player_obj.twenny_hexed = true;
        //    hit_player_obj.twenny_hex_owner = player;
        //    hit_player_obj.twenny_hex_timer = 360;
        //    hit_player_obj.twenny_hex_outline = brittle_outline;
        //    hit_player_obj.knockback_scaling += brittle_kb_mod;
        //    
        //    with (hit_player_obj) {
        //        outline_color = twenny_hex_outline;
        //        init_shader();
        //    }
        //}
        break;

    
}