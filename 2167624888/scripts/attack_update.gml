//FLUTE SYSTEM
//breaking this away from the switch statement for convenience, lol
if (attack == AT_TAUNT and state != PS_IDLE_AIR) {
	taunt_timer+=1;
    switch window {
        case 2:
        case 3:
        suppress_stage_music(.1,.2);
            if taunt_pressed { //this kills the taunt
                window++
                window_timer = 0;
               
            }
        break;
        case 4:
        	move_cooldown[AT_TAUNT] = 30
        break;
    }
   
    
    if get_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE) == 9
	{
		var reg, accu;
		reg = get_window_value(AT_TAUNT, 2, AG_WINDOW_SFX) == sound_get("flute_lycatheme")
		accu = get_window_value(AT_TAUNT, 2, AG_WINDOW_SFX) == sound_get("flute_acctown")
		if (reg or accu) and taunt_timer == 350
		{
			set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1)
		}
	}
}
else
{
	taunt_timer = 0
}



//changing sprite based on charge

//B - Reversals
switch (attack)
{  
    case AT_NSPECIAL:
    case AT_NSPECIAL_2:
    case AT_FSPECIAL:
    //case AT_DSPECIAL: // custom b reverse code
    case AT_USPECIAL:
    case AT_USPECIAL_2:
        trigger_b_reverse();
}

