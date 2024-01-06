////////////////////
////recall stuff////
////////////////////
switch script {
    //init
    case 0:
    //initialise recall stuff
    recall_array = []
    recall_timer = 0
    recall_active = false
    recall_increment = 5 //number of frames betwen saves
    recall_delay = 0
    recall_timer_max = 100
    
    recall_prev_x = x
    recall_prev_y = y
    
    orig_hsp = 0
    orig_vsp = 0
    
    y_offset = 0
    
    draw_sprite_index = sprite_index
    fake_angle = 0 //fake rotation angle
    
    recall_cooldown = 0
    die = false
    break;
    
    //update
    case 1: 
    if !recall_active { //recall is inactive
        if recall_cooldown > 0 recall_cooldown--
        if recall_timer != 0 {
            sound_stop(sound_get("timer_tick"))
            sound_play(sound_get("stasis_end_weak"))
            hsp = orig_hsp
            vsp = orig_vsp
            if ("fake_vsp" in self) fake_vsp = orig_vsp
            if ("fake_hsp" in self) fake_hsp = orig_hsp
        }
        recall_delay = 0
        recall_timer = 0
        //update recall array
        if timer mod recall_increment == 1 && !(abs(recall_prev_x - x) < 0.1 && abs(recall_prev_y - y) < 0.1) {
            var arr_data = [x, y, hsp, vsp]
            array_push(recall_array, arr_data)
        }
        recall_prev_x = x
        recall_prev_y = y
    } else { //recall is active
        recall_delay++
        //real_hsp = 0
        //real_vsp = 0
        
        if recall_delay == 1 {
            sound_play(asset_get("sfx_abyss_hex_hit"))
            spawn_hit_fx(x, y, 302)
            orig_hsp = hsp
            orig_vsp = vsp
            //spawn_hit_fx(x, y, 109)
        }
        
        hsp = 0
        vsp = 0
        if ("fake_vsp" in self) fake_vsp = 0
        if ("fake_hsp" in self) fake_hsp = 0
        
        if recall_delay > 20 { //delay
            recall_timer++
            if recall_timer == 1 {
                sound_play(sound_get("timer_tick"), true)
            }
            if recall_timer mod recall_increment == 0 && array_length(recall_array) > 0 { //reduce recall array length every increment
                recall_array = array_slice(recall_array, 0, array_length(recall_array) - 1)
            }
            
            //move article position to previous point every increment
            if array_length(recall_array) > 1 {
                var start_index = recall_array[array_length(recall_array)-1]
                var end_index = recall_array[array_length(recall_array)-2]
                //x = ease_linear(start_index[0], end_index[0], recall_timer mod recall_increment, recall_increment)
                //y = ease_linear(start_index[1], end_index[1], recall_timer mod recall_increment, recall_increment)
                
                //need to use hsp/vsp to get platforms to work with players standing on them
                hsp = -start_index[2]
                vsp = -start_index[3]
                
                //x and y position comparison, alter hsp and vsp slightly if too offset
                var x_diff = x - ease_linear(start_index[0], end_index[0], recall_timer mod recall_increment, recall_increment)
                var y_diff = y - ease_linear(start_index[1], end_index[1], recall_timer mod recall_increment, recall_increment)
    
                hsp -= floor(x_diff/4)
                vsp -= floor(y_diff/4)
            }
        }
    }
    
    if recall_timer >= recall_timer_max {
        recall_active = false
        recall_cooldown = 30
    }
    
    //timer low
    /*
    if !recall_active && die {
        die_timer++
        if die_timer == 1 {
            sound_play(sound_get("Obj_AirPlatform_LifeLow"), false, noone, 0.5)
        }
        if die_timer == 120 {
            destroy = true
        }
    }
    */
    
    //blastzone destroy
    if (x > player_id.room_width + 110) || (x < -110) || (y > player_id.room_height + 150) {
        destroyed = true
        die = true
        sound_play(sound_get("SpObj_Disappear_short"))
    }
    break;
    
    //post draw
    case 2:
    if recall_active {
        through_platforms = 2
    	if ("hitbox_timer" in self) {
    	    hitbox_timer = 0
    	}
    	//recall holograms
    	//shader_start()
    	var period = 20 //period of time between holograms
    	for (var i = 0; i < ceil(array_length(recall_array) * recall_increment/period); i++) {
    		var arr_item = recall_array[i*ceil(period/recall_increment)]
    		draw_sprite_ext(draw_sprite_index, 1, arr_item[0], arr_item[1], spr_dir, 1, fake_angle, c_white, 0.3)
    	}
    	
    	//item overlay
    	//draw_sprite_ext(draw_sprite_index, 0, x, y, spr_dir, 1, fake_angle, c_yellow, 0.3)
    	
    	//timer dial
    	draw_sprite_ext(sprite_get("recall_dial"), floor(29*recall_timer/recall_timer_max), x, y + y_offset, 1, 1, 0, c_white, 1)
    	
    	//recall lines
    	shader_end();
    	draw_set_alpha(0.6)
    	//var col_r = get_color_profile_slot_r(get_player_color(player), 0)
    	//var col_g = get_color_profile_slot_g(get_player_color(player), 0)
    	//var col_b = get_color_profile_slot_b(get_player_color(player), 0)
    	//var col_final = make_color_rgb(col_r, col_g, col_b);
    	var col_final = $4bbde3
    	
    	for (var i = 0; i < array_length(recall_array)-1; i++) {
    		var item_cur = recall_array[i]
    		var item_next = recall_array[i+1]
    		draw_line_width_color(item_cur[0], item_cur[1] + y_offset, item_next[0], item_next[1] + y_offset, 5, col_final, col_final)
    	}
    	draw_set_alpha(1)
    }
    
    //if timer > 0 && timer <= 40 draw_sprite_ext(draw_sprite_index, 0, x, y, spr_dir, 1, fake_angle, c_white, 1 - (timer/20))
    /*
    if die {
    	draw_sprite_ext(draw_sprite_index, 0, x, y, spr_dir, 1, fake_angle, c_white, 1 - ((die_timer mod 60)/40))
    }
    */
    break;
}
