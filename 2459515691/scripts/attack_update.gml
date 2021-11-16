#macro AT_NSPECIALAIR 40;
#macro AT_NSPECIAL2 41;
#macro AT_NSPECIAL2AIR 42;
#macro AT_SPECIALFAIL 43;
#macro AT_BAIRFAIL 44;
#macro AT_DSPECIAL2 45;
#macro AT_TAUNT2 46;
#macro AT_ALTTAUNT 47;

//B - Reversals
switch (attack)
{
    case AT_NSPECIAL:
    case AT_FSPECIAL:
    case AT_USPECIAL:
    case AT_SPECIALFAIL:
    case AT_DSPECIAL:
    case AT_DSPECIAL2:
        trigger_b_reverse();
        break;
}

switch (attack)
{

    case AT_JAB:
    if (window = 8 && window_timer = 1 && !hitpause) spawn_base_dust(x+spr_dir*4, y, "dash", spr_dir);
    break;

    case AT_FTILT:
    if (window = 1 && window_timer = 5 && !hitpause) spawn_base_dust(x+spr_dir*16, y, "dash_start", spr_dir);
    if (window = 3 && window_timer = 3 && !hitpause) {
          //spawn_base_dust(x+spr_dir*28, y, "walk", -spr_dir);
          spawn_base_dust(x-spr_dir*12, y, "walk", spr_dir);
    }
    //if (window == 3)
    //{
    //    if (!free)
    //    {
    //        if (was_parried)
    //        {
    //            iasa_script();
    //            set_state(PS_PRATLAND);
    //        }
    //        else
    //        {
    //            iasa_script();
    //            set_state(PS_LAND);
    //        }
    //    }
    //    if (window_timer == 15 && was_parried)
    //    {
    //        iasa_script();
    //        set_state(PS_PRATFALL);
    //    }
    //}
    can_move = false;
    //can_fast_fall = false;
    break;

    case AT_DATTACK:
    if (window = 2 && window_timer = 1 && !hitpause) spawn_base_dust(x+spr_dir*16, y, "dash_start", spr_dir);
    if (window = 4 && window_timer = 1 && !hitpause) spawn_base_dust(x-spr_dir*4, y, "land", spr_dir);
    break;

    case AT_BAIR:
    if (window == 3)
    {
        if (window_timer == 3 && !hitpause)
        {
            bair_explosion = spawn_hit_fx(x-spr_dir*46, y-20, blue_explosion);
            bair_explosion.depth = depth - 1;	
            if (fuel > 0) fuel--;
        }
    }
    break;

    case AT_DAIR:
    if (window = 2 || window = 3)
    {
        if (window = 2 && window_timer = 1 && !hitpause) AfterImage(0);
        if (has_hit || attack_pressed || down_strong_pressed || down_stick_pressed)
        {
            if (fuel = 0)
            {
                window = 7;
            }
            else
            {
                window = 5;
            }
            window_timer = 1;
            destroy_hitboxes()
        }
        if (!free)
        {
            destroy_hitboxes()
            window = 9;
            window_timer = 1;
            spawn_base_dust(x+spr_dir*6, y, "land", spr_dir);
        }
    }
    if (window == 5)
    {
        if (window_timer == 2 && !hitpause)
        {
            dair_explosion = spawn_hit_fx(x+spr_dir*16, y+6, blue_explosion);
            dair_explosion.depth = depth - 1;	
            if (fuel > 0) fuel--;
        }
    }
    if (window = 4 && window_timer = 6 || window = 6 && window_timer = 15 || window = 8 && window_timer = 10 || window = 10 && window_timer = 6)
    {
        if (was_parried)
        {
            iasa_script();
            set_state(free?PS_PRATFALL:PS_PRATLAND);
        }
        else
        {
            iasa_script();
            if (window != 10) set_state(free?PS_IDLE_AIR:PS_LAND);
            else set_state(free?PS_IDLE_AIR:PS_IDLE);
        }
    }
    if (window = 4 || window = 7 || window = 8)
    {
        if (!free)
        {
            if (was_parried)
            {
                iasa_script();
                set_state(PS_PRATLAND);
            }
            else
            {
                iasa_script();
                set_state(PS_LAND);
            }
        }
    }
    if (window = 4) move_cooldown[AT_DAIR] = 12;
    if (window = 6) move_cooldown[AT_DAIR] = 8;
    if (window < 4)
    {
        if (get_player_color(player) == 0) afterImageindex = (sprite_get("dair_afterimage"));
        else afterImageindex = sprite_index;
    }
    else afterImageindex = (asset_get("empty_sprite"));
    break;

    case AT_USTRONG:
        if (window == 4 && window_timer < 2) easetimer = 0;
        if (window == 5) char_height = 56;
        if (window == 1)
        {
            easetimer = 0;
            char_height = 56;
        }
        if (window == 3 && window_timer > 2)
        {
            if (easetimer < 12)
            {
                char_height = ease_quartOut(56, 118, easetimer, 12);
                easetimer++;
            }
        }
        if (window == 4 && window_timer > 4)
        {
            if (easetimer < 7)
            {
                char_height = ease_quartIn(118, 56, easetimer, 7);
                easetimer++;
            }
        }
        if (window == 3 && window_timer == 3 && !hitpause) sound_play(asset_get("sfx_ell_eject"));
        if (window == 5 && window_timer == 1 && !hitpause) sound_play(asset_get("sfx_blow_weak1"));
        if (window = 3 && window_timer = 1 && !hitpause) spawn_base_dust(x, y, "jump", spr_dir);
        if (window = 1 && window_timer = 1 && !hitpause || window = 5 && window_timer = 1 && !hitpause) 
        {
            spawn_base_dust(window!=5?x+spr_dir*16:x+spr_dir*6, window=3?y-36:y, window!=5?"walk":"dash", -spr_dir);
            spawn_base_dust(window!=5?x-spr_dir*14:x-spr_dir*6, window=3?y-36:y, window!=5?"walk":"dash", spr_dir);
        }
        break;

    case AT_FSTRONG:
        if (window == 5 && window_timer < 2) easetimer = 0;
        if (window == 6) char_height = 56;
        if (window == 1)
        {
            easetimer = 0;
            char_height = 56;
        }
        if (window == 4 && window_timer > 10)
        {
            if (easetimer < 4)
            {
                char_height = ease_quartOut(56, 68, easetimer, 4);
                easetimer++;
            }
        }
        if (window == 5 && window_timer > 4)
        {
            if (easetimer < 6)
            {
                char_height = ease_quartIn(68, 56, easetimer, 6);
                easetimer++;
            }
        }
        if (window == 3 && window_timer == 1 && !hitpause) sound_play(asset_get("sfx_ell_eject"));
        if (window == 4 && window_timer == 11 && !hitpause) sound_play(asset_get("sfx_swipe_heavy1"));
        if (window = 5 && window_timer = 1 && !hitpause) 
        {
            spawn_base_dust(x+spr_dir*64, y, "dash_start", -spr_dir);
            spawn_base_dust(x+spr_dir*66, y, "dash", spr_dir);
        }
        break;

    case AT_DSTRONG:
        if (window == 3 && window_timer == 3 && !hitpause)
        {
            sound_play(asset_get("fx_swipe_heavy1"));
            spawn_base_dust(x+spr_dir*66, y, "dash_start", -spr_dir);
        }
        if (window == 4 && window_timer == 12 && !hitpause) 
        {
            sound_play(asset_get("sfx_swipe_heavy2"));
            spawn_base_dust(x-spr_dir*66, y, "dash_start", spr_dir);
        }
        break;

    case AT_SPECIALFAIL:
    if (window == 2 && window_timer == 1 && failboost = true){
        if (failboosttype = 1){
            vsp = -7;
            hsp = 0.5*spr_dir;
        }
        if (failboosttype = 2){
            vsp = -3;
            hsp = 5*spr_dir;
        }
        spawn_hit_fx(x - spr_dir*14, y+6, fail_smoke_fx);
        failboost = false;
    }
    if (!free)
    {
        iasa_script();
        set_state(PS_LAND);
    }
    if (prev_state == PS_DOUBLE_JUMP) djumps = 1;
    break;

    case AT_USPECIAL:
    if (window == 2)
    {
        if (window_timer = 1 && !hitpause)
        {
            sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
            spawn_hit_fx(x - spr_dir*4, y, blue_explosion);
            if (fuel > 0) fuel--;
            AfterImage(0);
        }
    }
    can_fast_fall = false;
    if (get_player_color(player) == 0) afterImageindex = (sprite_get("uspecial_afterimage"));
    else afterImageindex = sprite_index;
    break;

    case AT_FSPECIAL:
    if (window == 2)
    {
        if (window_timer == 1 && !hitpause)
        {
            sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
            spawn_hit_fx(x - spr_dir*32, y+2, blue_explosion);
            if (fuel > 0) fuel--;
            AfterImage(0);
        }
    }
    if (window == 2 || window == 3)
    {
        if (special_pressed)
        {
            window = 4;
            window_timer = 1;
        }
    }
    if (window == 6 && !free)
    {
        if (was_parried)
        {
            iasa_script();
            set_state(PS_PRATLAND);
        }
        else
        {
            iasa_script();
            set_state(PS_LAND);
        }
    }
    can_fast_fall = false;
    if (window < 4)
    {
        if (get_player_color(player) == 0) afterImageindex = (sprite_get("fspecial_afterimage"));
        else afterImageindex = sprite_index;
    }
    else afterImageindex = (asset_get("empty_sprite"));
    if (window < 6) can_move = false;
    break;

    case AT_DSPECIAL:
    if (window == 2 && window_timer == 1)
    {
        vsp = free?-5:-7;
        articlestate = 0;
        fueltank_ins = instance_create(x + spr_dir*4, y, "obj_article1");
    }
    if (window > 2 && !free)
    {
        iasa_script();
        set_state(PS_LAND);
    }
    break;

    case AT_DSPECIAL2:
    if (window == 2 && window_timer == 1)
    {
        sound_play(asset_get("sfx_may_arc_cointoss"));
        articlestate = 2;
        fieldcooldown = 1;
        tankcooldown = 360;
    }
    break;

    case AT_NSPECIAL:
        if (window == 1 && window_timer == 1) { 
        	grabbed_player_obj = noone; 
        	grabbed_player_relative_x = 0;
        	grabbed_player_relative_y = 0;
        }
        if (!has_hit_player)
        {
            if (window == 3 && window_timer == 16)
            {
                iasa_script();
                set_state(free?PS_IDLE_AIR:PS_IDLE);
            }
        }
    break;

    case AT_NSPECIAL2:
    if (hitpause = true && hitstop <= 8 && (up_down || down_down || left_down || right_down))
    {
        hitstop = 0;
        hitpause = false;
        has_hit = false;
        has_hit_player = false;
        hsp = old_hsp;
        vsp = old_vsp;
    }
    can_fast_fall = false;
    hurtboxID.sprite_index = get_attack_value(AT_NSPECIAL2, AG_HURTBOX_SPRITE);
    if (instance_exists(grabbed_player_obj)) 
    {
        if (!hitpause && window = 1)
            {
                if (down_down)
                {
                    window = 12;
                    window_timer = 0;
                }
                else if (up_down)
                {
                    window = 9;
                    window_timer = 0;
                }
                else if (left_down && spr_dir = 1 || right_down && spr_dir = -1)
                {
                    window = 5;
                    window_timer = 0;
                }
                else
                {
                    window = 2;
                    window_timer = 0;
                }
            }
        //grounded fthrow
        if (window >= 2 && window <= 4)
        {
	    if (window = 4) grabbed_player_obj = noone;
	    else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) grabbed_player_obj = noone;
    	    else 
            {
		    grabbed_player_obj.hitstop = 2;
		    grabbed_player_obj.hitpause = true;
		
		    if (window_timer <= 1) 
                    {
			    grabbed_player_relative_x = grabbed_player_obj.x - x;
			    grabbed_player_relative_y = grabbed_player_obj.y - y;
		    }
		 
		    if (window == 2) 
                    { 
			    var pull_to_x = 32 * spr_dir;
			    var pull_to_y = -2;
			    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			    grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		    }
              }
        }
        //grounded bthrow
        if (window >= 5 && window <= 8)
        {
	    if (window = 8) grabbed_player_obj = noone;
	    else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) grabbed_player_obj = noone;
    	    else 
            {
		    grabbed_player_obj.hitstop = 2;
		    grabbed_player_obj.hitpause = true;
		
		    if (window_timer <= 1) 
                    {
			    grabbed_player_relative_x = grabbed_player_obj.x - x;
			    grabbed_player_relative_y = grabbed_player_obj.y - y;
		    }
		 
		    if (window == 5) 
                    { 
			    var pull_to_x = -32 * spr_dir;
			    var pull_to_y = -8;
			    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			    grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		    }
              }
        }
        //grounded uthrow
        if (window >= 9 && window <= 11)
        {
	    if (window = 11 || window = 10 && window_timer > 6) grabbed_player_obj = noone;
	    else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) grabbed_player_obj = noone;
    	    else 
            {
		    grabbed_player_obj.hitstop = 2;
		    grabbed_player_obj.hitpause = true;
		
		    if (window_timer <= 1) 
                    {
			    grabbed_player_relative_x = grabbed_player_obj.x - x;
			    grabbed_player_relative_y = grabbed_player_obj.y - y;
		    }
		 
		    if (window == 9) 
                    { 
			    var pull_to_x = 34 * spr_dir;
			    var pull_to_y = 5;
			    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			    grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		    }
		    if (window == 10) 
                    { 
			    var pull_to_x = 30 * spr_dir;
			    var pull_to_y = -36;
			    var window_length = 6;
                            if (window_timer <= window_length)
                            {
			    grabbed_player_obj.x = x + ease_expoInOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
                            }
		    }
              }
        }
        //grounded dthrow
        if (window >= 12 && window <= 17)
        {
	    if (window >= 15) grabbed_player_obj = noone;
	    else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) grabbed_player_obj = noone;
    	    else 
            {
		    grabbed_player_obj.hitstop = 2;
		    grabbed_player_obj.hitpause = true;
		
		    if (window_timer <= 1) 
                    {
			    grabbed_player_relative_x = grabbed_player_obj.x - x;
			    grabbed_player_relative_y = grabbed_player_obj.y - y;
		    }
		 
		    if (window == 12) 
                    { 
			    var pull_to_x = 18 * spr_dir;
			    var pull_to_y = 3;
			    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			    grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		    }
		    if (window == 13) 
                    { 
			    var pull_to_x = 2 * spr_dir;
			    var pull_to_y = -4;
			    var window_length = 6;
                            if (window_timer <= window_length)
                            {
			    grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
                            }
                            else
                            {
			    grabbed_player_obj.x = x + pull_to_x;
			    grabbed_player_obj.y = y + pull_to_y;
                            }
		    }
                    if (window == 14) 
                    { 
			    var pull_to_x = 0 * spr_dir;
			    var pull_to_y = 8;
			    var window_length = 2;
                            if (window_timer <= window_length)
                            {
			    grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
                            }
                            else
                            {
			    grabbed_player_obj.x = x + pull_to_x;
			    grabbed_player_obj.y = y + pull_to_y;
                            }
		    }
              }
        }
    }
    if (window = 4 && window_timer == 12 || window = 8 && window_timer == 14 || window = 11 && window_timer == 11 || window = 17 && window_timer == 8) 
    {
        move_cooldown[AT_NSPECIAL] = 8;
        iasa_script();
        set_state(free?PS_IDLE_AIR:PS_IDLE);
    }
    break;

    case AT_NSPECIAL2AIR:
    if (hitpause = true && hitstop <= 8 && (up_down || down_down || left_down || right_down))
    {
        hitstop = 0;
        hitpause = false;
        has_hit = false;
        has_hit_player = false;
        hsp = old_hsp;
        vsp = old_vsp;
    }
    can_fast_fall = false;
    hurtboxID.sprite_index = get_attack_value(AT_NSPECIAL2AIR, AG_HURTBOX_SPRITE);
    if (instance_exists(grabbed_player_obj)) 
    {
            if (!hitpause && window = 1)
            {
                if (down_down)
                {
                    if (fuel = 0)
                    {
                            window = 16;
                            window_timer = 0;
                    }
                    else
                    {
                        window = 12;
                        window_timer = 0;
                    }
                }
                else if (up_down)
                {
                    window = 9;
                    window_timer = 0;
                }
                else if (left_down && spr_dir = 1 || right_down && spr_dir = -1)
                {
                    window = 5;
                    window_timer = 0;
                }
                else
                {
                    window = 2;
                    window_timer = 0;
                }
            }
        //aerial fthrow
        if (window >= 2 && window <= 4)
        {
	    if (window = 4) grabbed_player_obj = noone;
	    else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) grabbed_player_obj = noone;
    	    else 
            {
		    grabbed_player_obj.hitstop = 2;
		    grabbed_player_obj.hitpause = true;
		
		    if (window_timer <= 1) 
                    {
			    grabbed_player_relative_x = grabbed_player_obj.x - x;
			    grabbed_player_relative_y = grabbed_player_obj.y - y;
		    }
		 
		    if (window == 2) 
                    { 
			    var pull_to_x = 32 * spr_dir;
			    var pull_to_y = -2;
			    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			    grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		    }
              }
        }
        //aerial bthrow
        if (window >= 5 && window <= 8)
        {
	    if (window = 8) grabbed_player_obj = noone;
	    else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) grabbed_player_obj = noone;
    	    else 
            {
		    grabbed_player_obj.hitstop = 2;
		    grabbed_player_obj.hitpause = true;
		
		    if (window_timer <= 1) 
                    {
			    grabbed_player_relative_x = grabbed_player_obj.x - x;
			    grabbed_player_relative_y = grabbed_player_obj.y - y;
		    }
		 
		    if (window == 5) 
                    { 
			    var pull_to_x = -32 * spr_dir;
			    var pull_to_y = -8;
			    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			    grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		    }
              }
        }
        //aerial uthrow
        if (window >= 9 && window <= 11)
        {
	    if (window = 11 || window = 10 && window_timer > 6) grabbed_player_obj = noone;
	    else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) grabbed_player_obj = noone;
    	    else 
            {
		    grabbed_player_obj.hitstop = 2;
		    grabbed_player_obj.hitpause = true;
		
		    if (window_timer <= 1) 
                    {
			    grabbed_player_relative_x = grabbed_player_obj.x - x;
			    grabbed_player_relative_y = grabbed_player_obj.y - y;
		    }
		 
		    if (window == 9) 
                    { 
			    var pull_to_x = 34 * spr_dir;
			    var pull_to_y = 5;
			    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			    grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		    }
		    if (window == 10) 
                    { 
			    var pull_to_x = 30 * spr_dir;
			    var pull_to_y = -36;
			    var window_length = 6;
                            if (window_timer <= window_length)
                            {
			    grabbed_player_obj.x = x + ease_expoInOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
                            }
		    }
              }
        }
        //aerial dthrow
        if (window >= 12 && window <= 15 || window >= 16 && window <= 19)
        {
	    if (window = 15 || window = 19) grabbed_player_obj = noone;
	    else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) grabbed_player_obj = noone;
    	    else 
            {
		    grabbed_player_obj.hitstop = 2;
		    grabbed_player_obj.hitpause = true;
		
		    if (window_timer <= 1) 
                    {
			    grabbed_player_relative_x = grabbed_player_obj.x - x;
			    grabbed_player_relative_y = grabbed_player_obj.y - y;
		    }
		 
		    if (window == 12 || window == 16) 
                    { 
			    var pull_to_x = 2 * spr_dir;
			    var pull_to_y = 11;
			    var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			    grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			    grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		    }
              }
        }
    }
    if (window = 4 && window_timer == 12 || window = 8 && window_timer == 8 || window = 11 && window_timer == 7 || window = 15 && window_timer == 5 || window = 19 && window_timer == 5) 
    {
        move_cooldown[AT_NSPECIAL] = 8;
        iasa_script();
        set_state(free?PS_IDLE_AIR:PS_IDLE);
    }
    if (window = 14 && window_timer = 1 && fuel > 0)
    {
            sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
            dthrow_explosion = spawn_hit_fx(x-spr_dir*2, y-8, blue_explosion);
            dthrow_explosion.depth = depth - 1	
            if (fuel > 0) fuel--;
    }
    if ((window > 17 || window = 15 || window = 11 || window = 8 || window = 4) && !free)
    {
        move_cooldown[AT_NSPECIAL] = 8;
        iasa_script();
        set_state(PS_LAND);
    }
    break;

    case AT_ALTTAUNT:
    if (window = 1 && window_timer == 53 || window = 2 && window_timer == 121 || window = 3 && window_timer == 21 || window = 4 && window_timer == 21) 
    {
        iasa_script();
        set_state(free?PS_IDLE_AIR:PS_IDLE);
    }
    if (window = 6)
    {
        if (taunt_down) 
        {
            if (!sussy)
            {
                sound_play(sound_get("fart"));
                sound_play(sound_get("mask"), true);
                sussy = true;
            }
        }
        else
        {
            sound_stop(sound_get("mask"));
            iasa_script();
            set_state(free?PS_IDLE_AIR:PS_IDLE); 
            sussy = false;
        }
    }
    if (window = 2) char_height = 78;
    if (window = 5 || window = 6) char_height = 28;
    break;
}

#define AfterImage(_frames)
{
    afterImageTimer = clamp(_frames,1,afterImageMax)==_frames?_frames:afterImageMax;
}

#define spawn_base_dust
var dlen;
var dfx;
var dfg;
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx;
if dfg != -1 newdust.fg_sprite = dfg; 
newdust.dust_color = dust_color;
if dir != 0 newdust.spr_dir = dir; 
return newdust;