switch (attack)
{
    case AT_NSPECIAL:
        var max_charge = 25; // number of frames to full charge
        var min_hsp = 8;
        //var max_hsp = 32;
        var max_hsp = 26;
        if(nspec_charge == blue_arrow_timer && should_red_arrow)
        {
        	should_red_arrow = false;
        	sound_play(sound_get("bluearrow"))
        	var fx;
            fx = spawn_hit_fx(x+(48*spr_dir),y-36,blue_charge);
            fx.depth = depth - 2
        	set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
			set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
			set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 12);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .8);
			set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 0.8);
        }
        // else
        // {
   	    // 	reset_attack_value(AT_NSPECIAL, AG_SPRITE);
        //   	reset_attack_value(AT_NSPECIAL, AG_AIR_SPRITE);
        // }
    	if(shield_pressed and window < 3){
    		window = 6;
    		window_timer = 0;
    	}
        switch (window)
        {
            case 1:
            	can_jump = true;
            	
            	
            	// if((wisp_switch == 1 && (((spr_dir = 1 && left_down) || (spr_dir = -1 && right_down)) && nspec_wispconsume == false && wisp_attack && nspec_charge < blue_arrow_timer))
            	// || (wisp_switch  != 1 && (wisp_attack && nspec_charge < blue_arrow_timer && !nspec_wispconsume && special_down && attack_down))){
             //       	print("DO SOMETHING")
             //       	nspec_charge = blue_arrow_timer;
             //       	nspec_wispconsume = true;
             //       	destroy_wisp(find_wisp());
                    	
                // }
            	
                if (window_timer == 1)
                
                {	
                	nspec_wispconsume = false;
                	if(nspec_charge < blue_arrow_timer && !should_red_arrow){
                		should_red_arrow = true;
                    	reset_attack_value(AT_NSPECIAL, AG_SPRITE);
                    	reset_attack_value(AT_NSPECIAL, AG_AIR_SPRITE);
                    	reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED);
                    	reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
						reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
						reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
						reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
						reset_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING);
						reset_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE);
                	}
                    //reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
                }
                break;
            case 2:
            	can_jump = true;
            	if nspec_charge >= blue_arrow_timer
            	{
            		set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("blue_arrow_hit_new"));
            		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, blue_big_hit_vfx);
            		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 10);
            		set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 0);
            	}
            	else
            	{
            		var charge;
            		charge = round((nspec_charge / 30) * 2)
            		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4+charge);
            		reset_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX)
            		reset_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT);
            		reset_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT);
            	}
            	
            	if(state_timer == 100){
            		window = 3;
            		window_timer = 0;
            		sound_play(sound_get(nspec_charge >= blue_arrow_timer ? "arrow_shoot_blue" : "arrow_shoot"))
                    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, lerp(min_hsp,max_hsp,min(nspec_charge,max_charge)/max_charge));
                    
            	}
                if (special_down)
                {
                	if(nspec_charge <= max_charge){
                    	++nspec_charge;
                	}
                	
                    if (nspec_charge == max_charge)
                    {
                        sound_play(sound_get("full_charge"));
                        var fx;
                        fx = spawn_hit_fx(x+(48*spr_dir),y-36,nspec_effect_boom);
                        with fx depth = -10
                    }                	
                    //[DELTA CHECK] pressing attack while charging instantly charges arrow to blue.
                    if wisp_attack && nspec_charge < blue_arrow_timer && !nspec_wispconsume && special_down && (strong_down || attack_down) {
                    	
                    	nspec_charge = blue_arrow_timer;
                    	nspec_wispconsume = true;
                    	destroy_wisp(find_wisp());
                    	
                    }
                    
		            fall_through = down_down;
		            if (down_down && !freemd && !free) // plat drop
		            {
		            	free = true;
		            }
                }
                else
                {
                    window = 3;
                    window_timer = 0;
                    sound_play(sound_get(nspec_charge >= blue_arrow_timer ? "arrow_shoot_blue" : "arrow_shoot"))
                    set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, lerp(min_hsp,max_hsp,min(nspec_charge,max_charge)/max_charge));
                    //set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, something that scales the damage lol);
                    //print(get_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED))
                }
                break;
            case 5:
            	if(window_timer == 2){
                    nspec_charge = 0;
                    reset_attack_value(AT_NSPECIAL, AG_SPRITE);
                    reset_attack_value(AT_NSPECIAL, AG_AIR_SPRITE);
                	move_cooldown[AT_NSPECIAL] = 30*(2 - should_red_arrow);
                	//print_debug("WOOOOOOO")
            	}
        }
        break;

    case AT_NSPECIAL_2:
        if (state_timer == 1)
            spawn_hit_fx(x+64*spr_dir,y-32,nspec_effect_boom);
        break;

    case AT_FSPECIAL:
        switch (window)
        {
        	case 1:
        		vsp*=.75;
        		break;
            case 2:
            if (window_timer == 1)
            {
                if (fspec_article == noone)
                {
                	var wisp;
                	wisp = instance_create(x+spr_dir*56, y-38, "obj_article2");
                	wisp.hsp = 6*spr_dir
                	wisp.isRed = (nspec_charge < blue_arrow_timer)
                	if (nspec_charge >= blue_arrow_timer) {
                		nspec_charge = 0
                	}
                	fspec_article = wisp;
                }
                else
                {
                	fspec_article.aggro_death = true;
                    fspec_article = noone;
                    sound_play(sound_get("wisp_destroy"));
                    window = 3;
                    window_timer = 0;
                    move_cooldown[AT_FSPECIAL] = 60
                }
                
            }
            vsp*=(window_timer >= 1 and window_timer < 20) ? .8 : 1;
            
            break;
            case 3:
            if !instance_exists(fspec_article) break;
            
            if (special_down && !(fspec_article.x < 150 || fspec_article.x > room_width - 150)) // control article
            {
                // movement
                fspec_article.hsp = clamp(fspec_article.hsp + (0.5 * fspec_article.spr_dir), -10, 10);
                if (!joy_pad_idle)
                {
                    fspec_article.vsp = lengthdir_y(spr_dir*fspec_article.hsp*0.5, joy_dir);
                }
                
                window_timer = clamp(window_timer, 0, get_window_value(attack, window, AG_WINDOW_LENGTH) - 2);
            }
            else if window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 2 {
            	print("stop right the fuck now")
            	fspec_article.hsp = 0;
            	fspec_article.vsp = 0;
            	fspec_article.state = PS_IDLE;
            	fspec_article.state_timer = 0;
            	window += 1;
            	window_timer = 0;
            	sound_play(asset_get("sfx_zetter_fireball_fire"))
            	
		        if (fspec_article.isRed)
		        {
		            spawn_hit_fx(fspec_article.x,fspec_article.y+16,nspec_effect_red);
		            create_hitbox(AT_FSPECIAL, 1, fspec_article.x, fspec_article.y - 10);
		        }
		        else
		        {
		            spawn_hit_fx(fspec_article.x,fspec_article.y+16,nspec_effect);
		            create_hitbox(AT_FSPECIAL, 1, fspec_article.x, fspec_article.y- 10);
		        }
		        move_cooldown[AT_FSPECIAL] = 30;
            }

            break;
        }
        can_fast_fall = false;
        break;
        
        
        
    case AT_USPECIAL_2:
    can_shield = false;
    	if(window == 2){
    		if(window_timer <= 1){ //Horizontal boost at start.
    			if(left_down && hsp > -4){
    				hsp = -4
    			}
    			if(right_down && hsp < 4){
    				hsp = 4
    			}
    		}
    	}
        
    case AT_USPECIAL:
        switch (window)
        {
            case 1:
                if (window_timer == 1)
                {
                    //uspec_holding = true;
                    //uspec_fiyah_times = 0;
                    reset_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE);
                }
                break;
            case 2:
                hsp += left_down?-0.1:right_down?0.1:0;
                if(window_timer == 1){
                	uspec_first = false;
                }
                //if (!special_down) uspec_holding = false;
                //if (window == 2 && window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH))
                //{
                    //if (find_wisp() == -1)
                    //{
                    //    window = 5;
                    //    window_timer = 0;
                    //    set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
                    //}
                    //else if (!uspec_holding)
                    //{
                    //    window = 5;
                    //    window_timer = 0;
                    //}
                //}
                break;
            case 3:
                can_move = false;
                can_fast_fall = false;
                if(find_wisp() > -1){
                	can_shield = true;
                }
                
                //if (window_timer == 1)
                //{
                //
                //    set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
                //}
                //else if (window_timer == get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH))
                //{
                    //if (uspec_fiyah_times < 4) // charging time
                    //{
                    //   window_timer = 0;
                    //    ++uspec_fiyah_times;
                    //}
                //}
                break;
            //case 4:
            //    hsp += left_down?-0.1:right_down?0.1:0;
            //    can_move = false;
            //    can_fast_fall = false;
            //    break;
        }
        break;

    case AT_DSPECIAL:
		move_cooldown[AT_DSPECIAL] = 2;
		if window < 4 move_cooldown[AT_NSPECIAL] = 2;
		move_cooldown[AT_FSPECIAL] = 2;
        can_move = false;
        can_shield = (window == 6);
        can_wall_jump = true;
		fall_through = down_down;
		can_fast_fall = false;
        if (left_down)
            hsp -= 0.1;
        else if (right_down)
            hsp += 0.1;
        switch (window)
        {
            case 1: //jump start
            vsp *=.8
                move_cooldown[AT_DSPECIAL] = 2;
                if (!dspec_reverse && ((left_down && spr_dir == -1) || (right_down && spr_dir == 1)))
                {
                    spr_dir *= -1;
                    dspec_reverse = true;
                }
            case 2: // jumping
                if (window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH) && !dspec_shoot && special_down)
                {
                    window = 5
                    window_timer = 0;
                }
                break;
            case 4: // shoot blue
            case 5: // shoot red
                if (window_timer == floor(2*get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH)/get_window_value(AT_DSPECIAL, window, AG_WINDOW_ANIM_FRAMES)))
                { 
                	
            	if nspec_charge >= blue_arrow_timer
            	{
            		set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("blue_arrow_hit_new"));
            		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, blue_big_hit_vfx);
            		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 10);
            	}
            	else
            	{
            		var charge;
            		charge = round((nspec_charge / 30) * 2)
            		set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 4+charge);
            		reset_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX)
            		reset_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT);
            	}
                    
                	hsp -= 1*spr_dir;
                	vsp -= 10;
                	
                    var hitbox = create_hitbox(AT_NSPECIAL, 1, x-20, y-25);
                    hitbox.hsp = spr_dir * 20;
                    hitbox.vsp = 3.5;
                    move_cooldown[AT_NSPECIAL] = 30*(2 - should_red_arrow);
                    //hitbox.hit_flipper = 7;
                    //hitbox.damage = 10; // change the stats here
                    sound_play(sound_get("arrow_shoot"));
                    nspec_charge = 0;
                }
                
                if(window_timer == 11){
                	window = 9;
                	window_timer = 0;
                }
                break;
            case 3: // no shoot
                if (window_timer == get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH))
                {
                    window = 6;
                    window_timer = 0;
                }
                break;
            case 6: // kick
                vsp *= 1.05; // falls faster
                if (!free)
                {
                    window = 7;
                    window_timer = 0;
                }
                if(window_timer == get_window_value(AT_DSPECIAL, window, AG_WINDOW_LENGTH)){
                	window = 8;
                	window_timer = 0;
                }
                break;
            case 7: // land
            	destroy_hitboxes()
            	break;
            case 8: // kick bounce +kick die
            	if(!free){
            		window = 7
            		window_timer = 0;
            	}
            
            	break;
        	
        }
        if(window == 8 || window == 3 || window == 2){
    		can_special = true;
    	}
        break;
    case AT_UAIR:
    	hud_offset = window == 2 ? round(lerp(hud_offset, 100, 0.2)) : 0
    break;
    case AT_FSTRONG:
    if(window == 3){
    	if(window_timer == 1){
    		if(vsp > -5){
    			vsp = -5
    		}
    	}
    }
    if(window == 4)
	{
		if (window_timer == 15)
		{ //spike if Lyca is airborne on [DELTA CHECK]
			var airborne = (!position_meeting(x+10*spr_dir, y +10, asset_get("par_block")) && !position_meeting(x, y +10, asset_get("par_jumpthrough")));
			
			if airborne {
				set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 275);
				set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 5);
				set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, .6);
			}
		}
	}
    /*if(special_pressed && wisp_attack){ //instant charge [DELTA CHECK]
    	strong_charge = 60;
    	destroy_wisp(find_wisp());
    	wisp_attack = false;
    	if(window == 1){
    		window = 2;
    		window_timer = 0;
    	}
    }*/
        if (has_hit_player && window == 4 && state_cat != SC_HITSTUN && !hit_player_obj.super_armor)
            grab(52, vsp-10, 6, 1, true, true);
        can_move = false;
    break;
    case AT_FSTRONG_2:
    if(window == 3){
    	if(window_timer == 1){
    		if(vsp > -5){
    			vsp = -5
    		}
    	}
    }
    if(window == 4)
	{
		if (window_timer == 15)
		{ //spike if Lyca is airborne on [DELTA CHECK]
			var airborne = (!position_meeting(x+10*spr_dir, y +10, asset_get("par_block")) && !position_meeting(x, y +10, asset_get("par_jumpthrough")));
			
			if airborne {
				set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 275);
				set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
				set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, .7);
			}
		}
	}
    /*if(special_pressed && wisp_attack){ //instant charge [DELTA CHECK]
    	strong_charge = 60;
    	destroy_wisp(find_wisp());
    	wisp_attack = false;
    	if(window == 1){
    		window = 2;
    		window_timer = 0;
    	}
    }*/
        if (has_hit_player && window == 4 && state_cat != SC_HITSTUN && !hit_player_obj.super_armor)
            grab(52, vsp-10, 6, 1, true, true);
        can_move = false;
    break;

    case AT_USTRONG:
    	if window == 2 and window_timer == 2 {
    		sound_play(asset_get("sfx_zetter_fireball_fire"))
    	}
    break;
    case AT_USTRONG_2:
    	if window == 2 and window_timer == 2 {
    		sound_play(asset_get("sfx_ori_dtilt_perform"), false, noone, 0.9, 1.2)
    		sound_play(asset_get("sfx_zetter_fireball_fire"), false, noone, 0.8, 1.15)
    	}
    break;

	case AT_DSTRONG:
	case AT_DSTRONG_2:
		if window == 3 and window_timer == 3 {
			sound_play(sound_get("fire_slash2"), false, noone, 0.9, 0.9)
		}
    break;
}

