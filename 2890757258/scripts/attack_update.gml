//	B - Reversals
switch(attack)
{
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if (attack == AT_FTILT)
{
	if (window == 1 && window_timer == 10 && !hitpause)
	{	
		sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.40);
	}
}

if (attack == AT_DTILT)
{
	if (window == 1 && window_timer == 9 && !hitpause)
	{	
		sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.40);
	}
}

if (attack == AT_NAIR)
{
	if has_rune("C") 
	{
		//	Cancellable on hit fun~
		if (window == 2 && window_timer > 1 && has_hit)
		{
			iasa_script();
		}
	}
}

if (attack == AT_UAIR)
{
	if (window == 2 && window_timer == 3 && free)
	{	
		if (attack_down)
		{	
			vsp = clamp(vsp, -0.9, -0.9);
		}
	}
}

if (attack == AT_FAIR)
{
	if (window == 1 && window_timer == 14 && !hitpause)
	{	
		sound_play(asset_get("sfx_swipe_medium2"), false, noone, 0.40);
	}
}

if (attack == AT_NSPECIAL)
{	
	//	Just in case, Reset Zone
	if (window == 1 && window_timer == 1)
	{
		reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING);
		reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT);
	}
	
	if (window == 2)
	{
		if (free)
		{
			vsp = clamp(vsp, -0.9, -0.9);
		}
		
		//	No magic? Poof
		if (magic_meter < 9)
		{
			if (window_timer == 2 && !hitpause)
			{
				spawn_hit_fx(x+52*spr_dir, y-44, 14);
				sound_play(asset_get("sfx_forsburn_disappear"), false, noone, 0.75);
			}
			
			if (special_down && window_timer == 2 && !hitpause)
			{
				spawn_hit_fx(x+52*spr_dir, y-44, 14);
				sound_play(asset_get("sfx_forsburn_disappear"), false, noone, 0.75);
			}
		}
		
		//	Single Shot
		if (magic_meter > 9)
		{			
			reset_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE);
			reset_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING);			
			reset_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT);
			
			if (window_timer == 2 && !hitpause)
			{				
				magic_meter -= 10;
				
				sound_play(sfx_shantae_fball);
				
				create_hitbox(AT_NSPECIAL, 1, x+42*spr_dir, y-46);		//	Middle

				move_cooldown[AT_NSPECIAL] = 60;
			}
		}
		
		//	Triple or nothing
		if (magic_meter > 11)
		{			
			set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
			set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.35);
			set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 4);
			set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.35);
			set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);			
			
			if (special_down && window_timer == 2 && !hitpause)
			{				
				magic_meter -= 15;
				
				sound_play(sfx_shantae_fball_3);
				sound_stop(sfx_shantae_fball);
				
				create_hitbox(AT_NSPECIAL, 1, x+40*spr_dir, y-78);		//	Top						
				create_hitbox(AT_NSPECIAL, 1, x+40*spr_dir, y-14);		//	Bottom	

				move_cooldown[AT_NSPECIAL] = 70;				
			}			
		}
	}
}

