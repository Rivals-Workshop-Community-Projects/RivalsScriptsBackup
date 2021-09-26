//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//Training toggle 
if (training_toggle) {
    if (attack == AT_TAUNT) {
        if (window == 1 && window_timer == 1 && !hitpause) {
            slowstart_timer = slowstart_state == SLOWSTART_STATE_ON ? 0 : slowstart_duration;
        }
    }
}

//Soft armor
if (slowstart_state == SLOWSTART_STATE_OFF) {
    if (attack == AT_FTILT) {
        if (window == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 5) {
        	if (has_rune("E"))
        		super_armor = true;
        	else
        		soft_armor = 6;
        }
        else {
            soft_armor = 0;
        	super_armor = false;
        }
    }
    
    if (attack == AT_UTILT) {
        if (window == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 5) {
        	if (has_rune("E"))
        		super_armor = true;
        	else
        		soft_armor = 6;
        }
        else {
            soft_armor = 0;
        	super_armor = false;
        }
    }
    
    if (attack == AT_DTILT) {
        if (window == 1 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 5) {
        	if (has_rune("E"))
        		super_armor = true;
        	else
        		soft_armor = 6;
        }
        else {
            soft_armor = 0;
        	super_armor = false;
        }
    }
    
    if (attack == AT_FSTRONG) {
        if (window == 2 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 8) {
        	if (has_rune("D"))
        		super_armor = true;
        	else
        		soft_armor = 12;
        }
        else {
            soft_armor = 0;
        	super_armor = false;
        }
    }
    
    if (attack == AT_USTRONG) {
        if (window == 2 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 8) {
        	if (has_rune("D"))
        		super_armor = true;
        	else
        		soft_armor = 12;
        }
        else {
            soft_armor = 0;
        	super_armor = false;
        }
    }
    if (attack == AT_DSTRONG) {
        if (window == 2 && window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 8) {
        	if (has_rune("D"))
        		super_armor = true;
        	else
        		soft_armor = 12;
        }
        else {
            soft_armor = 0;
        	super_armor = false;
        }
    }
}

//Debris
if (attack == AT_FSTRONG) {
    if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)
    {
        var hfx = spawn_hit_fx(round(x) + (96 * spr_dir), round(y), fx_fstrong_debris);
        hfx.spr_dir = spr_dir;
        hfx.depth = depth - 1;
        
        sound_play(sound_get("sfx_step_l"))
    }
}
if (attack == AT_DSTRONG) {
    if (window == 2 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) && !hitpause)
    {
        sound_play(sound_get("sfx_step_l"))
    }
}


//Taunts
if (attack == AT_TAUNT) {
    if (window == 2 && window_timer == 1 && !hitpause) {
        shake_camera(12, 45);
    }
}
if (attack == AT_TAUNT_2) {
    if (slowstart_state == SLOWSTART_STATE_ON && state_timer == 1) {
            window = 2;
            window_timer = 0;
    }
    
    if (window <= 2 && window_timer == 29) {
        if (!taunt_down)
        {
            window = 3
            window_timer = 0;
        }
    }
}

//Speed increase on DATTACK
if (attack == AT_DATTACK) {
    if (window == 2) {
        if (slowstart_state == SLOWSTART_STATE_OFF && window_timer == 1) {
            hsp += 6 * spr_dir;
        }
    }
    if (window == 3 && has_rune("F")) {
    	can_ustrong = true;
    }
}

//Specials
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR) {
    move_cooldown[AT_NSPECIAL] = 15;
    move_cooldown[AT_NSPECIAL_AIR] = 15;
    can_move = false;
    can_fast_fall = false;
    
    var spawn_x = 104;
    var num_rocks = has_rune("H");
    
    if (window == 1 && !hitpause) {
    	var window_length = get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH)
    	if (window_timer == window_length - 3)
    		check_spawn_rock(x + 104 * spr_dir, y);
    	if (window_timer == window_length - 2)
    		check_spawn_rock2();
    	if (window_timer == window_length - 1)
    		check_spawn_rock3();
    }
    
    //Wall detection
    if (window == 2 && !hitpause) {
        
        if (num_rocks) {
    		var window_length = get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)
    		var window_now = (window_timer) % 5
    		var rock_mult = window_timer div 4;
	    	if (window_now == 1)
	    		check_spawn_rock(x + (104 + rock_mult * 64) * spr_dir, spawn_y);
	    	if (window_now == 2)
	    		check_spawn_rock2();
	    	if (window_now == 3)
	    		check_spawn_rock3();
			if (window_now == 4)
        		spawn_rock();
        }
        else {
    		if (window_timer == 1)
        		spawn_rock();
        }
    }
}

