// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

if (attack == AT_FTILT){
	if (window == 1 and window_timer == 10) and !hitpause{
		sound_play(asset_get("sfx_birdclap"))
	}
}

if (attack == AT_JAB){
	if (window == 8 and window_timer >=24) and (attack_down)
	{
		window = 8;
		window_timer = 0;
	}
	if (window_timer == 23 and attack_down)
	{
		sound_play(asset_get("sfx_swipe_weak1"));
	}
	
	if (window_timer == 15)
	{
		sound_play(asset_get("sfx_swipe_weak1"));
	}
}

if (attack == AT_USPECIAL){
	if (!free && (window > 3 && window < 6  ))
	{
		if window != 6 
		{
			//print_debug("what the fuck")
			window = 5;			
		}

	}
	can_wall_jump = true
	if window == 2
		can_move = false;
	if (window == 6 and window_timer == 0)
	{
		destroy_hitboxes();
		if !hitpause 
			spawn_hit_fx(x + (20*spr_dir),y-25,stock_explosion);
	}
}

if (attack == AT_TAUNT){
	if (window_timer == 15){
		sound_play(asset_get("mfx_star"));
	}
}

if (attack == AT_DSPECIAL){
	// if !free ? set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 361) : set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 335)
	can_move = false;
	can_fast_fall = false;
	if has_hit{
		if shield_pressed{
			if free
				set_state( PS_IDLE_AIR );
		}
		can_jump = true;
		clear_button_buffer(PC_DOWN_HARD_PRESSED);
		clear_button_buffer(PC_SPECIAL_PRESSED);
	}
	// if free{
	// 	should_cancel_shine = true
	// }
	
	// if should_cancel_shine and !free{
	// 	attack_end();
	// 	set_state( PS_IDLE );
	// 	window = 2;
	// 	window_timer = 20;
	// 	should_cancel_shine = false;
	// }
	
}

if (attack == AT_DAIR){
	if (window == 1 and window_timer == 6){
		sound_play(asset_get("sfx_clairen_swing_strong"));
	}
}
if (attack == AT_UAIR || attack == AT_FAIR){
	if (window == 1 and window_timer == 6){
		sound_play(asset_get("sfx_clairen_swing_weak"));
	}
}

if (attack == AT_TAUNT and taunt_down){
	if window_timer > 42 and window_timer < 51
		window_timer = 49;
}

if (attack == AT_NSPECIAL)
{
    if window == 2
	{
		with (obj_article1){
			if player_id == other.id{
            	if place_meeting(x,y,player_id) && (st != 0){
            	    life = 100;
            	    st = 6;
            	    stt = 0;
            	    if other.ball_exists == true{
            	    	sound_play(asset_get("sfx_forsburn_cape_swipe"))
            	    	sound_play(asset_get("sfx_clairen_hit_weak"))
            	        other.ball_exists = false;
            	    }
            	    if other.ball_cooldown == 0{
            	        other.ball_cooldown = 140;
            	    }else{
            	        other.ball_cooldown-=40;
            	    }
                }
            }
        }
	}
    var stage_x = get_stage_data(SD_X_POS);
    var stage_y = get_stage_data(SD_Y_POS);
	if (window == 1 and window_timer == 6)
	{
		sound_play(asset_get("sfx_forsburn_cape_swipe"));
		if (!ball_exists and ball_cooldown < 1) and !(x < stage_x || x > room_width - stage_x || y < 250)
			sound_play(asset_get("sfx_clairen_swing_weak"));	
	}
	if (!ball_exists and ball_cooldown < 1) and !(x < stage_x || x > room_width - stage_x || y < 250){
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"+"_p"+string(player)));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"+"_p"+string(player)));			
	}
	else{
		set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial_nothing"));
		set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air_nothing"));						
	}

    if !(x < stage_x || x > room_width - stage_x || y < 250)
    {
		if (window == 2 and window_timer == 4)
		{
				
			if (ball_exists == false && ball_cooldown < 1){

				var ball = instance_create( x+30*spr_dir, y-20, "obj_article1" );
				ball_exists=true;
			}
		}
    }
}

//FSPECIAL
if (attack == AT_FSPECIAL) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
{

	if (window == 1 and window_timer == 1){
		sound_play(asset_get("sfx_clairen_nspecial_grab_miss"))
	}
	if (!has_hit){
		can_wall_jump = true;
		if (window == 2 and window_timer >= 20)
		{
			set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
		}
		if (place_meeting(x+(spr_dir),y,asset_get("par_block"))){
				vsp=-1.5;
			}
		else
		{
			if (window == 2 and window_timer < 20) and !was_parried{
				hsp=(dash_speed*1.2)*spr_dir;
			}
			else if was_parried{
				hsp = lerp(8*spr_dir,0,0.5);
			}
			vsp = 0;	
		}
	}
	
    if (window == 3 && window_timer >= 29)
    {
        set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
    }
    if (has_hit && window == 3 && free)
    {
        can_move = true;
        if left_down{
            hsp = (lerp(hsp,-4,0.5));
        }
        else if right_down{
            hsp = (lerp(hsp,4,0.5));
        }
        else{
            hsp=(lerp(hsp,0,0.05));
        }
        if window_timer >= 25
        {
            iasa_script();
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
        }
        
        if window_timer == 11
        {
            vsp=-5;
            set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
        }
    }
    else
    {
        can_move = false;
    }
	if (window == 3 && window_timer == 30)
	{
	 move_cooldown[AT_FSPECIAL] = 20;
	  	
	}
	if !has_hit && (window == 2 && window_timer > 28)
	{
		if !free 
		{
			if was_parried = false
			{
				attack_end();
				hurtbox_spr = sprite_get("spr_hurtbox_idle");
				set_state(PS_IDLE);
				move_cooldown[AT_FSPECIAL] = 20;
				
			} 
			else{
				attack_end();
				hurtbox_spr = sprite_get("spr_hurtbox_idle")
				set_state(PS_PRATLAND)
			}
		}
		else
		{
			set_state ( PS_PRATFALL );
			
		}
		
	}

    else if has_hit && (window == 2 && window_timer < 29)
    {
    	window_timer = 0;
    	window = 3;
    }
    can_fast_fall = false;
    
    if (window == 3 && grabbedid != noone)
    {
    	hsp = 0;
    	grabbedid.ungrab = 0;
        //grabbedid.visible = false; //UNCOMMENT THIS LINE TO MAKE THE GRABBED PLAYER INVISIBLE
        grabbedid.x = lerp(grabbedid.x, x + spr_dir * 50, 0.6); //SET GRABBED PLAYER X TO BE RELATIVE TO PLAYER X
        grabbedid.y = lerp(grabbedid.y, y + spr_dir * 0, 0.6); //SET GRABBED PLAYER Y TO BE RELATIVE TO PLAYER Y
        grabbedid.spr_dir = -spr_dir; //TURN THE GRABBED PLAYER TO FACE THE GRABBING PLAYER
        grabbedid.wrap_time = 6000;
        grabbedid.state = PS_WRAPPED;
    } 
	if (window_timer = 11)
	{  //REPLACE THIS IF CONDITION WITH WHAT YOU WANT TO RELEASE THE GRA
		if grabbedid != noone{
			grabbedid.x = lerp(grabbedid.x, x + spr_dir * 45, 0.6);
			grabbedid.y = y;
			grabbedid = noone;			
		}
    }
       
	if state = PS_ATTACK_AIR 
	{
		set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE,290);
		set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
		set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
	}
	else
	{
		reset_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE);
		reset_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING);
	}
}