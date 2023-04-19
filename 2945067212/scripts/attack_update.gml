init_shader();
reset_attack_value(attack, AG_NUM_WINDOWS);

for(i=1; i < get_num_hitboxes(attack)+1; i++)
	set_hitbox_value(attack, i, HG_HIT_PARTICLE_NUM, 1);
switch (get_player_color(player))
{
    case 9: 
    case 16:
    	if (attack == AT_NSPECIAL){
			set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial2"));
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj_fire"));
    		set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
    		set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("Mario Fireball"));
    		set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 3  );
    		set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 4);
    	}	
    
    break;
}
//sfx
if (attack == AT_FSPECIAL){
	if (state_timer ==1){
	reset_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS);}
	if (window == 7 || window == 9 || window == 11){
		if (window_timer == 1){
	sound_play(sound_get("yahoo"),false,noone,0.6, 1 + random_func(1,10,true)/100);
		}
	}
}
if (attack == AT_FSPECIAL_AIR && window == 4 && window_timer == 1){
	sound_play(sound_get("wow"),false,noone,0.5,1);}
if (attack == AT_FSPECIAL && window == 5 && window_timer == 27){
	sound_play(sound_get("hahaa"));}
if (attack == AT_DATTACK && window == 1 && window_timer == 3){
	sound_play(sound_get("ha"));}	
if (attack == AT_JAB && window == 7 && window_timer == 1){
	sound_play(sound_get("ha"));}
if (attack == AT_DSTRONG && window == 2 && window_timer == 1){
	sound_play(sound_get("yahoo"),false,noone,0.5,1);}
//if (attack == AT_FSPECIAL_AIR && window == 2 && window_timer == 1){
//	sound_play(sound_get("wahoo"));}
if (attack == AT_UAIR && window == 1 && window_timer == 11){
	sound_play(asset_get( "sfx_swipe_medium1" ));}
	if (attack == AT_FAIR && window == 1 && window_timer == 8){
	sound_play(asset_get( "sfx_absa_new_whip1" ));}
if (attack == AT_FAIR && window == 1 && window_timer == 1){
	sound_play(sound_get( "wow" ),false,noone,0.4,1);}
if (attack == AT_USTRONG && window == 2 && window_timer == 3){
	sound_play(asset_get("sfx_swipe_heavy2"));}
if (attack == AT_FSTRONG && window == 2 && window_timer == 1){
	sound_play(asset_get( "sfx_absa_new_whip1" ));}
if (attack == AT_FSTRONG && window == 2 && window_timer == 3){
	sound_play(sound_get( "thunder" ));}
if (attack == AT_DSTRONG && window == 2 && window_timer == 1 || attack == AT_DSTRONG && window == 4 && window_timer == 1){
	sound_play(asset_get("sfx_swipe_heavy2"));}
	if (attack == AT_DSPECIAL && window == 4 && window_timer == 5){
	sound_play(sound_get("dspecial2"));}
	if (attack == AT_NSPECIAL && window == 2 && window_timer == 1){
	sound_play(sound_get("nspecial"));}	
	if (attack == AT_USPECIAL && window == 1 && window_timer == 3){
	sound_play(sound_get("uspecial"));}
	

	
//if (attack == AT_USTRONG && window == 2 && window_timer == 1 || attack == AT_USPECIAL && window == 2 && window_timer == 1){
//	play_sound = asset_get( "sfx_swipe_heavy1" );}

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}