if (attack == AT_FSPECIAL) {
    can_fast_fall = false;
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    	fspecial_ground_dist = 0;
    }
    
    if (window == 6) {
        fspecial_ground_dist += vsp / 8;
    	fspecial_ground_dist = clamp(fspecial_ground_dist, 0, 50);
    }
    if (window == 5 || window == 6) {
        can_move = false;
        max_fall = 32;
        
		hsp = clamp(hsp + air_accel * (right_down - left_down), -air_max_speed, air_max_speed)
		
		//Damage checking
		/*
		var my_damage = get_player_damage(player);
		var opponent_damage = get_player_damage(grabbed_player_obj.player);
		
		
		if (opponent_damage >= my_damage) {
			hsp = clamp(hsp + air_accel * 1.75 * (grabbed_player_obj.right_down - grabbed_player_obj.left_down), -air_max_speed, air_max_speed)
		}
		*/
    }
    else {
        can_move = false;
        max_fall = def_max_fall;
    }
    if (window >= 4) {
    	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
    	if (window >= 8) { grabbed_player_obj = noone; }
    	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) {
    		grabbed_player_obj = noone; 
    	}
    
    	else {
    		if (window_timer <= 1) {
    			grabbed_player_relative_x = grabbed_player_obj.x - x;
    			grabbed_player_relative_y = grabbed_player_obj.y - y;
    		}
    		//keep the grabbed player in hitstop until the grab is complete.
    		grabbed_player_obj.hitstop = 2;
    		grabbed_player_obj.hitpause = true;
    		
    		//if this is the first frame of a window, store the grabbed player's relative position.
    		var pull_to_x = 0
    		var pull_to_y = 0;
    		var window_length = 2;
    		var grab_ease = false;
    		 
    		//on the first window, pull the opponent into the grab.
    		if (window == 4) { 
    			attack_invince = 1;
    			grabbed_player_obj.attack_invince = 1;
    		    window_length = 3;
    		    if (window_timer >= 0 && window_timer <= window_length) {
        			pull_to_x = 90 * spr_dir;
        			pull_to_y = -74;
    		    }
    			
    		    if (window_timer >= window_length && window_timer <= window_length * 2) {
        			pull_to_x = 40 * spr_dir;
        			pull_to_y = -48;
    		    }
    			
    		    if (window_timer >= window_length * 2 && window_timer <= window_length * 3) {
        			pull_to_x = 26 * spr_dir;
        			pull_to_y = -38;
    		    }
    		    
    		    if (window_timer >= window_length * 3 && window_timer <= window_length * 4) {
        			pull_to_x = -72 * spr_dir;
        			pull_to_y = -42;
    		    }
    		}
    		
    		
    		if (window == 5) { 
    			attack_invince = 1;
    			grabbed_player_obj.attack_invince = 1;
    		    window_length = 20;
    		    if (window_timer >= 0 && window_timer <= window_length) {
        			pull_to_x = -66 * spr_dir;
        			pull_to_y = -82;
    		    }
    			
    		    if (window_timer >= window_length && window_timer <= window_length * 2) {
        			pull_to_x = -62 * spr_dir;
        			pull_to_y = -78;
    		    }
    		}
    		
    		if (window == 6) { 
    			attack_invince = 1;
    			grabbed_player_obj.attack_invince = 1;
		    	pull_to_x = -68 * spr_dir;
    			pull_to_y = -76;
    		}
    		
    		if (window == 7) { 
    			attack_invince = 1;
    			grabbed_player_obj.attack_invince = 0;
    		    if (window_timer == 1 && !hitpause) {
    		        shake_camera(24, 4);
    		        spawn_hit_fx(round(x), round(y) - 24, 143);
    		        sound_play(sound_get("sfx_fspecial_land"));
    		    }
    		    window_length = 3;
    		    grab_ease = true;
		    	pull_to_x = -32 * spr_dir;
    			pull_to_y = 0;
    		}
    		if (window >= 7) {
    			attack_invince = 0;
    			off_edge = false;
    		}
    		if (grab_ease) {
    			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x * (spr_dir * image_xscale), window_timer, window_length);
    			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y* image_yscale, window_timer, window_length);
    		}
    		else {
    			grabbed_player_obj.x = x + pull_to_x * (spr_dir * image_xscale);
    			grabbed_player_obj.y = y + pull_to_y * image_yscale;
    		}
    		if (has_rune("G"))
	    		set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 15 * (1 + grabbed_player_obj.knockback_adj * 2))
    		
    		if (window == 6) {
		        if (slowstart_state == SLOWSTART_STATE_OFF && (get_player_damage(grabbed_player_obj.player) >= 100 || has_rune("M"))) {
					if (grabbed_player_obj.y >= room_height - abs(vsp)) {
				        grabbed_player_obj.x = x;
				        grabbed_player_obj.y = room_height + 256;
					}
		        }
    		}
    	}
    }
}