//upb jump cancel stuff
if (attack == AT_USPECIAL || attack == AT_USPECIAL_2) {
	if (has_hit_player) can_fast_fall = false;
	
    if (window <= 2) {
        can_wall_jump = true;
        if (find_wisp() == -1) uspec_first = true; 
    }
}

#define find_wisp
//Return: real, -1 if failed
//Takes the wisps array and sees if there is any object in it.
//If there is, return the index of the first one found starting from the end.
i = 2;
while (wisps[i] == -1)
{
    i = (i == 0) ? -1 : i-1;
    if (i == -1) break; // to avoid out of bounds errors
}
return i;

#define destroy_wisp
//Return: none
//Removes wisp from the array.
if argument0 != -1 //idiot proofing
{
    wisps[argument0] = -1;
}

#define bpmtosteps
//bpmtosteps([len])
//calculates the number of steps for a given BPM. 
//len is an optional argument.
//determines the length of a note based on song base quarter-note value.
var data, bpm, base, len, result;
data = song_data[0]
bpm = data[0]
base = data[1]
len = (argument_count == 1) ? argument0 : base 

//3600 steps in a minute.
result = (3600 / bpm) * (len/base)

return result;


#define grab(xpos, ypos, xsmooth, ysmooth, isX, isY) // stolen from Hikaru
{
	if (isX)
	{
		hit_player_obj.x += ((x + spr_dir * xpos) - hit_player_obj.x)/xsmooth;
		hit_player_obj.hsp = 0;
		hit_player_obj.old_hsp = 0;
	}
	if (isY)
	{
		hit_player_obj.y += ((y + ypos) - hit_player_obj.y)/ysmooth;
		hit_player_obj.vsp = 0;
		hit_player_obj.old_vsp = 0;
	}
}