if (attack == AT_FSPECIAL)
{
	can_wall_jump 	= true;
	can_move 		= false;
	can_fast_fall 	= false;
	
	if (window == 1)
	{	
		hsp 		= 0;		
		moved_up 	= false;
		
		//	Away with you
		/*if (window_timer > 1 && window_timer < 15)
		{
			invincible 		= true;
			//invince_time 	= 10;
		}*/
		
		if (window_timer == 2 && !hitpause)
		{
			var transform_effect = spawn_hit_fx(x-76*spr_dir, y-98, vfx_transform);
			transform_effect.depth = depth-2;
		}
		
		if (window_timer == phone_window_end)
		{
			hsp = 13 * spr_dir;
		}
	}
	
	if (window > 1 && window < 5)
	{
        //	Ledge Snap
		if (!was_parried && !hitpause) 
		{        
            if (place_meeting(x + hsp, y, asset_get("par_block")) && free)
			{
                for (var i = 1; i < 40; i++)
				{
                    if (!place_meeting(x + hsp, y - i ,asset_get("par_block"))) 
					{
                        y -= i;
                        break;
                    }
                }      
            }
		}
		
		//	If zero, you can climb. If not, you are a silly monkey :U
		if (monke_count == 0)
		{
			//	This is where Monkey Shantae clings onto a wall
			if (place_meeting(x+10*spr_dir, y-30, asset_get("par_block")))
			{			
				hsp = 0;
				vsp = 0;
				
				sprite_change_offset("monke_wallcling", 34, 80);
				
				destroy_hitboxes();
				
				set_attack(AT_EXTRA_2);
				set_state(PS_ATTACK_AIR);
				hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
				
				window 			= 1;
				window_timer 	= 0;
			   
				spawn_hit_fx(x + 20*spr_dir, y - 30, 305);
				sound_play(sfx_monkey_cling);
				sound_play(asset_get("sfx_land_medium"), false, noone, 1, 0.9 + random_func(1, 3, true)/20);
			}
		}
    }
	
	if (window == 5)
	{
		if (window_timer == 9 && !hitpause)
		{
			transform_effect = spawn_hit_fx(x-76*spr_dir, y-98, vfx_transform);
		}
		
		move_cooldown[AT_FSPECIAL] = 36;
	}
}

if (attack == AT_DSPECIAL)
{
	if (window == 2)
	{
		if (magic_meter > 24)
		{
			if (window_timer == 1 && !hitpause)
			{			
				magic_meter -= 25;
				
				if (spr_dir == 1)
				stormy_puff = instance_create(x+79*spr_dir, y-50, "obj_article1");	
				
				if (spr_dir == -1)
				stormy_puff = instance_create(x-19*spr_dir, y-50, "obj_article1");	
			}
		}
	}
}	

if (attack == AT_DSPECIAL_AIR)
{
	can_wall_jump 	= true;
	can_move 		= false;
	can_fast_fall 	= false;	
	
	if (window == 1)
	{
		reset_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS);
		
		ele_loop 		= 0;
		ele_ouch 		= false;
		
		vsp 			= -1;
		hsp 			= 0;		
		
		if (window_timer == 2 && !hitpause)
		{
			var transform_effect 	= spawn_hit_fx(x-76*spr_dir, y-96, vfx_transform);
			transform_effect.depth 	= depth-2;
		}
		
		if (window_timer == phone_window_end)
		{
			vsp 			= 20;
			fall_through 	= 1;
		}
	}
	
	if (window > 1 && special_down || down_down)
	{
		if (!was_parried)
		{
			fall_through = true;
		}
	}
	
	if (window == 2)
	{
		if (window_timer == phone_window_end)
		{
			if (!was_parried && !hitpause) 
			{		
				soft_armor 		= 14;
			}			
		}
	}
	
	if (window == 4)
	{	
		ele_loop++;
		
		if (was_parried)
		{
			soft_armor 		= 0;
		}
		
		if (ele_loop > 10)
		{
			can_jump 		= false;
			can_shield 		= true;
			can_special 	= false;
		}
			
		if (!hitpause) 
		{
			vsp 			= 20;			
		}
		
		if (has_hit_player)
		{
			//	Cancellable on hit fun
			ele_ouch 		= true;
		}
			
		if (!free) 
		{
			window 			= 5;
			window_timer 	= 0;			
			
			set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 7);
			
			destroy_hitboxes();
			
			sound_play(asset_get("sfx_land_heavy"));
			sound_play(sound_get("sfx_shantae_elephant_stomp"), false, noone, 0.80);	
		}
	}
	
	if (window == 5)
	{
		soft_armor 		= 0;
		
		if (window_timer == 1)
		{
			shake_camera(8, 6);
		}
	}
	
	//	And here's the cancellation prize~
	//	Part 1
	if (window == 6 && window_timer > 5)
	{	
		if (ele_ouch == true)
		{
			//	Forcing the transform VFX to play once and not overlap with the other ones
			if (attack_pressed || strong_down || special_pressed || 
			shield_pressed || jump_pressed || left_down || right_down)
			{
				iasa_script();
				
				if (!hitpause)
				{
					transform_effect = spawn_hit_fx(x-76*spr_dir, y-98, vfx_transform);
				}
			}			
		}
	}
	
	//	And here's the cancellation prize~
	//	Part 2
	if (window == 7)
	{
		if (ele_ouch == true)
		{
			iasa_script();
			
			if (window_timer == 1 && !hitpause)
			{
				transform_effect = spawn_hit_fx(x-76*spr_dir, y-98, vfx_transform);
			}
		}
		
		else
		{		
			if (window_timer == 6 && !hitpause)
			{
				transform_effect = spawn_hit_fx(x-76*spr_dir, y-98, vfx_transform);
			}
		}
	}
}

