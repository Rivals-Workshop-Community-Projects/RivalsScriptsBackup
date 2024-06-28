//attack_update

move_cooldown[AT_NSPECIAL] = 30;

//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

//wing vfx
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		vwings_timer = vwings_duration;
		break;
	case AT_NAIR:
	case AT_FAIR:
	case AT_BAIR:
	case AT_DAIR:
	case AT_UAIR:
		vwings_a = 0.5;
}


if (attack == AT_FSPECIAL || attack == AT_NSPECIAL || 
	attack == AT_USPECIAL_2 || attack == AT_DSPECIAL ) {
	if instance_exists( vwings ) {
		vwings.step_timer = 999; 
	}
}

//dust
//good dust
switch(attack)
{
	case AT_FSTRONG:
    	if (window == 3 && window_timer == 1)
    		spawn_base_dust(x+(75*spr_dir),y, "dash_start", -spr_dir);
    	break;
    	
    case AT_USTRONG:
    	if (window == 3 && window_timer == 1) {
    		spawn_base_dust(x+(8*spr_dir),y, "dash", -spr_dir);
    		spawn_base_dust(x-(16*spr_dir), y, "dash", spr_dir);
    	}
    	break;
    case AT_EXTRA_1:
    	if (window == 3 && window_timer == 1) {
    		spawn_base_dust(x+(8*spr_dir),y, "dash_start", -spr_dir);
    		spawn_base_dust(x-(16*spr_dir), y, "dash_start", spr_dir);
		}
    	break;
    	
    case AT_NSPECIAL:
    	if (window == 2 && window_timer == 1 && !free)
    		spawn_base_dust(x+(-16*spr_dir),y, "dash", spr_dir);
    	if (window == 5 && window_timer == 1 && !free)
    		spawn_base_dust(x+(-24*spr_dir),y, "dash_start", spr_dir);
    break;
    	
    case AT_FSPECIAL:
    	if ((window == 1 || window == 4) && window_timer == get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH)-1)
    		spawn_base_dust(x+(0*spr_dir),y-16, "doublejump", spr_dir, 90*-spr_dir);
    	if ((window == 5) && window_timer == 5)
    		spawn_base_dust(x+(0*spr_dir),y-16, "doublejump", spr_dir, 90*-spr_dir);
    	break;
    	
    case AT_USPECIAL:
    	if (window == 2) && window_timer == 2 {
    		spawn_base_dust(x+(0*spr_dir),y, "land", spr_dir, spr_dir);
    	}
    	if (window == 4) && window_timer == 1 && cdash_timer > 4{
    		spawn_base_dust(x+(0*spr_dir),y, "doublejump", spr_dir, spr_dir);
    	}
    break; 
    
    case AT_DSPECIAL:
    	if (window == 5) && window_timer == 2 {
    		spawn_base_dust(x+(-2*spr_dir),y, "dattack", spr_dir);
    		spawn_base_dust(x+(0*spr_dir),y, "dattack", -spr_dir);
    	}
    	if (window == 10) && window_timer == 2 {
    		spawn_base_dust(x+(0*spr_dir),y, "land", spr_dir, spr_dir);
    	}
}