switch (attack)
{
		case AT_USTRONG:
		if (window == 2 && window_timer == 1){
			spawn_base_dust(x, y, "jump");
		}
		break;
		case AT_USPECIAL:
		can_wall_jump = true;
		if (window < 4){
		can_fast_fall = false;
		}
		if (window == 1)
		{
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
			{
				if (free)
				{
					create_hitbox(attack, 5, x, y)
				}
				else
				{
					create_hitbox(attack, 3, x, y)
				}
			}
		}
		break;
	case AT_FSPECIAL_AIR:
        	if (window == 5 && !free) {
            	window = 6;
            	window_timer = 0;
            }
	move_cooldown[AT_FSPECIAL_AIR] = 30;
	
            var step_up_height = 40;
        	if place_meeting(x+hsp,y+vsp,asset_get("par_block")) {
        	    for (var i = 0; i < step_up_height; i += 2) {
        	        if !place_meeting(x+hsp,y+vsp-i,asset_get("par_block")) {
        	            x = x+hsp; 
        	            y = y+vsp-i;
        	            break;
        	        }
        	    }
        	}
        	///coded by supersonic
        
        
			
            can_fast_fall = false;
            if(window < 4){
            	can_move = true;
                vsp = clamp(vsp, -3, 6);//-6,6
            } else {
            	can_move = false;
            }
            
            if(window == 1 ){
            	if fspec_charged = false {
                fspec_air_charge = 0;
            	} else { fspec_air_charge = 75;}
                ghostnum = 1;
                
                fspec_air_sonic = 23;
                fspec_air_misfire = false;
            }
            
            if window == 1 && window_timer == 1 {
           	   sound_play(sound_get("missilecharge"), true, noone, .7, 1.2);
			}
            
            
            if(window == 2){
            	
        		
            	if hsp > 0 || hsp < 0 {
            		hsp = hsp * 0.95;
            	} 
         
       

            	
                if(!special_down or fspec_air_charge > 75){
                    if(random_func(1, 9, true)+1 == 9 and has_rune("A")){
                        fspec_air_misfire = true;
                    }
                    
                
                    
                    if free {
                    	
                    window++;
                    window_timer = 2;
                    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .4+fspec_air_charge/75)
                    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, round(4+fspec_air_charge/8))
                    if(fspec_air_misfire){
                        set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 158)
                    } else {
                        set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 303)
                    }
                    } else
                    if fspec_air_charge > 74 && special_down {
                    	window = 7;
                    	window_timer = 0;
                    	fspec_charged = true;
                    	spawn_hit_fx(x,y-30,256)
        				white_flash_timer = 20;
                    	ghostnum = 0;
		                 sound_stop(sound_get("missilecharge"));
		                 sound_play(asset_get("sfx_frog_fspecial_charge_full"));
                    } else {
                    	    window++;
                    window_timer = 2;
                    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .4+fspec_air_charge/75)
                    set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, round(4+fspec_air_charge/8))
                    } 

                }
                if(fspec_air_charge % fspec_air_sonic == 2){
                    fspec_air_sonic--;
                    fspec_air_sonic = max(fspec_air_sonic, 3)
                    //sound_play(asset_get("sfx_ice_uspecial_start"), false, noone, .7, 1.2);

                }
                fspec_air_charge ++;
            	
                
            }
            if(window == 3 and window_timer%fspec_air_sonic == 2){
            	
                 sound_stop(sound_get("missilecharge"));
                sound_play(asset_get("sfx_jumpair"), false, noone, .7, 1.2);
            }

			if window == 3 && window_timer = 4 {        
        		if fspec_air_charge < 37 {
			       sound_play(sound_get("missilelight"), false, noone, .7, 1.2);
				}
				if  fspec_air_charge > 37 && fspec_air_charge < 75 {
			       sound_play(sound_get("missilemed"), false, noone, .7, 1.2);
            	}
            	if  fspec_air_charge > 75 {
    			 sound_play(sound_get("missilebig"), false, noone, .7, 1.2);

            }
			}

            if(window == 3 and window_timer == 2){
                hsp = spr_dir*(ease_cubeIn(6, 20, fspec_air_charge, 100));
		
if (attack == AT_FSPECIAL_AIR && window == 1 && window_timer > 1) || window > 1 {				
if ghostnum > 0 {

if spr_dir = 1 {
	var k = spawn_hit_fx(x + (spr_dir * 0), y - 10, ghost1);
	k.depth = depth - 1;	
} else {
		var k = spawn_hit_fx(x + (spr_dir * 10), y - 10, ghost1);
        k.depth = depth - 1;	
}	
	
}
	if ghostnum > 1 {
	if spr_dir = 1 {
	    var k = spawn_hit_fx(x +(spr_dir * 0), y - 10, ghost2);
        k.depth = depth - 1;	
	} else {
		var k = spawn_hit_fx(x - (spr_dir * -15), y - 10, ghost2);
        k.depth = depth - 1;	
	}
	}
	if ghostnum > 2 {
	if spr_dir = -1 {
	    var k = spawn_hit_fx(x + (spr_dir * 20), y - 10, ghost3);
        k.depth = depth - 1;	
} else {
		var k = spawn_hit_fx(x - (spr_dir * 0), y - 10, ghost3);
        k.depth = depth - 1;	
}	
}
}


                vsp = -4;
                spawn_base_dust(x+spr_dir*10, y-32, "ssj", spr_dir);
                spawn_base_dust(x+spr_dir*10, y-32, "ssj2", spr_dir);
         
                spawn_base_dust(x, y-16, "hitdust", spr_dir);
                if(fspec_air_misfire){
                    spawn_hit_fx(x, y-16, 301);
                    sound_play(asset_get("sfx_mol_uspec_explode"), false, noone, 1, .9);
                    sound_play(asset_get("sfx_blow_heavy2"), false, noone, .7, 1);
                    shake_camera(8, 24);
                }
                
            }
            if(window == 4 and has_hit and !hitpause){
                destroy_hitboxes();
                vsp = -5;
                hsp = -spr_dir;
                window_timer = 0;
                window++;
            }
     
            
            if(window > 3 and abs(hsp) > 5){
                if(window_timer%4==3){
                    spawn_base_dust(x, y-16, "hitdust", spr_dir);
                    if(fspec_air_misfire){
                        spawn_hit_fx(x, y-16, 301);
                    }
                }
            }
            
            //if((window > 4 && window != 7) and !free){
            //    attack_end();
            //    landing_lag_time = get_window_value(attack, window, AG_WINDOW_LENGTH) - window_timer;
            //    landing_lag_time = clamp(landing_lag_time, 4, 12);
            //    set_state(PS_LANDING_LAG);
            //    ghostnum = 0;
            //    fspec_charged = false;
            //}
            if(window > 4){ 
                if(window_timer==1){
                    sound_stop(asset_get("sfx_ell_missile_loop"));
                    ghostnum = 0;
                }
                can_wall_jump = true;
                if(hsp > 3 or hsp < -3){
                    hsp*=0.9;//ending accel
                }
                
            }
            if window == 5 && fspec_charged = true {
            	fspec_charged = false;
            }



		break;

	case AT_FSPECIAL:
		move_cooldown[AT_FSPECIAL] = 10;
		if(state_timer == 1) 
		{
            grabbed_player_obj = noone; 
            grabbed_player_relative_x = 0;
            grabbed_player_relative_y = 0;
		}
		if (window == 3)
		{
			if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
			{
				window = 13;
			}
		}
		switch(window)
        {
        	case 6:
        	case 8:
        	case 10:
        	case 12:
        		if (window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH))
        		{
        			window = 13;
        		}
        		break;
        }
        if(instance_exists(grabbed_player_obj))
        {
            if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
                else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

                else 
				{
                    grabbed_player_obj.hitstop = 2;
                    grabbed_player_obj.hitpause = true;
                    grabbed_player_obj.spr_dir = -spr_dir;

					var easepos = true;

					switch(window)
					{
						case 4:		
							var pull_to_x = 30*spr_dir;
							var pull_to_y = -5;
						break;
						case 5:	//Back
						case 7:	//Front
							easepos = false;
														
							if(image_index == 8)	
							{	var pull_to_x = 25*spr_dir; force_depth = true; depth = grabbed_player_obj.depth + 1; grabbed_player_obj.spr_dir = -spr_dir; }
							if(image_index == 10)	
								var pull_to_x = -15*spr_dir;
							if(image_index == 11)	
								var pull_to_x = -30*spr_dir;
								
							if(image_index == 15)	
							{	var pull_to_x = -25*spr_dir; force_depth = true; depth = grabbed_player_obj.depth + 1; grabbed_player_obj.spr_dir = -spr_dir; }
							if(image_index == 17)	
								var pull_to_x = 15*spr_dir;
							if(image_index == 18)	
								var pull_to_x = 30*spr_dir;
								
							var pull_to_y = -10;
						break;
						case 9:	//Up
							var pull_to_x = 25*spr_dir;
							var pull_to_y = 0;
						break;
						case 11://Down
							if(image_index == 33)	
							{
								easepos = false;
								var pull_to_x = 0*spr_dir;
								var pull_to_y = 0;
							}
							else
							{
								var pull_to_x = 0*spr_dir;
								var pull_to_y = 10;
							}
						break;
					}

					var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
					if(easepos)
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
			if(window_timer > 5 && window == 4)
			{
				if(right_down && spr_dir == -1 || left_down && spr_dir == 1)
				{
					window = 5;
					window_timer = 0;
				}
				else if(up_down)
				{
					window = 9;
					window_timer = 0;
				}
				else if(down_down)
				{
					window = 11;
					window_timer = 0;
				}
				else if(window_timer == 30 || right_down && spr_dir == 1 || left_down && spr_dir == -1)
				{
					window = 7;
					window_timer = 0;
				}
			}
        }
	break;
}
if (attack == AT_USPECIAL || attack == AT_DSPECIAL || attack == AT_FSPECIAL)
{
	
    if (window == 1 && window_timer == 1)
    {
        var dir;
        dir = (right_down - left_down); //determines direction.
        spr_dir = (dir != 0) ? dir : spr_dir; //if both keys are being held down, just default to the current direction you are facing.
    }
}
if (attack == AT_NSPECIAL){
	trigger_wavebounce();
	move_cooldown[AT_NSPECIAL] = 25;
	//if (free && window == 1){ vsp = -1}
}
//if (attack == AT_FSPECIAL_AIR){
//	trigger_wavebounce();
//	move_cooldown[AT_FSPECIAL_AIR] = 60;}