if (attack == AT_USPECIAL)
{
	can_move 		= false;
	can_wall_jump 	= true;
	can_fast_fall 	= false;
	
	//	Go go Power Harpies!
	if (get_player_color( player ) > 9 && get_player_color( player ) < 18
	|| get_player_color( player ) > 18 && get_player_color( player ) < 21
	|| get_player_color( player ) > 21 && get_player_color( player ) < 24
	|| get_player_color( player ) > 27 && get_player_color( player ) < 32) 
	{
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecialALT"));
		set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecialALT"));
	}	
	
	// 	Or not
	else 
	{
		set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
		set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
	}	
	
	if (window == 1)
	{
		reset_window_value(AT_USPECIAL, 2, AG_WINDOW_INVINCIBILITY);
		
		//	Again, again... Away with you...
		/*if (window_timer > 1 && window_timer < 5)
		{
			invincible 		= true;
			//invince_time 	= 8;
		}*/
		
		if (window_timer == 2 && !hitpause)
		{
			var transform_effect = spawn_hit_fx(x-78*spr_dir, y-96, vfx_transform);
			transform_effect.depth = depth-2;
		}
		
		if (!hitpause) 
		{
			//	Prevent from falling any further near bottom blastzone
			if (vsp > 0 && y > get_stage_data(SD_BOTTOM_BLASTZONE) - 20) 
			{
				vsp = 0;
			}
		}
	}
	
	if (window == 2 && window_timer > 7)
	{
		set_window_value(AT_USPECIAL, 2, AG_WINDOW_INVINCIBILITY, 0);
	}
	
	if (window == 1 || window == 2 && !hitpause)
	{
		if (window_timer == phone_window_end)
		{
			vsp = 0;
			hsp = 0;
		}		
	}
	
	if (window == 4 && !hitpause)
	{
		vsp = -12;
	}

	if (window == 4 && window_timer > 7 || window == 5 || window == 6)
	{
		can_move 	= true;
	}
	
	if (window == 6)
	{		
		if (window_timer == 5 && !hitpause)
		{
			transform_effect = spawn_hit_fx(x-76*spr_dir, y-104, vfx_transform);
		}
	}
}