switch(attack)
{
    case AT_NSPECIAL:
    if (window == 1 && window_timer == 1 && shade_stock == 1) {
    	shade_stock = 0
    	window = 4;
    	window_timer = 0;
    	shade_consumer = 1;
    }
    if (window == 4 && window_timer == get_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH)) {
    	window = 5;
    	window_timer = 0;
    }
    if (window == 5 && window_timer == get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH)) {
    	window = 6;
    	window_timer = 0;
    }
    if (window == 6 && window_timer == get_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH)-1) {
    	window = 3;
    	window_timer = get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH);
    }
    if (shade_consumer == 1 && window == 3 && window_timer == get_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH)) {
    	shade_consumer = 0;
    	sound_play(sound_get("hero_shade_charge"));
    }
    
    if (window == 4 && window_timer == 1) {
    	sound_play(sound_get("hollow_shade_fireball_startup"));
    }
    break;
    
    case AT_FSPECIAL:
    can_fast_fall = false;
    can_move = false;
    can_wall_jump = true;
    
    //airdog cancel
    if ((window == 2 || window == 5) && free) {
    	if shield_down {
    		shade_consumer = 0;
    		sound_play(sound_get("hero_shade_charge"));
    	}
    	can_shield = true;
    }
    else {
    	can_shield = false;
    }
    
    //atack cancel when shade
    if (window == 5) {
    	if attack_down {
    		shade_consumer = 0;
    		sound_play(sound_get("hero_shade_charge"));
    	}
    	can_attack = true;
    	if (window_timer > 5) {
    		can_jump = true;
    		if jump_down {
    			shade_consumer = 0;
    			sound_play(sound_get("hero_shade_charge"));
    		}
    	}
    }
    else {
    	can_attack = false;
    	can_jump = false;
    }

	// MOVE UP AT LEDGE
    if ((window == 2 || window == 5) && !moved_up && free && place_meeting(x+hsp,y,asset_get("par_block"))) {
        for (var i = 0; i < 30; i++){
            if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))) {
                y -= i;
                moved_up = true;
                break;
            }
        }
    }
    
    if (window == 1 && window_timer == 1) {
    	if (free) {
    		move_cooldown[AT_FSPECIAL] = 9999;
    	}
    	if (shade_stock == 1) {
    		shade_stock = 0
    		shade_consumer = 1;
    		window = 4;
    		window_timer = 0;
    	}
    }
    
    if (window == 4 && window_timer == get_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH)) {
    	window = 5;
    	window_timer = 0;
    }
    if (window == 5 && window_timer == get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH)) {
    	window = 6;
    	window_timer = 0;
    }
    if (window == 6 && window_timer == get_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH)-1) {
    	window = 3;
    	window_timer = get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH);
    }
    if (shade_consumer == 1 && window == 3 && window_timer == get_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH)) {
    	shade_consumer = 0;
    	sound_play(sound_get("hero_shade_charge"));
    }
    
    //particles
    if (window == 5) {
    	var randfx = fx_shade_p
    	if (random_func(7, 2, true) == 0) {
    		randfx = fx_shade_p
    	} else {
    		randfx = fx_shade_p_small
    	}
    	spawn_hit_fx( x-((35 + random_func( 1, 40, true )) * spr_dir), y-(char_height/2)-28+random_func( 8, 40, true ), randfx)
    }
    break;
    

    
    case AT_USTRONG:
    {
    	if (window == 2 && shade_stock) {
			attack = AT_EXTRA_1;
			shade_stock = 0;
    	}
    }
    
    case AT_EXTRA_1:
    {
    	if (shade_consumer == 1 && window == 4 && window_timer == get_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH)) {
    		shade_consumer = 0;
    		sound_play(sound_get("hero_shade_charge"));
    	}
    }
    break;

	case AT_NAIR:
	{
    	if (window == 1 && window_timer == get_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH)){
    			sound_play(sound_get("mantis_lord_whoosh_to_above"));
    	}
    }	
    break;
    
    case AT_UAIR:
	{
    	if (window == 1 && window_timer == get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH)){
    			sound_play(sound_get("mantis_lord_whoosh_to_above"));
    	}
    }
    break;
    
    
    case AT_DAIR:
	{
		var pogo_used = false;
    	if (window == 1 && window_timer == get_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH)){
    			sound_play(sound_get("mantis_lord_whoosh_to_above"));
    	}
    	if has_hit && pogo_used = false {
    		old_vsp = clamp(old_vsp, -12, -10);
			old_hsp = clamp(old_hsp, 0.5, -0.5);
			pogo_used = true;
    	}
    }
    break;

    case AT_DATTACK:
    {
    	if (window == 1 && window_timer == get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH)){
    			sound_play(sound_get("hero_wings"));
    	}
    }
    break;
    case AT_BAIR:
    {
    	if (window == 2 && window_timer == 3){
    			sound_play(sound_get("hero_thorn_counter_editmid"));
    	}
    	else if (window == 3 && window_timer == 3){
    			sound_play(sound_get("hero_thorn_counter_editend"));
    	}
    }
    break;
    
    case AT_FSTRONG:
    {
    	if (window == 2 && window_timer == 5){
    		sound_stop(sound_get("hero_charge_init"));
    		sound_play(asset_get("sfx_swipe_heavy1"));
    	}
    	if (window == 3 && window_timer == 1 && !hitpause) {
    		shake_camera(3,5);
    	}
    }
    break;
    case AT_DSTRONG:
    {
    	if (window == 2 && window_timer == 3){
    		sound_stop(sound_get("hero_charge_init"));
    	}
    	if (window == 3 && window_timer == 1) {
    		shake_camera(3,4);
    	}
    }
    break;
    
    case AT_USPECIAL:
    case AT_USPECIAL_2:
    {
    	can_fast_fall = false;
    	can_wall_jump = true;
    	can_move = false
    	
    	if (window == 1 && window_timer == 1) {
    		cdash_timer = 8;
    		c_anim = 1;
    	}
    	if (window == 2) {
    		
    		hsp = clamp(hsp, 0, 0);
    		strong_flashing = cdash_timer % 5;
    		
    		if (state_timer > 5 && state_timer < 60) {
        		if (state_timer % 6 == 5) {
        			c_anim++;
        		}
    		} 
    		if (state_timer >= 60) {
    			if (state_timer % 10) < 5
    				{
    					c_anim = 12;
    				}
    			else {
    					c_anim = 14;
    			}
    		}
    		if (state_timer == 60) {
    			sound_play(asset_get("sfx_oly_dspecial_focus"))
    			spawn_hit_fx( x-56, y-12, HFX_OLY_SPARKLE );
    			spawn_hit_fx( x-28, y-2, HFX_OLY_SPARKLE );
    			spawn_hit_fx( x, y-6, HFX_OLY_SPARKLE );
    			spawn_hit_fx( x+56, y-12, HFX_OLY_SPARKLE );
    			spawn_hit_fx( x+28, y-2, HFX_OLY_SPARKLE );
    		}
    		
    		if !special_down || state_timer > 90 {
    			window = 3;
    			window_timer = 0;
    			sound_play(sound_get("hero_cdash_burst"))
    			sound_play(sound_get("hero_cdash_loop"))
    		}
    		if (state_timer > 10 && state_timer % 4 == 0 && cdash_timer < 20) {
    			cdash_timer += 1;
    		}
    		if (state_timer == 10) {
    			sound_play(sound_get("hero_cdash_charge"))
    		}
    	}
    	if (window == 3 && !hitpause) {
    		sound_stop(sound_get("hero_cdash_charge"))
    		spawn_hit_fx( x, y-6, HFX_OLY_CRYSTAL_SMALL );
    		if cdash_timer >= 20 {
    			spawn_hit_fx( x, y-6, HFX_OLY_GEM_SHINE );	
    		}
    		
    		if (window_timer == 1) {
    			sound_play(asset_get("sfx_oly_nspecial_flashbreak"));
    		}
    		
    	}
    	if (window == 4 && !hitpause) {
    		cdash_timer--
    		if (cdash_timer == 0 || attack_down) {
    			window = 5
    			window_timer = 0
    		}
    	}
    	if (window == 5) {
    		destroy_hitboxes();
        	vsp = clamp(vsp, -2, 0);
        	if (window_timer == 1) {
        		sound_play(sound_get("hero_cdash_brake"))
        	}
        	sound_stop(sound_get("hero_cdash_loop"))
    	}
    }
    break;
    
    case AT_DSPECIAL:
    	can_fast_fall = false;
    	can_wall_jump = false;
    	
    	if (window == 1 && window_timer == 1 && shade_stock == 1) {
    		shade_stock = 0
    		window = 6;
    		window_timer = 0;
    		shade_consumer = 1;
    	}
    	
    	hsp = clamp(hsp,-6,6);
    	if (window == 1 || window == 6) {
    		if (window_timer == 1) {
    			hsp = 0;
    			vsp = 0;
    			if free {
    				window += 1; 
    				window_timer = 0;
    			}
    		}
    		if (window_timer == 2) {
    			if (window == 1) {
    				vsp = -10;
    			} else {
    				vsp = -16;
    			}
    		}
    	}
    	
    	if (window == 2 || window == 7) {
    		hsp = clamp(hsp,-1,1);
    		can_move = false;
    	}
    	
    	if (window == 4 || window == 9) {
    		hsp = clamp(hsp,0,0);
    		can_move = false;
    		if (state_timer >= 50) {
    			can_shield = true;
    		}
    	}
    	
    	if (window == 5 || window == 10) {
    		if (window_timer == 1) {
    			destroy_hitboxes();
    		}
    	}
    	
    	if (window == 6) {
    		if (window_timer == get_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH)) {
    			window = 7
    			window_timer = 0;
    		}
    	} else if (window == 7) {
    		if (window_timer == get_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH)) {
    			window = 8
    			window_timer = 0;
    		}
    	} else if (window == 8) {
    		if (window_timer == get_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH)) {
    			window = 9
    			window_timer = 0;
    		}
    	} else if (window == 9) {
    		/////////////AESTHETIC
    		//afterimages
			if get_gameplay_time() % 3 == 0 {
			    after_image_timer++;
			    if(after_image_timer == 10) after_image_timer = 0;
			    after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y - 4, spr_dir:spr_dir, alpha:8, spr_angle:0, xscale:1, yscale:1};
			}
			//particools
			var randfx = fx_shade_p
    		if (random_func(7, 2, true) == 0) {
    			randfx = fx_shade_p
    		} else {
    			randfx = fx_shade_p_small
    		}
    		spawn_hit_fx( x-((-20 + random_func( 1, 60, true )) * spr_dir), y-(char_height)-28+random_func( 8, 40, true ), randfx)
			/////////
    		
    		if(window_timer % 3 == 0 && !hitpause){
    			dspec_hitbox = create_hitbox(AT_DSPECIAL, 3, x, y);
    		}
    		
    		if (window_timer == get_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH)) {
    			window = 9
    			window_timer = 0;
    		} else if (!free) {
    			window = 10
    			window_timer = 0;
    		}
    	} else if (window == 10) {
    		if (window_timer == get_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH)) {
    			window = 11
    			window_timer = 0;
    		}
    	} else if (window == 11) {
    		if (window_timer == get_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH)) {
    			window = 12
    			window_timer = 0;
    		}
    	}
    	
    	if (shade_consumer == 1 && window == 12 && window_timer == get_window_value(AT_DSPECIAL, 12, AG_WINDOW_LENGTH)) {
    		shade_consumer = 0;
    		sound_play(sound_get("hero_shade_charge"));
    	}
    	
    break;
    
    case AT_EXTRA_3:
    	x = lerp(x, 420, 0.5);
    	if (window == 2) {
    		if (jump_pressed || attack_pressed || shield_pressed || taunt_pressed) {
    			window = 3
    			window_timer = 0;
    		}
    	}
}

