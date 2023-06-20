//#macro AT_JAB2 39;
//other moves
//
//     
//     
//     

//B - Reversals / Mach Cancel
switch (attack)
{
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_USPECIAL:
	case AT_DSPECIAL:
		trigger_b_reverse();
		break;

      case AT_JAB:
      case AT_FTILT:
      case AT_UTILT:
      case AT_DTILT:
      case AT_NAIR:
      case AT_FAIR:
      case AT_BAIR:
      case AT_UAIR:
      case AT_DAIR:
	      if (nspecial_mach_timer > 0)
            {
		    can_attack = has_hit && !hitpause;
		    can_jump = can_attack;
                move_cooldown[AT_TAUNT] = 2;
		}
		break;
}

switch (attack)
{
	

	case AT_TAUNT:
	if (window = 1 && window_timer = 1)
	{
          taunt_free = free;
          sound_play(sound_get("sfx_taunt"),0,0,1,0.9 + ((random_func(4,1,false)*0.2)) )
	}
      if (taunt_free && !free)
      {
          iasa_script();
          set_state(PS_LANDING_LAG);
      }
	break;


	case AT_JAB:
	if (window = 7 && window_timer = 1 && !hitpause)
	{
		sound_play(sound_get("sfx_nair"));
	}
	if (window = 7 && window_timer = 9 && !hitpause)
	{
	      spawn_base_dust(x-2*spr_dir, y, "dash_start", spr_dir);
		sound_play(sound_get("sfx_groundpound"), 0, 0, 0.6);
		sound_stop(sound_get("sfx_nair"));
	}
	break;

	case AT_FTILT:
	if (window = 1 && window_timer = 5 && !hitpause)
	{
		sound_play(asset_get("sfx_forsburn_cape_swipe"));
		spawn_base_dust(x-2*spr_dir, y, "dash_start", spr_dir);
	}
	break;
	
	case AT_DTILT:
	if (window = 1 && window_timer = 5 && !hitpause)
	{
		sound_play(asset_get("sfx_dash_start"));
		spawn_base_dust(x-2*spr_dir, y, "dash_start", spr_dir);
	}
	if (window = 2 && !hitpause)
	{
		spawn_base_dust(x-2*spr_dir, y, "dash", spr_dir);
	}
	break;
	
	case AT_UTILT:
	if (window == 3 && window_timer == 1) 
	{
		easetimer = 0;
		char_height = 92;
	}
	if (window == 1 && window_timer < 6 || window == 4 && window_timer == 1)
	{
		if (window = 1) easetimer = 0;
		char_height = 50;
	}
	if (window == 2 && window_timer < 4 && !hitpause)
	{
		if (easetimer < 3)
		{
			char_height = ease_quadOut(50, 92, easetimer, 2);
			easetimer++;
		}
	}
	if (window == 3 && window_timer > 6-has_hit*2 && !hitpause)
	{
		if (easetimer < 6-has_hit*2)
		{
			char_height = ease_quadIn(92, 50, easetimer, 6-has_hit*2);
			easetimer++;
		}
		else char_height = 50;
      }
	break;


	case AT_DATTACK:
      if (window = 1 && window_timer = 1) dattack_bounce = 0;
     	if (window = 1 && window_timer = 13) spawn_base_dust(x, y, "jump", spr_dir);
	if (window = 2 || window = 3)
	{
	    if (dattack_bounce)
          {
              window = 5;
              window_timer = 0;
              old_vsp = -6;
              destroy_hitboxes();
          }
          else if (window = 3 && window_timer >= 25)
          {
              window = 7;
          }
      can_move = true;
      can_fast_fall = false;
	}
      else if (window = 4)
      {
      destroy_hitboxes();
          if (window_timer = 1) spawn_base_dust(x, y, "land", spr_dir);
          if (window_timer >= 18)
          {
              window = 7;
          }
      }

	if (window >= 4) 
	{
		easetimer = 0;
		char_height = 64;
	}
	if (window == 1 && window_timer < 6 || window >= 4)
	{
		if (window = 1) easetimer = 0;
		char_height = 50;
	}
	if (window == 2 && window_timer < 4 && !hitpause)
	{
		if (easetimer < 3)
		{
			char_height = ease_quadOut(50, 64, easetimer, 2);
			easetimer++;
		}
	}
      break;

	case AT_NAIR:
	if (window = 1 && window_timer = 5 && !hitpause)
	{
		sound_play(asset_get("sfx_spin"))
	}
      break;

	case AT_FAIR:
	if (window == 2 && window_timer == 1) 
	{
		easetimer = 0;
		char_height = 80;
	}
	if (window == 1 && window_timer < 6 || window == 4 && window_timer == 1)
	{
		if (window = 1) easetimer = 0;
		char_height = 50;
	}
	if (window == 1 && window_timer > 6 && !hitpause)
	{
		if (easetimer < 2)
		{
			char_height = ease_quadOut(50, 80, easetimer, 2);
			easetimer++;
		}
	}
	if (window == 3 && window_timer > 0 && !hitpause)
	{
		if (easetimer < 6-has_hit*2)
		{
			char_height = ease_quadIn(80, 50, easetimer, 6-has_hit*2);
			easetimer++;
		}
		else char_height = 50;
      }
	break;

	case AT_BAIR:
	if (window = 1 && window_timer = 12 && !hitpause)
	{
		sound_play(asset_get("sfx_shovel_hit_med1"))
	}
      break;

	case AT_UAIR:
	if (window == 3 && window_timer == 1) 
	{
		easetimer = 0;
		char_height = 88;
	}
	if (window == 1 && window_timer < 6 || window == 4 && window_timer == (12 - has_hit*4))
	{
		if (window = 1) easetimer = 0;
		char_height = 50;
	}
	if (window == 2 && window_timer < 4 && !hitpause)
	{
		if (easetimer < 3)
		{
			char_height = ease_quadOut(50, 88, easetimer, 2);
			easetimer++;
		}
	}
	if (window == 4 && window_timer > 0 && !hitpause)
	{
		if (easetimer < 6-has_hit*2)
		{
			char_height = ease_quadIn(88, 50, easetimer, 6-has_hit*2);
			easetimer++;
		}
		else char_height = 50;
      }
	break;
	
	case AT_DAIR:
	if (window = 1 && window_timer = 1)
	{
		vsp = min(vsp, -4);
	}
	if (window = 1 && window_timer = 13 && !hitpause)
	{
		sound_play(asset_get("sfx_swipe_heavy2"))
	}
      if (window >= 2 && window <= 4)
      {
          can_wall_jump = true;
          if (!nspecial_mach_timer && (get_gameplay_time() % (ai_freq) = ai_freq-1)) CreateAfterimage();
      }
	if (window < 6 && (has_hit || !free))
	{
          if (window = 5 || window = 1)
          {
              iasa_script();
              set_state(PS_LANDING_LAG);
          }
          else
          {
              if (has_hit) 
              {
                  if (!hitpause) 
                  {
		          window = 7;
                      vsp = -7;
                      move_cooldown[AT_DAIR] = 40;
                      can_fast_fall = false;
                  }
                  if (old_vsp != -7)
                  {
                      sound_play(sound_get("sfx_groundpound"))
                  }
                      image_index = 16;
                      old_vsp = -7;
              }
              else if (!free) 
              {
		      window = 6;
                  spawn_base_dust(x-12, y, "dash_start", 1);
                  spawn_base_dust(x+12, y, "dash_start", -1);
                  shake_camera(4, 4);
                  sound_play(sound_get("sfx_groundpound"))
              }
              if (!hitpause) window_timer = 0;
              destroy_hitboxes();
              //sound_play(sound_get("sfx_groundpound"))
          }
	}
      if (window = 5 && window_timer >= 18 || window = 6 && window_timer >= 28)
      {
          iasa_script();
          set_state(free?PS_IDLE_AIR:PS_IDLE);
      }
      if (window = 7 && !free)
      {
          iasa_script();
          set_state(PS_LANDING_LAG);
      }
      break;

	case AT_FSTRONG:
      if (window == 1 && window_timer == 1) 
      { 
      	    grabbed_player_obj = noone; 
          grabbed_player_relative_x = 0;
          grabbed_player_relative_y = 0;
      }
	if (window = 3 && window_timer = 4 && !hitpause)
	{
		sound_play(asset_get("sfx_swipe_medium2"))
	}


	if (window == 2 && window_timer == 1) 
	{
		easetimer = 0;
		char_height = 64;
	}
	if (window == 3 && window_timer == 8) 
	{
		easetimer = 0;
		char_height = 72;
	}
	if (window == 1 && window_timer <= 1 || window == 5 && window_timer == 16)
	{
		if (window = 1) easetimer = 0;
		char_height = 50;
	}
	if (window == 1 && !hitpause)
	{
		if (easetimer < 6)
		{
			char_height = ease_quadOut(50, 64, easetimer, 6);
			easetimer++;
		}
	}
	if (window == 3 && window_timer < 4 && !hitpause)
	{
		if (easetimer < 3)
		{
			char_height = ease_quadOut(64, 72, easetimer, 2);
			easetimer++;
		}
	}
	if (window == 5 && window_timer > 8 && !hitpause)
	{
		if (easetimer < 6)
		{
			char_height = ease_quadIn(72, 50, easetimer, 6);
			easetimer++;
		}
		else char_height = 50;
      }
      break;

      case AT_FSTRONG_2:
      if (instance_exists(grabbed_player_obj)) 
      {
    	    if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) grabbed_player_obj = noone;
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
		 
		  if (window == 1) 
              {
			var pull_to_x = 80 * spr_dir;
			var pull_to_y = 0;
			
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		  }
	    }
      }

	if (window == 1 && window_timer == 1) 
	{
		easetimer = 0;
		char_height = 72;
	}
	if (window == 4 && window_timer == 15)
	{
		char_height = 50;
	}
	if (window == 4 && window_timer > 4 && !hitpause)
	{
		if (easetimer < 6)
		{
			char_height = ease_quadIn(72, 50, easetimer, 6);
			easetimer++;
		}
		else char_height = 50;
      }
      break;


	case AT_USTRONG:
	if (window == 5 && window_timer == 1) 
	{
		easetimer = 0;
		char_height = 112;
	}
	if (window == 6 && window_timer == 3) 
	{
		easetimer = 0;
		char_height = 160;
	}
	if (window == 1 && window_timer < 6 || window == 7 && window_timer == (24 - has_hit*8))
	{
		if (window = 1) easetimer = 0;
		char_height = 50;
	}
	if (window == 3 && window_timer > 3 && !hitpause)
	{
		if (easetimer < 3)
		{
			char_height = ease_quadOut(50, 112, easetimer, 2);
			easetimer++;
		}
	}
	if (window == 5 && window_timer > 7 && !hitpause)
	{
		if (easetimer < 3)
		{
			char_height = ease_quadIn(112, 160, easetimer, 2);
			easetimer++;
		}
		else char_height = 50;
      }
	if (window == 7 && window_timer > 8-has_hit*2 && !hitpause)
	{
		if (easetimer < 9-has_hit*3)
		{
			char_height = ease_quadIn(160, 50, easetimer, 9-has_hit*3);
			easetimer++;
		}
		else char_height = 50;
      }

	if (window = 3 && window_timer = 6 && !hitpause)
	{
		sound_play(asset_get("sfx_swipe_medium1"))
	}
	if (window = 5 && window_timer = 10 && !hitpause)
	{
		sound_play(asset_get("sfx_shovel_hit_light1"))
	}
	if (window = 6 && (window_timer = 1 || window_timer = 3 || window_timer = 6) && !hitpause)
	{
		sound_play(asset_get("sfx_blow_weak2"))
	}
	if (window = 6 && (window_timer = 8) && !hitpause)
	{
		sound_play(asset_get("sfx_mol_flare_explode"))
		sound_play(asset_get("sfx_blow_medium1"))
	}
	break;

	case AT_DSTRONG:
      //fall_through = down_down; no!!!!!!
     	if (window = 1 && window_timer = 6)
      {
          spawn_base_dust(x, y, "jump", spr_dir);
          sound_play(sound_get("sfx_jump"))
          sound_play(asset_get("sfx_swipe_medium1"))
      }
     	if (window = 8 && window_timer = 1)
      {
          shake_camera(10, 5);
      }
      can_move = false;
      if (window > 1 && window < 5)
      {
          dstrong_timer = 0;
          hsp += (right_down - left_down)*0.4;
          hsp = clamp(hsp*0.8, -1.4, 1.4);
      }
      else if (window >= 5) hsp = 0;

      if (window = 7)
      {
          if (!hitpause) vsp = 16;
          dstrong_timer++
          //fall_through = true;
          if (dstrong_timer > 20)
          {
              can_jump = true;
              can_shield = true;
              can_attack = true;
              can_special = true;
          }
      }

	if (window == 3 && window_timer == 3) 
	{
		easetimer = 0;
		char_height = 84;
	}
	if (window == 1 || window == 9 && window_timer > 30-has_hit*10)
	{
		if (window = 1) easetimer = 0;
		char_height = 50;
	}
	if (window == 2 && !hitpause)
	{
		if (easetimer <= 6)
		{
			char_height = ease_quadOut(50, 84, easetimer, 6);
			easetimer++;
		}
	}
	if (window == 9 && window_timer > 24-has_hit*8 && !hitpause)
	{
		if (easetimer < 6-has_hit*2)
		{
			char_height = ease_quadIn(84, 50, easetimer, 6-has_hit*2);
			easetimer++;
		}
		else char_height = 50;
      }
	break;

	// original code courtesy of Mr Nart, edited for the noise
	case AT_NSPECIAL:

            move_cooldown[AT_NSPECIAL] = 7;
            can_fast_fall = false;
            can_move = false;
            can_wall_jump = (window > 1);

            if (window > 2 && window < 6 && (get_gameplay_time() % (ai_freq) = ai_freq-1)) CreateAfterimage();
            
            if (window = 1)
            {
            	    if (window_timer = 1) vsp = min(vsp, 0);
		    hsp = nspecial_accel * spr_dir * window_timer;
		    vsp = min(vsp, 3);
                nspecial_jump_timer = 0;
            }
            if (window = 2)
            {
		    hsp = nspecial_max_hsp * spr_dir;
		    vsp = min(vsp, max_fall * 0.75);
		    nspecial_mach_timer = nspecial_mach_duration + 1;
				
		    if (window_timer = 1 && !hitpause) 
                {
		        nspecial_loops += 1;
		    }
		    if (nspecial_loops > 0)
                {
                    if (is_special_pressed(DIR_NONE))
                    {
		            window = 3;
			      window_timer = 0;
			      nspecial_loops = -1;
                        sound_play(sound_get("sfx_nspecialboost"), false, 0, 0.4);
			  }
		        else 
                    {
				can_attack = true;
				can_strong = true;
				can_ustrong = true;
				can_special = true;
				can_jump = true;
		        }
		    }
            }
            if (window = 3)
            {
				nspecial_mach_timer = 0;
				if (window_timer = 1) super_armor = true;
				
				if (!nspecial_turned) 
                        {
					var holding_back = (right_down - left_down == -1 * sign(spr_dir));
					if (window_timer <= 7 && holding_back) 
					{
						spr_dir *= -1;
						nspecial_turned = true;
					}
				}
				break;
            }
            if (window = 4 || window = 5)
            {
                        super_armor = false;
                        //soft_armor = 10; i though peppino's had super armor haha
				nspecial_mach_timer = 0;
                        nspecial_jump_timer++
                        if (nspecial_jump_timer > 40)
                        {
                            can_jump = true;
                            can_shield = true;
                            can_attack = true;
                            can_special = true;
                        }
            }
            if (window = 6)
            {
				nspecial_mach_timer = 0;
				can_fast_fall = (window_timer >= 15 + has_hit*7);
				can_wall_jump = true;
			      super_armor = false;
                        //soft_armor = 0;
                        hsp = clamp(hsp, -3, 3)
                        destroy_hitboxes();
            }

            if (window == 1 && window_timer = 1) sound_play(sound_get("sfx_mach2"));
            if (window == 1 && window_timer = 12) sound_play(asset_get("sfx_ori_bash_use"));
            if (window == 4 && window_timer = 1 && !hitpause)
            {
                sound_play(asset_get("sfx_ori_grenade_launch"), false, 0, 0.4);
                sound_play(asset_get("sfx_swipe_heavy2"));
            }
            if (window == 6 && window_timer = 1 && !hitpause) sound_play(asset_get("sfx_blow_medium2"));

        break;

    case AT_FSPECIAL:
        if (window == 2 && window_timer = 1)
        {
            noisebomb_ins = instance_create(x + spr_dir*30, y-32, "obj_article1");
            sound_play(asset_get("sfx_blow_medium1"));
            sound_play(asset_get("sfx_mol_norm_light"), 0, 0, 0.4);
            vsp = min(-4, vsp);
            hsp = -2*spr_dir;
        }
        move_cooldown[AT_FSPECIAL] = 24;
        break;


	case AT_USPECIAL:
      if (window = 1 && window_timer = 1) uspecial_charge = 0;
      if (window = 2)
      {
          if (special_down and uspecial_charge < 60 && window_timer <= 2)
          {
              window_timer = 1;
              uspecial_charge++;
              if (uspecial_charge = 1) sound_play(sound_get("sfx_superjumphold"), 1)
              if (uspecial_charge/5 = floor(uspecial_charge/5))
              {
                  outline_color = [255, 255, 255];
                  init_shader();
              }
              else if ((uspecial_charge-1)/5 = floor((uspecial_charge-1)/5))
              {
                  outline_color = [0, 0, 0];
                  init_shader();
              }

          }
          else
          {
              set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -8 - (uspecial_charge/10));
              set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -8 - (uspecial_charge/10));
              set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.7 + (uspecial_charge/300));
              if (outline_color != [0, 0, 0])
              {
                  outline_color = [0, 0, 0];
                  init_shader();
              }
              if (window_timer = 3)
              {
                  sound_stop(sound_get("sfx_superjumphold"))
                  sound_play(sound_get("sfx_superjumprelease"))
              }
          }
      }
      if (window = 4 || window = 5 || (window = 6 && window_timer <= 6))
      {
          if (window = 4 && window_timer = 1)
          {
              uspecial_charge = 0;
          }
          if (!nspecial_mach_timer && (get_gameplay_time() % (ai_freq) = ai_freq-1)) CreateAfterimage();
      }
      if (window < 6)
      {
          can_move = false;
          x += (right_down - left_down)*1;
          hsp = clamp(hsp*0.8, -2, 2);
      }
      else can_fast_fall = false;
	break;

    case AT_DSPECIAL:
        if (window == 1 && window_timer = 1)
        {
            sound_play(asset_get("sfx_ori_spirit_flame_hit_2"));
        }
        if (window == 2 && window_timer = 1)
        {
            noisefire_ins = instance_create(x + spr_dir*30, y-32, "obj_article2");
            sound_play(asset_get("sfx_blow_medium2"));
            sound_play(asset_get("sfx_zetter_fireball_fire"));
            if (free) vsp = min(-3, vsp);
            hsp = clamp(hsp,-4,4);
        }
        move_cooldown[AT_DSPECIAL] = 60;
        break;
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

#define CreateAfterimage()
{
if (afterimage_colour = 1) var _noismage = $5555FF  
else if (afterimage_colour = 2) var _noismage = $77FF77
else var _noismage = c_white


    afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:_noismage, timer:0, timerMax:20};
}