if (attack == AT_USPECIAL){
    can_fast_fall = false;
	var collision_x = 46;
    var collision_y = -48;
    var collision_w = 16;
    var collision_h = 48;
    var collision_x1 = collision_x - collision_w / 2;
    var collision_y1 = collision_y - collision_h / 2;
    var collision_x2 = collision_x + collision_w / 2;
    var collision_y2 = collision_y + collision_h / 2;
    var wall_test = false;
    
    if (window == 1) {
    	grav = 0.1
    }
    
    if (window == 2 && has_rune("A")) {
    	soft_armor = 8;
    }
    if (window == 2) {
        wall_test = spr_dir == 1 ? collision_rectangle(x + collision_x1, y - 122, x + collision_x2, y - 120, asset_get("par_block"), 1, 1) 
            : collision_rectangle(x - collision_x2, y - 122, x - collision_x1, y - 120, asset_get("par_block"), 1, 1)
    }
    if (window == 2) {
    	if (window_timer == 9)
		 {
		 	window_timer = 8;
		 }
    	 uspecial_wall_timer = 0;
        if (wall_test && uspecial_wall_times < uspecial_wall_times_max && !hitpause) {
            window = 4;
            window_timer = 0;
            hsp = 0;
            vsp = 0;
            wall_player_x = x;
            wall_player_xoffset = 0;
            uspecial_wall_times++;
            destroy_hitboxes();
        }
        if (shield_pressed && vsp >= 1) {
            window = 10;
            window_timer = 0;
            vsp -= 8;
            hsp /= 2;
            sound_play(asset_get("sfx_forsburn_consume_fail"))
            attack_end();
            set_state(PS_PRATFALL);
            uspecial_wall_timer = 0;
        }
       if (!free) {
       	window = 3;
       	window_timer = 0;
       }
    }
    
    if (window == 4) {
        if (window_timer == 1) {
        	shake_camera(4, 4);
            hsp = 0;
            vsp = 0;
            var wall_test2 = true;
            while (wall_test2 && abs(wall_player_xoffset) <= collision_h) {
            	wall_player_xoffset -= spr_dir
                wall_test2 = spr_dir == 1 ? collision_rectangle(wall_player_x + wall_player_xoffset + collision_x1, y + collision_y1, wall_player_x + wall_player_xoffset + collision_x2, y + collision_y2, asset_get("par_block"), 1, 1) 
                        : collision_rectangle(wall_player_x + wall_player_xoffset - collision_x2, y + collision_y1, wall_player_x + wall_player_xoffset - collision_x1, y + collision_y2, asset_get("par_block"), 1, 1)
            }
            wall_player_xoffset -= spr_dir;
            //var dust = spawn_base_dust(wall_player_x + wall_player_xoffset + 24 * spr_dir, y - 64, "land", 1);
            //dust.draw_angle = spr_dir == -1 ? 270 : 90;
        }
		//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
		var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
		if (window_timer <= window_length / 2) {
			x = wall_player_x + ease_circOut( 0, wall_player_xoffset, window_timer, window_length / 2);
		}
    }
    if (window == 5) {
    	vsp *= 0.2;
        
    	if ((up_down && !down_down) || (down_down && !up_down)) {
    		wall_climb_dir = up_down ? -1 : 1;
            window = 6;
            window_timer = 0;
    	}
    }
    
    if (window == 6) {
    	var wall_test4 = wall_climb_dir == -1 ? collision_point(x + 64 * spr_dir, y - 128, asset_get("par_block"), 1, 1) : collision_point(x + 64 * spr_dir, y + 32, asset_get("par_block"), 1, 1);
    	vsp = !wall_test4 ? 0 : clamp (vsp + 0.12 * wall_climb_dir, -1.1, 1.1);
    	
    	if (window_timer == 18 || window_timer == 42) {
    		sound_play(asset_get("sfx_kragg_rock_shatter"))
    	}
    	
    	if (!up_down && !down_down) {
    		window = 5;
    		window_timer = 0;
    	}
    }
    
    if (window == 5 || window == 6) {
    	uspecial_wall_timer ++;
        if (jump_pressed || attack_pressed || special_pressed || (can_tap_jump() && up_pressed)) {
            window = 7;
            window_timer = 0;
        }
        if (uspecial_wall_timer > uspecial_wall_timer_max) {
            can_jump = true;
            window = 10;
            window_timer = 0;
            attack_end();
            set_state(PS_PRATFALL);
            uspecial_wall_timer = 0;
        }
    }
    if (window == 4 || window == 5 || window == 6 || window == 7) {
        grav = 0;
        can_move = false;
        djumps = 0;
        var wall_test3 = spr_dir == 1 ? collision_rectangle(x + collision_x1, y + collision_y1, x + collision_x2 + 2, y + collision_y2, asset_get("par_block"), 1, 1) 
            : collision_rectangle(x - collision_x2 - 2, y + collision_y1, x - collision_x1, y + collision_y2, asset_get("par_block"), 1, 1)
        if (!wall_test3) {
            window = 10;
            window_timer = 0;
            attack_end();
            set_state(PS_PRATFALL);
        }
    }
    
    if (window == 7) {
    	vsp *= 0.1;
    	super_armor = true;
    }
    else if (window == 8) {
    	super_armor = true;
    }
    else if (window == 9) {
    	if (window_timer <= get_window_value(attack, window, AG_WINDOW_LENGTH) / 2)
    	{
    		super_armor = true;
    	}
	    else {
    		super_armor = false;
    	}
    }
    else {
    	super_armor = false;
    }
    
    if (window == 9) {
    	can_wall_jump = true;
    	if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
    	{
            attack_end();
            set_state(PS_PRATFALL);
    	}
    }
}