/*	
if (attack = AT_DSPECIAL) 
{
	if(state_timer == 1)
		groundswitch ++;
	if (window > 1 && window < 6 && free && !hitpause && groundswitch == 1) {
		vsp = 1;
		can_move = true;
	}
	can_fast_fall = false;
}
*/
if (attack == AT_DSPECIAL){
	move_cooldown[AT_DSPECIAL] = 35
	can_move = true;
	can_fast_fall = false;
	
	if window < 4 {
		if has_hit && window_timer == 4 {
			vsp += -3;
		}
			if vsp > 2 {
			vsp = 2;
			}
		
			if vsp < -8 {
				vsp = -8;
			}
	} else if window == 5 {
		if vsp > 5 {
			vsp = 5;
			}
	}

	if ((window > 1 && window != 6) && special_down){
        if has_hit {
        	vsp += 0.25;
        } else {
        	vsp += -0.75;
        }
        if (right_down){
        	hsp = 2.5;
        }
        if (left_down){
        	hsp = -2.5;
        }
        
    }
}

if (attack == AT_DSPECIAL && !free){
	if (window > 1 && window < 5){
        if (right_down){
        	hsp = 7;
        }
        if (left_down){
        	hsp = -7;
        }
        
    }
}
// //Ledge Snap 
// if (attack == AT_DSPECIAL && window > 1)
// {
//     can_fast_fall = false;
//     if (window == 1 && window_timer == 1)
// 	{
//         moved_up = false;
//         //reset the vspeed to the value in fspecial_air.gml
//         reset_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED);
//     }
//     if (window > 2)
// 	{
//         // MOVE UP AT LEDGE
//         if (!moved_up){
//             if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
//                 for (var i = 0; i < 40; i++){
//                     if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
//                         y -= i;
//                         moved_up = true;
//                         break;
//                     }
//                 }
//             }
//         }
// 	}
// }


//This code lets you add a smash 4 styled wavebouce to your attacks
//Just write "trigger_wavebounce();" under the case statement for the attack you want to wavebounce#define CorrectHurtboxes()
#define CorrectHurtboxes()
{
    hurtboxID.sprite_index = get_attack_value(attack, (free && get_attack_value(attack, AG_HURTBOX_AIR_SPRITE) != 0) ? AG_HURTBOX_AIR_SPRITE : AG_HURTBOX_SPRITE);
}
#define trigger_wavebounce() 
{
	if ((left_down and state_timer <= 5 and spr_dir == 1) or (right_down and state_timer <= 5 and spr_dir == -1) and (b_reversed == false)) {
    	hsp *= -1;
    	spr_dir *= -1;
    	b_reversed = true;
	} else if (state_timer == 6) {
    	b_reversed = false;
	}
}

#define spawn_base_dust
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
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
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;