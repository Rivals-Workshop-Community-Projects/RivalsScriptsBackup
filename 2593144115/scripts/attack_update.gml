#macro AT_FTILT2 40;
#macro AT_UPTAUNT 41;

//B - Reversals
switch (attack)
{
    case AT_NSPECIAL:
    case AT_FSPECIAL:
    case AT_USPECIAL:
    case AT_DSPECIAL:
        trigger_b_reverse();
        break;
}

switch (attack)
{
    case AT_UPTAUNT:
    if (window = 2)
    {
        if (!taunt_down)
        {
            window = 3;
            window_timer = 0;
        }
        if (window_timer = 1 || window_timer = 16) sound_play(asset_get("sfx_swipe_weak1"));
    }
    break;

    case AT_FTILT:
    if (window == 1 && window_timer == 1) 
    { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    break;

    case AT_FTILT2:
    hurtboxID.sprite_index = get_attack_value(AT_FTILT2, AG_HURTBOX_SPRITE);
    if (instance_exists(grabbed_player_obj)) {
	
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		if (window == 1) { 			
			var pull_to_x = 40 * spr_dir;
			var pull_to_y = 3;
			
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
	  }
    }
    break;

    case AT_UTILT:
        if (window == 3 && window_timer < 2) easetimer = 0;
        if (window == 3 && window_timer == 12) char_height = 54;
        if (window == 1)
        {
            easetimer = 0;
            char_height = 54;
        }
        if (window == 2 && window_timer < 8)
        {
            if (easetimer < 7)
            {
                char_height = ease_quadOut(54, 92, easetimer, 6);
                easetimer++;
            }
        }
        if (window == 3 && window_timer > 4-has_hit)
        {
            if (easetimer < 11-has_hit*3)
            {
                char_height = ease_quadIn(92, 54, easetimer, 10-has_hit*3);
                easetimer++;
            }
        }
        break;

    case AT_UAIR:
        if (window == 3 && window_timer < 2) easetimer = 0;
        if (window == 4 && window_timer == 9) char_height = 54;
        if (window == 1)
        {
            easetimer = 0;
            char_height = 54;
        }
        if (window == 2 && window_timer > 0)
        {
            if (easetimer < 3)
            {
                char_height = ease_quartOut(54, 70, easetimer, 3);
                easetimer++;
            }
        }
        if (window == 4 && window_timer > 0)
        {
            if (easetimer < 6)
            {
                char_height = ease_quartIn(70, 54, easetimer, 6);
                easetimer++;
            }
        }
        break;

    case AT_FSTRONG:
        if (window == 3 && window_timer = 2 || window == 4 && window_timer = 1 || window == 5 && window_timer = 1) hsp = 0;
        if (window == 3 && window_timer = 1) hsp = 2*spr_dir;
        if (window == 3 && window_timer = 6) hsp = 34*spr_dir;
        if (window == 4 && window_timer = 2) hsp = 44*spr_dir;
        if (window < 7) can_move = false;
        if (window < 3) off_edge = false;
        else off_edge = true;
        break;

    case AT_USTRONG:
        if (window == 5 && window_timer < 2) easetimer = 0;
        if (window == 6 && window_timer == 12) char_height = 54;
        if (window == 1)
        {
            easetimer = 0;
            char_height = 54;
        }
        if (window == 4 && window_timer < 4)
        {
            if (easetimer < 4)
            {
                char_height = ease_expoOut(54, 96, easetimer, 3);
                easetimer++;
            }
        }
        if (window == 6 && window_timer < 16-has_hit*5)
        {
            if (easetimer < 16-has_hit*5)
            {
                char_height = ease_quadIn(96, 54, easetimer, 15-has_hit*5);
                easetimer++;
            }
        }
        break;

    case AT_USPECIAL:
        if (window == 3)
        {
            hsp = lengthdir_x(8, 80+window_timer*28)*spr_dir;
            vsp = lengthdir_y(8, 80+window_timer*28);
        }
        if (!hitpause) {
	    switch (window) {
                case 1:
                    if (window_timer = 1){
                        amaya_venom_consumed = false;
                    }
                break;

		case 4: //attack window  
                            if (has_hit_player && hit_player_obj.amaya_venom && hit_player_obj.amaya_venom_id == id && amaya_venom_consumed){
                                set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, hit_player_obj.amaya_venom_count);
                                //set_hitbox_value(AT_USPECIAL, 3, HG_EXTRA_HITPAUSE, floor( hit_player_obj.amaya_venom_count*(1+hit_player_obj.amaya_venom_count*2) )); //4, 12, 24, 40
                                //set_hitbox_value(AT_USPECIAL, 3, HG_EXTRA_HITPAUSE, 15*hit_player_obj.amaya_venom_count-10); //5, 20, 35, 50
                                set_hitbox_value(AT_USPECIAL, 3, HG_EXTRA_HITPAUSE, 8*hit_player_obj.amaya_venom_count-4); //4, 12, 20, 28
                                set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 5+hit_player_obj.amaya_venom_count*3); //8, 11, 14, 17
                                set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, hit_player_obj.amaya_venom_count*0.5+7.5); //8, 8.5, 9, 9.5
                                set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, hit_player_obj.amaya_venom_count*0.05 + 0.7); //0.75, 0.8, 0.85, 9
                            with (asset_get("oPlayer")) {
                                if (hitpause && amaya_venom && amaya_venom_id == other.id && state_cat == SC_HITSTUN && hit_player_obj == other.id
                                && last_attack == other.attack && state != PS_FROZEN){
                                    //x += (other.x+40*other.spr_dir - x)/5; // pulls the opponent to 40 pixels in front of you
                                    //y += (other.y - y) / 5; // pulls an airborne to your height
                                    if (free){
                                        //y += (other.y - y) / 5; // pulls an airborne to your height
                                    }
                                }
                            }
                            if (!hitpause && amaya_venom_consumed){
                                create_hitbox(AT_USPECIAL, 3, x, y);
                        }
                    }
                    break;
            }
        }
        can_fast_fall = false;
        break;

    case AT_NSPECIAL:
        if (window < 3 && free)
        {
            vsp = vsp*0.8;
            hsp = hsp*0.9;
        }
        if (window == 3 && window_timer = 1)
        {
            venombubble_ins = instance_create(x + spr_dir*10, y-10, "obj_article1");
            sound_play(asset_get("sfx_frog_nspecial_shove"));
            vsp = -7;
            hsp = -2*spr_dir;
            move_cooldown[AT_NSPECIAL] = 360;
        }
        break;

    case AT_FSPECIAL:
        if (!hitpause) {
	    switch (window) {
		case 1: //startup window.
    
			if (window_timer = 1) hadoken_fx_frame = 0;
                        if (window_timer = 6) sound_play(asset_get("sfx_frog_fspecial_charge_loop"), true, noone, 0.5, 1.2);

			break;
		
		case 2: //charging windows.
                case 3:

                        if (hadoken_charge >= 20 && window = 2)
                        {
                            window = 3;
                            if (hadoken_charge = 20)
                            { 
                                spawn_hit_fx(x-26*spr_dir, y-52, charge_shine);
                                sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
                            }
                        }
                        
			if (special_down) {
				if (hadoken_charge <= 30) hadoken_charge++;
                                hadoken_fx_frame++;
			}
			else {
				//skip to the next window
				window = 4;
				window_timer = 0;
			}
                        
                        if (hadoken_charge > 30) hadoken_charge = 30;
                        if (hadoken_fx_frame >= 24) hadoken_fx_frame = 0;
                            
                        if (shield_pressed)
                        {
                            if (left_down && spr_dir = -1 && !free || right_down && spr_dir = 1 && !free)
                            {
                                iasa_script();
                                set_state(PS_ROLL_FORWARD);
                            }
                            else if (left_down && spr_dir = 1 && !free || right_down && spr_dir = -1 && !free)
                            {
                                iasa_script();
                                set_state(PS_ROLL_BACKWARD);
                            }
                            else
                            {
				window = 7;
				window_timer = 0; 
                            }
                            sound_play(asset_get("sfx_frog_fspecial_cancel"));
                        }
                        
                break;
		
		case 5: //charge release window.
    
			if (window_timer != 1) break;
			
			var new_damage_value = 5 + round( hadoken_charge / 15 );
			set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, new_damage_value);
			set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, new_damage_value);

			fspecial_projectile = create_hitbox( AT_FSPECIAL, hadoken_charge>=20?2:1, x+40*spr_dir, y-29+free*6 );
			hadoken_charge = 0;

			break;
                    }
	}
        if (window > 3) sound_stop(asset_get("sfx_frog_fspecial_charge_loop"));
        break;

    case AT_DSPECIAL:
        if (!hitpause) {
	    switch (window) {
                case 1:
                    if (window_timer = 1){
                        dspecial_free = free;
                        amaya_venom_consumed = false;
                        dspecial_fx_frame = 12;
                    }
                break;

		case 2: //holding window.            
                    if (window_timer >= 6) 
                    {         
			if (!special_down){
				//skip to the next window
				window = 3;
				window_timer = 0;
			}
                        else{
                        window_timer = 5;
                        soft_armor = 8;
                        }
                    }
                    dspecial_fx_frame++;
                    if (dspecial_fx_frame = 13)
                    {
                        spawn_hit_fx(x-26*spr_dir, y-40, charge_shine);
                        dspecial_fx_frame = 0
                    }
                    break; 

		case 4: //attack window  
                            if (has_hit_player && hit_player_obj.amaya_venom && hit_player_obj.amaya_venom_id == id){
                                set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, hit_player_obj.amaya_venom_count);
                                //set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, floor( hit_player_obj.amaya_venom_count*(1+hit_player_obj.amaya_venom_count*2.5) )); //5, 15, 30, 50
                                set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 15*hit_player_obj.amaya_venom_count-10); //5, 20, 35, 50
                                set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6+hit_player_obj.amaya_venom_count*3); //9, 12, 15, 18
                                set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, hit_player_obj.amaya_venom_count*0.75+6); //6.75, 7.5, 8.25, 9
                                set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, hit_player_obj.amaya_venom_count*0.075 + 0.55); // 0.625, 0.7, 0.775, 0.85
                            with (asset_get("oPlayer")) {
                                if (hitpause && amaya_venom && amaya_venom_id == other.id && state_cat == SC_HITSTUN && hit_player_obj == other.id
                                && last_attack == other.attack && state != PS_FROZEN){
                                    x += (other.x+40*other.spr_dir - x)/5; // pulls the opponent to 40 pixels in front of you
                                    if (free){
                                        y += (other.y - y) / 5; // pulls an airborne to your height
                                    }
                                }
                            }
                            if (!hitpause && amaya_venom_consumed){
                                create_hitbox(AT_DSPECIAL, 2, x, y);
                        }
                    }
                    break;
            }
        }

        //if (!free && dspecial_free)
        //{
        //        iasa_script();
        //        set_state(PS_LANDING_LAG);
        //}
        //if (free && !dspecial_free)
        //{
        //        iasa_script();
        //        set_state(PS_IDLE_AIR);
        //}
        break;


}

#define BubbleIncrease()
{
//    if (instance_exists(venombubble_ins) && venombubble_ins.orig_player == player)
//    {
//        with(venombubble_ins)
//        {
//            if (player_id == other.id){
//                //bubble_number++;
//            }
//        } 
//    }
}