//	Monke Cling
if (attack == AT_EXTRA_2)
{	
	can_wall_jump 	= false;
	can_fast_fall 	= false;
	can_jump 		= true;
	can_move 		= false;
	
	hsp = 0;
	vsp = 0;
	
	sound_stop(sfx_monkey_charge);
	
	if (window == 1)
	{
		set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 1);	

		if (window_timer == 1)
		{
			monke_count += 1;
		}
		
		if (up_down)
		{
			window = 2;
			window_timer = 0;
		}
		
		if (jump_pressed)
		{
			window = 3;
			window_timer = 0;
		}
	}
	
	if (window == 2)
	{
		set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 2);
		
		if (up_down)
		{	
			vsp -= 1.5;
			
			if (!place_meeting(x+10*spr_dir, y-40, asset_get("par_block")))
			{
				window = 3;
				window_timer = 0;
			}
		}		
		
		if (vsp == 0)
		{
			window = 1;
			window_timer = 0;
		}	

		if (jump_pressed)
		{
			window = 3;
			window_timer = 0;
		}					
	}
	
	if (window == 3)
	{
		can_move = true;
			
		vsp = -10;
		hsp = -6 * spr_dir;
		
		sound_play(sfx_monkey_drop);
		
		set_state(PS_DOUBLE_JUMP);
	}
}

if (attack == AT_TAUNT) 
{	
	if (window == 2 && window_timer == 1)
	{	
		var tauntae = random_func(0, 3, true);		
		switch(tauntae) 
		{
			case 0:
			set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_shantae_taunt1-1"));
			break;
				
			case 1:
			set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_shantae_taunt1-1"));	
			break;
			
			case 2:
			set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_shantae_taunt1-2"));
			break;
		}
	}
		
	if (taunt_down && window == 2 && window_timer == 19) 
	{
		window 			= 2;
		window_timer 	= 0;
	}
}

if (attack == AT_TAUNT_2) 
{	
	if (attack_pressed) or (special_pressed) 
	{
		if (window == 2)
		{		
			window 			= 3;
			window_timer 	= 0;
		}
	}
}

//	Taunt 3
if (attack == AT_EXTRA_1)
{
	if (window == 1)
	{
		if (window_timer == 1)
		{		
			var change = random_func(0, 5, true);		
			switch(change) 
			{
				case 0:		//	Bat
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 5);
				break;
					
				case 1:		//	Crab
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 6);	
				break;
				
				case 2:		//	Dyrad Tree
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 7);
				break;	
				
				case 3:		//	Mermaid
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 8);
				break;			
							
				case 4:		//	Spider
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
				set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 9);
				break;
			}	
		}
		
		if (window_timer == 19 && !hitpause)
		{
			transform_effect = spawn_hit_fx(x-74*spr_dir, y-104, vfx_transform);
			transform_effect.depth = depth-2;
		}
	}
	
	if (window == 3 && window_timer == 1 && !hitpause)
	{
		transform_effect = spawn_hit_fx(x-74*spr_dir, y-104, vfx_transform);
	}
}

//	Repeat after me...
//	DUST TO DUST~!!!!!!
switch(attack)
{	
	case AT_JAB:
		if window == 7 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x-22*spr_dir, y, "dash", spr_dir]);
		}
		break;
	
	case AT_FTILT:
		//	I'll sort something out later 
		/*if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x+102*spr_dir, y, "dash", -spr_dir]);
		}*/
		break;
	
	case AT_DTILT:
		//	Same here as well
		/*if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x+102*spr_dir, y, "dash", -spr_dir]);
		}*/
		break;
	
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x-12*spr_dir, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x+12*spr_dir, y, "dash", -spr_dir]);
		}
		break;
	
	case AT_FSTRONG:
		if window == 2 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x+122*spr_dir, y, "dash_start", -spr_dir]);
		}
		break;
	
	case AT_USTRONG:
		if window == 3 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
		
	case AT_DSTRONG:			
		if window == 2 && window_timer == phone_window_end{	
			array_push(phone_dust_query, [x+42*spr_dir, y, "dash", -spr_dir]);
		}
		
		if window == 3 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x-42*spr_dir, y, "dash", spr_dir]);
		}
		break;
	
	case AT_DSPECIAL_AIR:
		if window == 5 && window_timer == 1 {
			array_push(phone_dust_query, [x-28*spr_dir, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x+26*spr_dir, y, "dash_start", -spr_dir]);
		}
		break;		
}


#define spawn_base_dust // written by supersonic
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
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;