var stagex_right = (stagex+get_stage_data( SD_WIDTH))

if(y + 250 > get_stage_data(SD_BOTTOM_BLASTZONE_Y) && !ai_recovering && free && state != PS_HITSTUN){
    ai_recovering = true;
}

if (ai_recovering)
{
    if(y + 100 > get_stage_data(SD_BOTTOM_BLASTZONE_Y) && djumps == 0 && state_cat != SC_AIR_COMMITTED && (state_cat != SC_HITSTUN || (state_cat == SC_HISTUN && state == PS_TUMBLE))){
        set_state(PS_DOUBLE_JUMP);
        djumps++;
        vsp = -djump_speed;
    }
    distY = y-stagey;
    if (x<stagex) 
    {
        distX=stagex-x;
    } 
    else 
    {
        distX = x-(stagex+get_stage_data( SD_WIDTH));
    }
    if (distX>100 && has_walljump)
    {
        if(y + 150 < get_stage_data(SD_BOTTOM_BLASTZONE_Y)){
            up_down = false;
        }
         if (x < stagex)
        {
            right_down = true;
        }
        else if (x > stagex_right)
        {
            left_down = true;
        }
    }
    switch (state)
    {
        case PS_ATTACK_AIR:
            switch (attack)
            {
                case AT_FSPECIAL:
                    jump_down = true;
                    if(place_meeting(x + 2 * spr_dir, y, asset_get("par_block")) && has_walljump && jump_down){
                        spr_dir *= -1;
                        set_state(PS_WALL_JUMP);
                    }
                    switch(window){
                        case 1 : case 2:
                            var f_len = get_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH) + 2;
                            var f_speed = get_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED);
                            print(f_len * f_speed + 2);
                            if(y + 150 < get_stage_data(SD_BOTTOM_BLASTZONE_Y) && f_len * f_speed + 2 < distX){
                                special_down = true;
                            }
                        break;
                    //     case 6:
                    //         var x_center = get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X);
        	    	      //  var y_center = get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y);
        	    	      //  var x_offset = get_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH)/2 - 10;
        	    	      //  var y_offset = get_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT)/2 - 6;
        	    	      //  with(hurtboxID){
        	    	      //      var collision = collision_ellipse(other.x + (x_center - x_offset - 5) * other.spr_dir, other.y + y_center - y_offset, other.x + (x_center + x_offset - 5) * other.spr_dir, other.y + y_center + y_offset, pHurtBox, true, true);
        	    	      //  }
        	    	      //  if(collision){
        	    	      //      jump_pressed = false;
                	   // 		window = 8;
                	   // 		window_timer = 0;
                	   // 		vsp *= .2;
                	   // 		hsp *= .2;
                	   // 		sound_play(sound_get("sfx_dashswing"));
                	   // 		set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 9);
        	    	      //  }
                    //     break;
                    }
                break;
                case AT_USPECIAL:
                    if(!has_hit_player){
                        shield_down = true;
                    }
                    uspecial_pratless = (y < stagey + char_height);
                    with(oPlayer){
                        if(self != other && hit_player_obj == other && variable_instance_exists(self, "calculated_hitstun")){
                            calculated_hitstun = 999;
                        }
                    }
                break;
            }
        break;
    }
} else {
    switch (state)
    {
        case PS_ATTACK_GROUND:
            switch (attack)
            {
                case AT_FSPECIAL:
                    jump_pressed = true;
                    set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 16);
                    max_jump_hsp = get_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED);
                break;
                case AT_JAB:
                    set_attack(AT_DSPECIAL_2);
                break;
            }
        break;
    }
}