//iasa_script (insantly as soon as, aka switch back into full control/idle) without having to check for !was_parried
#define endlag_cancel()
{
	if !was_parried // checks if you WERENT parried
	{
		iasa_script(); // if you werent parried, wherever you put endlag_cancel() will let you act out of whatever the fuck you were doing before
	}
}

// window_advance_to
// input the attack index, like AT_JAB, then the window you want to switch to happen from, then the window you want to switch to
// continuous is a boolean (true or false) that makes it automatically switch windows after going through the current window's frames
// example: window_advance_to(AT_TAUNT, 1, 2, true)
#define window_advance_to(attackindex, currentwindow, newwindow, continuous)
{
    if window == currentwindow
    {
	    if continuous
	    {
	        if window_timer >= get_window_value(attackindex, currentwindow,AG_WINDOW_LENGTH)
	        {
	            window = newwindow;
	            window_timer = 0;
	        }
	    }
	    else if !continuous
	    {
	        window = newwindow;
	        window_timer = 0;
	    }
    }
	
}

// makes the user flash yellow like a strong
// example: yellow_flash_cycle(8);
#define yellow_flash_cycle(cyclenumber)
{
    strong_flashing = (floor(get_gameplay_time()/cyclenumber) % 2) == 0;
}

// makes the user glow depending on the timer set. the larger the number the brighter and slower it flashes
// example: white_flash_cycle(10);
#define white_flash_cycle(timer)
{
	if white_flash_timer <= 1
	{
		white_flash_timer = timer;
	}
}

// spawn_base_dust made by Supersonic
#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;
var angle; if (argument_count > 4) angle = argument[4]; else angle = 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
	case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;
return newdust;