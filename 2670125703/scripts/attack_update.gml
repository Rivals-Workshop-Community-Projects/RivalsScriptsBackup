//	per-attack logic

//B - Reversals
switch(attack)
{
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if (attack == AT_DTILT)
{
	if (window == 1)
	{
		hsp = 0.85 * spr_dir * window_timer;
    }
}

if (attack == AT_DATTACK)
{
	if (window == 1)
	{
		if (window_timer == phone_window_end)
		{
			hsp = 48 * spr_dir;
		}
		
		if (window_timer == phone_window_end - 4)
		{
			sound_play(sfx_dbfz_elbow);
		}
	}
			
	if (window == 2)
	{
		hsp = clamp(hsp, -15, 15);
	}
		
	if (window > 2)
	{
		hsp = clamp(hsp, -10, 10);
		hsp *= 0.9;
	}
		
	vsp = 0;
		
	if (window == 4 && free && window_timer >= phone_window_end * 0.5)
	{
		window_timer = phone_window_end;
	}
}

if (attack == AT_USTRONG)
{
	if (window == 2 && window_timer == 3)
	{
		sound_play(sound_get("ARC_BTL_CMN_Hit_Large-A"), false, noone, 0.25);	
	}
}

if (attack == AT_DSTRONG)
{
	if (window == 2 && window_timer == 3)
	{
		sound_play(sound_get("ARC_BTL_CMN_Hit_Large-A"), false, noone, 0.25);	
	}
}

if (attack == AT_NAIR)
{		
	if (window == 1 && window_timer == 1)
	{
		reset_attack_value(attack, AG_NUM_WINDOWS);
	}
		
	if (window == 3)
	{
		if (!jump_pressed && !special_pressed && !shield_pressed)
		{
			if (attack_pressed && joy_pad_idle)
			{
				set_attack_value(attack, AG_NUM_WINDOWS, 6);
				window++;
				window_timer = 0;
			}
			
			else
			{
				can_attack = true;
			}
		}
	}	
}

if (attack == AT_UAIR)
{
	if (window == 2 && window_timer == phone_window_end)
	{			
		sound_play(sound_get("sfx_uair_blast"));	
	}
}

if (attack == AT_DAIR)
{
	can_fast_fall = false;
	
	if (window == 1 && window_timer == 1)
	{
		reset_attack_value(attack, AG_NUM_WINDOWS);
	}
	
	if (window == 1 && window_timer == phone_window_end - 4)
	{
		sound_play(sound_get("ARC_BTL_GKN_HeavyElbow_Basa"));
	}

	if (window > 3 && window < 5 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN)
	{
		hit_player_obj.x += floor((x + 34*spr_dir - hit_player_obj.x)/1);
		hit_player_obj.y += floor((y + 8 - hit_player_obj.y)/1);
    }
	
	if (window == 2 || window == 3 && !has_hit)
	{
		if (!free)
		{
			set_state(PS_LANDING_LAG);
		}
	}
	
	if (window == 4)
	{
		if (get_gameplay_time() mod 5 == 0 && !free)
		{
			sound_play(asset_get("sfx_land_heavy"));
		}
	
		if (!free)
		{
			hsp = 8 * spr_dir;
		}
	}
	
	if (window > 1)
	{
		can_wall_jump = true;
	}
	
	if (window == 4 || window == 5)
	{
		off_edge = true;
	} 
	
	else 
	{
		off_edge = false;
	}
}

if (attack == AT_FSPECIAL)
{
	can_fast_fall = false;
	can_move = false;
	can_wall_jump = true;
	
	if (window == 1 && window_timer == 1)
	{
		reset_attack_value(attack, AG_NUM_WINDOWS);
	}
	
	if (window == 1 && window_timer == phone_window_end && !free)
	{
		vsp = 0;
	}
	
	if (window == 2 || window == 3)
	{	
		hsp = 5.5 * spr_dir;
	
		if (special_pressed)
		{
			set_attack_value(attack, AG_NUM_WINDOWS, 6);
			window = 6;
			window_timer = 0;
			destroy_hitboxes();
		}
	}
	
	if (window == 2 && has_hit_player && hit_player_obj.state_cat == SC_HITSTUN)
	{
		hit_player_obj.x += floor((x + 98*spr_dir - hit_player_obj.x)/3);
		hit_player_obj.y += floor((y + 5 - hit_player_obj.y)/3);
    }
	
	if (window == 5)
	{	
		if (free)
		{
			move_cooldown[AT_FSPECIAL] = 999;
		}
	}

	if (window == 6)
	{
		hsp = 4 * spr_dir;	
		
		if (free)
		{
			move_cooldown[AT_FSPECIAL] = 999;
		}
	}
	
	if (window == 2 || window == 3 || window == 4 || window == 5 || window == 6)
	{
		off_edge = true;
	} 
	
	else 
	{
		off_edge = false;
	}
}

if (attack == AT_DSPECIAL)
{
	can_fast_fall = false;
	can_move = false;
	
	if (window == 1 && window_timer == 1)
	{
		sound_play(sound_get("sfx_dspecial_quake"), false, noone, 0.75);	
	}
	
	if (has_hit)
	{
		shake_camera(2, 1);
	
		if (free)
		{
			can_jump = true;
			
			if (window > 1)
			{		
				move_cooldown[AT_DSPECIAL] = 60;
			}
		}
	}
}

//	Taunts
if (attack == AT_TAUNT) and (window == 1) and (window_timer == 1) 
{
	if (left_down || right_down)
	{
		set_attack(AT_TAUNT_2);
	}
	
	if (down_down) 
	{
		set_attack(AT_EXTRA_1);
	}
}

if (attack == AT_TAUNT_2)
{
	if (window == 3 && window_timer > 1 && window_timer < 4 && !hitpause) 
	{
		take_damage( player, player, 1 );
	}
}

if (get_player_color(player) == 1)
{	
	if (attack == AT_TAUNT)
	{
		set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_regor_tauntSNURPLE"));
	}
}

if (get_player_color(player) == 5)
{	
	if (attack == AT_TAUNT)
	{
		set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_regor_tauntCINOS"));
	}
}

if (get_player_color(player) == 6)
{	
	if (attack == AT_TAUNT)
	{
		set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_regor_tauntSHADOW"));
	}
}

if (get_player_color(player) == 7)
{	
	if (attack == AT_TAUNT)
	{
		set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_regor_tauntLUGZ"));
	}
}

if (get_player_color(player) == 12)
{	
	if (attack == AT_TAUNT)
	{
		set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_regor_tauntMECHA"));
	}
}

if (get_player_color(player) == 13)
{	
	if (attack == AT_TAUNT)
	{
		set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("sfx_regor_tauntGARLAND"));
	}
}