if (attack == AT_DSPECIAL){
	can_fast_fall = false;
	
	if (window == 1) {
		if (window_timer == 1 && free) {
			vsp = 0;
		}
	}
	
	if (window == 1) {
		if (window_timer < 11 && ((left_pressed && spr_dir == 1) || right_pressed && spr_dir == -1)) {
			window_timer = 0;
			spr_dir = -spr_dir;
		}
	}
	
	if (!free) {
	    if (window == 2) {
	        super_armor = true;
	    }
	    else if ((window == 1 && window_timer >= 12)) {
	        super_armor = true;
	    }
	    else {
	        super_armor = false;
	    }
	}
	else {
		grav = 0.25;
		vsp = min(vsp, 2);
		
	    if (window == 2) {
	        super_armor = true;
	    }
	    else if ((window == 1 && window_timer >= 20)) {
	        super_armor = true;
	    }
	    else {
	        super_armor = false;
	    }
	}
}
#define check_spawn_rock(_spawn_x, _spawn_y)
spawn_y = _spawn_y;
spawn_x = _spawn_x;
can_spawn = true;
can_spawn_side = false; 
var old_mask_index = mask_index
mask_index = sprite_get("nspecial_rock_mask");
while ((!(position_meeting(spawn_x, spawn_y, asset_get("par_block")) || position_meeting(spawn_x, spawn_y, asset_get("par_jumpthrough")))) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_block")) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_jumpthrough")))
{
    spawn_y += 1;
    if (spawn_y > room_height)
    {
        break;
    }
}
if (!collision_point(spawn_x, spawn_y + 2, asset_get("par_block"), 0, 0) && !position_meeting(spawn_x, (spawn_y), asset_get("par_jumpthrough")))
        can_spawn_side = true;
mask_index = old_mask_index;

#define check_spawn_rock2()
var old_mask_index = mask_index
mask_index = sprite_get("nspecial_rock_mask");
if (can_spawn_side) {
    while (!position_meeting(spawn_x, spawn_y, asset_get("par_block")))
    {
        spawn_x -= spr_dir*4;
        if (spawn_x < 0 || spawn_x > room_width)
        {
            can_spawn = false;
            break;
        }
    }
}
mask_index = old_mask_index;

#define check_spawn_rock3()
var old_mask_index = mask_index
mask_index = sprite_get("nspecial_rock_mask");
if (can_spawn_side) {
        while ((!(position_meeting(spawn_x, spawn_y, asset_get("par_block")) || position_meeting(spawn_x, spawn_y, asset_get("par_jumpthrough")))) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_block")) || position_meeting(spawn_x, (spawn_y - 2), asset_get("par_jumpthrough")))
    {
        spawn_y -= 16;
        if (spawn_y < 0)
        {
            break;
        }
    }
}

mask_index = old_mask_index;

#define spawn_rock()
if (can_spawn) {
    sound_play(asset_get("sfx_kragg_spike"))
    if (can_spawn_side) {
        spawn_y += 40
        var hb = create_hitbox(AT_NSPECIAL, 2, round(spawn_x), round(spawn_y));
        hb.spr_dir = spr_dir;
    }
    else {
        var hb = create_hitbox(AT_NSPECIAL, 1, round(spawn_x), round(spawn_y));
    }
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
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
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
return newdust;