//----------------------------------------------------------------------------------------------------
//	The magical world of Muno's coding

switch(attack)
{	
	// 	give your moves some "pop" by spawning dust during them!
	//	A.K.A Funny dust zone
	
	case AT_FTILT:
	case AT_DTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
		}
		break;
	
	case AT_UTILT:
		if window == 1 && window_timer == phone_window_end{
			array_push(phone_dust_query, [x, y, "dash", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash", -spr_dir]);
		}
		break;
	
	case AT_FSTRONG:
		if window == 2 && window_timer == 2
		{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
		}
		break;
		
	case AT_DSTRONG:
		if window == 2 && window_timer == 1
		{
			array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
			array_push(phone_dust_query, [x, y, "dash_start", -spr_dir]);
		}
		break;
		
	case AT_DAIR:
		if window == 4 && get_gameplay_time() mod 5 == 0
		{
			if (spr_dir = 1)
			{
				spawn_base_dust(x, y, "dash");
			}
			
			if (spr_dir = -1)
			{
				spawn_base_dust(x, y, "dash");
			}
		}
		break;
	
	case AT_NSPECIAL:
		switch(window)
		{
			case 1: // startup
				beam_juice = 30; // amt of energy "left" in the beam
				beam_juice_max = 60 * 8;
				beam_length = 0; // current length of beam
				hsp = clamp(hsp, -2, 2);
				vsp = min(vsp, 3);
				can_fast_fall = false;
				has_updated_beam_kb = false;
				beam_clash_buddy = noone;
				beam_clash_timer = 0;
				beam_clash_timer_max = 120;
				break;
			
			case 2: // charge loop
				if window_timer == 1
				{
					sound_play(sfx_dbfz_kame_charge, false, noone, 1, 1 + beam_juice * 0.001);
				}
				
				if beam_juice > 180
				{
					shake_camera(floor((beam_juice - 180) / 30), 1);
				}
				
				if special_down && beam_juice < beam_juice_max
				{
					beam_juice++;
				}
				
				else
				{
					window++;
					window_timer = 0;
					
					var can_angle = false;
					
					switch((right_down - left_down) * spr_dir)
					{
						default:
							beam_angle = 30;
							break;
						case 1:
							beam_angle = 15;
							break;
						case -1:
							beam_angle = 45;
							break;
					}
					
					beam_angle *= (up_down - down_down) * can_angle;
					beam_angle = (beam_angle + 360) % 360;
					beam_angle = point_direction(0, 0, lengthdir_x(1, beam_angle) * spr_dir, lengthdir_y(1, beam_angle));
				}
				
				hsp = clamp(hsp, -2, 2);
				vsp = min(vsp, 3);
				can_fast_fall = false;
				
				if window_timer == phone_window_end || window_timer == phone_window_end - 3|| window_timer == phone_window_end - 6
				{
					array_push(phone_dust_query, [x - 20 * spr_dir + sin(window_timer + 2) * 6 * spr_dir, y, beam_juice > 300 ? "dash_start" : (beam_juice > 180 ? "dash" : "walk"), spr_dir]);
				}
				break;
			
			case 3: // post-charge
				hsp *= 0.75;
				vsp *= 0.75;
				can_move = false;
				can_fast_fall = false;
				was_fully_charged = (beam_juice >= beam_juice_max);
				
				if window_timer == phone_window_end
				{
					spawn_nspecial_hitbox(1);
					sound_play(sfx_dbfz_kame_fire);
					array_push(phone_dust_query, [x, y, "dash_start", spr_dir]);
					
					var x1 = x + 72 * spr_dir;
					//var y1 = y - 24 + lengthdir_y(32, beam_angle);
					
					//	Ohohoho...
					if (spr_dir = 1)
					{
						var y1 = y - 24 + lengthdir_y(32, beam_angle);
					}
					
					if (spr_dir = -1)
					{
						var y1 = y - 40 + lengthdir_y(32, beam_angle);
					}
					
					switch((abs(lengthdir_y(1, beam_angle)) > abs(lengthdir_y(1, 15))) * sign(lengthdir_y(1, beam_angle)))
					{
						case 1: // down
							x1 = x + 74 * spr_dir;
							y1 = y - 6;
							break;
						case -1: // up
							x1 = x + 60 * spr_dir;
							y1 = y - 72;
							break;
					}
					
					var h = spawn_hit_fx(x1, y1, vfx_nspecial_fire);
					h.spr_dir = 1;
					h.draw_angle = beam_angle;
					h.depth = depth - 1;
				}
				break;
			
			case 5: // beam loop
				if beam_juice <= 0
				{
					window++;
					window_timer = 0;
					spawn_nspecial_hitbox(2);
				}
				
				hsp = 0;
				vsp = 0;
				can_move = false;
				can_fast_fall = false;
				
				if window_timer % 2
				{
					array_push(phone_dust_query, [x - 20 * spr_dir + sin(window_timer + 2) * 6 * spr_dir, y, "dash", spr_dir]);
				}
				shake_camera(1, 1);
			
			case 4: // beam overshoot
				if beam_clash_buddy != noone
				{
					beam_clash_logic();
				}
				
				else if !was_fully_charged && !hitpause && (was_parried || has_hit || place_meeting(x + lengthdir_x(beam_length + 32, beam_angle), y + lengthdir_y(beam_length, beam_angle), asset_get("par_block")))
				{
					if beam_juice > 0
					{
						beam_juice -= 10;
					}
				}
				
				else if !hitpause
				{
					if beam_juice > 0
					{
						beam_length += 32 + 64 * was_fully_charged;
						beam_juice -= 10;
					}
				}
				
				if window != 6
				{
					spawn_nspecial_hitbox(1);
					
					if beam_clash_buddy == noone
					{
						var me = self;
						with oPlayer if "has_goku_beam" in self && doing_goku_beam && abs((me.beam_angle + 180) % 360 - beam_angle % 360) < 5 && instance_exists(beam_newest_hbox)
						{
							var him = self;
							with beam_newest_hbox if distance_to_object(me.beam_newest_hbox) < (32 + 64 * (me.was_fully_charged || him.was_fully_charged))
							{
								me.beam_clash_buddy = him;
								him.beam_clash_buddy = me;
								with me sound_play(sfx_dbfz_hit_broken);
								me.beam_juice = max(me.beam_juice, 30);
								him.beam_juice = max(him.beam_juice, 30);
								me.beam_clash_timer_max = max(me.beam_clash_timer_max, him.beam_clash_timer_max);
								him.beam_clash_timer_max = max(me.beam_clash_timer_max, him.beam_clash_timer_max);
							}
						}
					}
				}
				
				hsp = 0;
				vsp = 0;
				can_move = false;
				can_fast_fall = false;
				shake_camera(4, 1);
				break;
			
			case 6: // last hit
				if beam_clash_buddy != noone
				{
					beam_clash_logic();
				}
				
				else if window_timer == phone_window_end
				{		
					var x1 = x + 72 * spr_dir;
					//var y1 = y - 24 + lengthdir_y(32, beam_angle);
					
					if (spr_dir = 1)
					{
						var y1 = y - 24 + lengthdir_y(32, beam_angle);
					}
					
					if (spr_dir = -1)
					{
						var y1 = y - 40 + lengthdir_y(32, beam_angle);
					}
					
					switch((abs(lengthdir_y(1, beam_angle)) > abs(lengthdir_y(1, 15))) * sign(lengthdir_y(1, beam_angle)))
					{
						case 1: // down
							x1 = x + 74 * spr_dir;
							y1 = y - 6;
							break;
						case -1: // up
							x1 = x + 60 * spr_dir;
							y1 = y - 72;
							break;
					}
					
					var h = spawn_hit_fx(x1 + lengthdir_x(beam_length - 34, beam_angle), y1 + lengthdir_y(beam_length - 34, beam_angle), vfx_nspecial_destroy);
					h.spr_dir = 1;
					h.draw_angle = beam_angle;
					h.depth = depth;
				}
				
				hsp = 0;
				vsp = 0;
				can_move = false;
				can_fast_fall = false;
				break;
			
			case 7: // endlag
				hsp = 0;
				vsp = 0;
				can_move = false;
				can_fast_fall = false;
				break;
		}
	break;
	
	//	I've modified this a bit for the funny Eagle Wisp
	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;
		
		switch(window)
		{
			case 1: // startup
				hsp = 0;
				vsp = 0;
				if window_timer == phone_window_end
				{
					vsp = -5;
				}
				break;
			
			case 2: // flight
				if (!joy_pad_idle)
				{
					hsp += lengthdir_x(1, joy_dir);
					vsp += lengthdir_y(1, joy_dir);
				} 
				
				else 
				{
					hsp *= 0.9;
					vsp *= 0.9;
				}
				
				var fly_dir = point_direction(0,0,hsp,vsp);
				var fly_dist = point_distance(0,0,hsp,vsp);
				var max_speed = 12;
				
				if (fly_dist > max_speed)
				{
					hsp = lengthdir_x(max_speed, fly_dir);
					vsp = lengthdir_y(max_speed, fly_dir);
				}
				break;
			
			case 3: // atk startup
			case 4: // atk active
			case 5: // endlag
				hsp = 0;
				vsp = 0;
				break;
		}
		break;	
}

#define beam_clash_logic

if !beam_clash_buddy.doing_goku_beam
{
	beam_clash_buddy.beam_clash_buddy = noone;
	beam_clash_buddy = noone;
}

else
{
	if beam_clash_timer >= beam_clash_timer_max
	{
		var winner = noone;
		if beam_length > beam_clash_buddy.beam_length
		{
			winner = self;
		}
		
		if beam_length < beam_clash_buddy.beam_length
		{
			winner = beam_clash_buddy;
		}
		
		if winner == self
		{
			window = 5;
			window_timer = 0;
		}
		
		else
		{
			beam_juice = 0;
		}
		
		if winner == beam_clash_buddy
		{
			
		}
		
		else
		{
			beam_clash_buddy.beam_juice = 0;
		}
	}
	
	else
	{
		beam_clash_timer++;
		if special_pressed
		{
			clear_button_buffer(PC_SPECIAL_PRESSED);
			beam_length += 32;
			beam_clash_buddy.beam_length -= 32;
			beam_juice = min(beam_juice + 20, beam_juice_max);
			beam_clash_buddy.beam_juice = max(beam_clash_buddy.beam_juice - 10, 10);
			sound_play(sfx_dbfz_kame_charge, false, noone, 1, 1 + beam_juice * 0.001);
		}
	}
}

#define spawn_nspecial_hitbox(num)

if hitpause && num == 1 return;

attack_end();

var x1 = 72;
var y1 = -30 + lengthdir_y(32, beam_angle);

switch((abs(lengthdir_y(1, beam_angle)) > abs(lengthdir_y(1, 15))) * sign(lengthdir_y(1, beam_angle)))
{
	case 1: // down
		x1 = 74;
		y1 = -6;
		break;
	case -1: // up
		x1 = 60;
		y1 = -72;
		break;
}

// x1 += lengthdir_x(beam_length - 32 * !has_hit, beam_angle) * spr_dir;
// y1 += lengthdir_y(beam_length - 32 * !has_hit, beam_angle);

var cur_x = x1;
var cur_y = y1;

set_hitbox_value(attack, num, HG_WIDTH, 64 + 16 * has_hit);
set_hitbox_value(attack, num, HG_HEIGHT, 64 + 16 * has_hit);

var ld_x = lengthdir_x(32, beam_angle) * spr_dir;
var ld_y = lengthdir_y(32, beam_angle);

for (var i = 0; i * 32 < beam_length && i < 32 && cur_x == clamp(cur_x, phone_blastzone_l, phone_blastzone_r); i++)
{
	if i % 3 == 0 || (i+1) * 32 >= beam_length
	{
		if (i+1) * 32 >= beam_length
		{
			set_hitbox_value(attack, num, HG_WIDTH, 64 + 64 * has_hit);
			set_hitbox_value(attack, num, HG_HEIGHT, 64 + 64 * has_hit);
		}
		
		beam_newest_hbox = create_hitbox(attack, num, round(x + cur_x * spr_dir), round(y + cur_y));
		beam_newest_hbox.x_pos = round(cur_x * spr_dir);
		beam_newest_hbox.y_pos = round(cur_y);
	}
	
	cur_x += ld_x;
	cur_y += ld_y;
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

switch (name) 
{
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