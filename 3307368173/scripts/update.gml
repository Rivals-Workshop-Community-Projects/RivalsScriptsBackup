//update.gml

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

//initial check stuff
is_attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR);
is_dodging = (hurtboxID.dodging);
game_time = get_gameplay_time();
hbox_view = get_match_setting(SET_HITBOX_VIS);
saro_frenzy = clamp(saro_frenzy,0,3);

if (get_player_color(player) == 23 && game_time % 7 == 0 && point_distance(0, 0, hsp, vsp) > 2.5 && visible)
{
    var fx = spawn_hit_fx(
        x + draw_x + (random_func(0, 8, false) - 4)*8,
        y + draw_y - random_func(1, 8, false)*8,
        fx_ashe_trail
    );
    fx.hsp = (random_func(2, 8, false) - 4)/4;
    fx.vsp = (random_func(3, 8, false) - 4)/2 - 1;
}

if (is_attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);
}
else
{
    window_loops = 0;
    if (my_grab_id != noone) my_grab_id = noone;

    if (state_timer == 0) //force reset manual offsets / rotations on new state
    {
        if (spr_angle != 0) spr_angle = 0;
        if (draw_x != 0) draw_x = 0;
        if (draw_y != 0) draw_y = 0;
    }
}

//grab logic
if (instance_exists(my_grab_id) && my_grab_id != noone) //if you have grabbed someone (and checked that they exist)
{
	grab_time ++;

    with (my_grab_id)
	{
		hitstop = 2; //freeze grabbed foe
		if (last_player_hit_me != other.player) //if another player hits the grabbed player stop the grab sequence
		{
			hitstop = 0;;
			with (other)
			{
				my_grab_id = noone;
				if (!free) hsp = spr_dir*-6; //push back for some extra effect (ground only)
				set_state(free ? PS_IDLE_AIR : PS_IDLE);
			}
		}
    }
}
else grab_time = 0;

//play intro
//if (game_time == 4 && has_intro) set_attack(AT_INTRO);

//renders effects
//credit to supersonic for the help
with (hit_fx_obj)
{
    if (player == other.player && depth == 3) depth = player_id.depth+1;
}
if(saro_uspec_used) move_cooldown[AT_USPECIAL] = 4;
if(saro_fspec_used) move_cooldown[AT_FSPECIAL] = 4;
if(saro_dspec_used) move_cooldown[AT_DSPECIAL] = 4;

if(!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN || state == PS_RESPAWN)
{
    saro_uspec_used = false;
    saro_dspec_used = false
    saro_fspec_used = false;
}

//////////////////////////////////////////////////////// CHARACTER SPECIFIC UPDATE /////////////////////////////////////////////////////////

voice_update();

////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////

//ABYSS RUNES
if (get_match_setting(SET_RUNES))
{
    //rune setup
}

//tie hit particles with hit effects
with (pHitBox) if (orig_player == other.player)
{
    //put your hit fx value instead of 0
    if (hit_effect == 0) fx_particles = 1;
}

//if (shield_pressed) end_match(player); //victory screen check

//parry interraction testing
/*
with (oPlayer) if (temp_level != 0 && state == PS_PARRY && !perfect_dodged)
{
    window = 1;
    window_timer = 0;
    perfect_dodging = true;
}
*/

//NOTE: KEEP THIS SECTION AT THE BOTTOM OF UPDATE.GML
//unless you are adding #defines, which should be at the bottom
if (uses_custom_dusts) custom_dust_effects();
prep_hitboxes();


//custom hitbox colors system (by @SupersonicNK)
#define prep_hitboxes
{
    //Applies the hitbox sprites and prepares them to be drawn (with color!)
    with (pHitBox) if player_id == other && "dont_color" not in self {
        if "col" not in self {
            with other {
                other.col = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_COLOR);
                if other.col == 0 other.col = c_red;
                other.shape = get_hitbox_value(other.attack, other.hbox_num, HG_SHAPE)
                other.draw_colored = true;
                if other.type == 1
                    other.sprite_index = __hb_hd_spr[other.shape];
                else if get_hitbox_value(other.attack, other.hbox_num, HG_PROJECTILE_MASK) == -1
                    other.mask_index = __hb_hd_spr[other.shape];
                else 
                    other.draw_colored = false;
                other.draw_spr = __hb_draw_spr;
            }
        }
    }
}
//remove dust from existance (not really we are just pushing it off-screen)
#define custom_dust_effects
{
    //original code by FQF (from QUA mario), modified by bar-kun
    with (asset_get("new_dust_fx_obj"))
    {
        //dust_fx <= 24 && dust_fx >= 0 will check the values in the array that are in between 0 and 24
        //other.dust_effect[dust_fx] != 0 will check the array value isn't 0 (which represents the default effect)
        //if we put any other number value it will act as if you have an effect, and remove the default dust
        if (dust_fx <= 24 && dust_fx >= 0 && player == other.player && x != -3000 && other.dust_effect[dust_fx] != 0)
        {
            //all the values of the effect that eventually spawn are based off the original effect
            //this allows us to add our own dusts in the proper placement and such
            var effect = other.dust_effect[dust_fx]; //sets up effect
            var spawn_x = x; //X and Y coordinates for where the effect should spawn
            var spawn_y = y;
            var dust_angle = draw_angle; //allows us to rotate the sprites around
            var dust_depth = dust_depth; //sets the depth of the effect

            //other variable checks you can add yourself:
            //player_id - player object
            //player - player number
            //spr_dir - dust's facing direction
            //dust_length - dust's length
            //dust_color - which shade (from the player's shade slots) should the dust color with
            //init - checks if the dust spawned, false for the first frame
            //shader_init - ???
            //step_timer - ???
            //fg_index - ???
            //__sync_id - ???

            //spawn new dusts
            with (other)
            {
                //exceptions:
                //  - we can add in exceptions for certain dusts to do various things (example below)
                //  - the numbers go between 0 - 24
                switch (other.dust_fx)
                {
                    case 8: //wall hit bounce - when hitting the celling it should b rotated properly
                        if (hit_player_obj.vsp != 0 && hit_player_obj.free && dust_angle == 0) dust_angle = 180; //celling bounce
                        break;
                }
                
                //spawn effect
                var new_dust_fx = spawn_hit_fx(spawn_x, spawn_y, effect);
                new_dust_fx.draw_angle = dust_angle;
                new_dust_fx.depth = dust_depth;
                new_dust_fx.hsp = other.hsp;
                new_dust_fx.vsp = other.vsp;
            }

            //"remove" dust by moving to a place nobody will see
            x = -3000;
            y = -3000;
            dust_length = 0;
        }
    }

    //K.O stars are kinda funky - they need to be controlled outside of the with statement
    //as we need to make them move down every frame
    with (hit_fx_obj) if (player == other.player) if (hit_fx == other.dust_effect[24]) vsp ++;
}

//collision_line() but it returns the point it collided with.
//Function written by YellowAfterLife
//https://yal.cc/gamemaker-collision-line-point/
#define collision_line_point
{
    //usage: collision_line_point(x1, y1, x2, y2, obj, prec, notme)

    var x1 = argument0;
    var y1 = argument1;
    var x2 = argument2;
    var y2 = argument3;
    var qi = argument4;
    var qp = argument5;
    var qn = argument6;
    var rr, rx, ry;
    rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
    rx = x2;
    ry = y2;
    if (rr != noone) {
        var p0 = 0;
        var p1 = 1;
        repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
            var np = p0 + (p1 - p0) * 0.5;
            var nx = x1 + (x2 - x1) * np;
            var ny = y1 + (y2 - y1) * np;
            var px = x1 + (x2 - x1) * p0;
            var py = y1 + (y2 - y1) * p0;
            var nr = collision_line(px, py, nx, ny, qi, qp, qn);
            if (nr != noone) {
                rr = nr;
                rx = nx;
                ry = ny;
                p1 = np;
            } else p0 = np;
        }
    }
    var r;
    r[0] = rr;
    r[1] = rx;
    r[2] = ry;
    return r;
}

//useful print function - allows us to print all variables in an specified object
//usage: print_vars(object_name); | print_vars();
#define voice_update()
	
//voice acting
if (vo != 0)
{
    if (voice_cooldown > 0 && !hitpause) voice_cooldown--;
    if (!hitpause)
    {
        var should_speak = 1; //0-1
        if (should_speak == 1)
        {
            switch (state)
            {
                case PS_FIRST_JUMP: case PS_DOUBLE_JUMP: case PS_WALL_JUMP: case PS_ROLL_BACKWARD: case PS_ROLL_FORWARD: case PS_AIR_DODGE:
                case PS_WAVELAND:
                    //if (state_timer == 1) voice_array(0);
                    break;
                case PS_ATTACK_GROUND: case PS_ATTACK_AIR:
                    if (state_timer == 1 && voice_cooldown <= 0) {
                    	stop_voice();
                    }
                    if (!hitpause) //attacks
                    {
                        switch (attack) // This is where the main attack voices come in
                        {
                        	case AT_JAB:
                        		if (window == 2 && window_timer == 0) 
	                        		{
	                        				 play_voice("jab_0", 4, false, 2);
	                        			}
	                        	break;
	                        case AT_FTILT:
                        		if (window == 2 && window_timer == 0) 
	                        		{
	                        				 play_voice("ftilt_0", 4, false, 2);
	                        			}
						break;

				case AT_UTILT:
					if (window == 2 && window_timer == 0) 
	                        		{
	                        				play_voice(["utilt_0", "utilt_1"], 4, false, 3);
	                        		}
						break;
	                        		
	                        case AT_NAIR:
                        		if (window == 2 && window_timer == 0) 
	                        		{
	                        		  play_voice("nair_0", 4, false, 2);
	                        		}
	                        		break;
      		
				case AT_FAIR:
                        			if (window == 2 && window_timer == 0) 
	                        		{
	                        				play_voice(["fair_0", "fair_1"], 4, false, 3);	
	                        		}
	                        		break;
	                        		
				case AT_UAIR:
                        			if (window == 2 && window_timer == 0) 
	                        		{
	                        				 play_voice("uair_0", 4, false, 0);
	                        			}
	                        		if (window == 6 && window_timer == 0) 
	                        		{
 								 play_voice("uair_1", 4, false, 0);
	                        			}
						break;

			        case AT_DAIR:
                        			if (window == 2 && window_timer == 0) 
	                        		{
	                        		  play_voice("dair_0", 4, false, 2);
	                        		}
	                        		break;

				case AT_FSTRONG:
                        			if (window == 4 && window_timer == 0) 
	                        		{
	                        				play_voice(["fstrong_0", "fstrong_1"], 4, false, 2);	
	                        		}
	                        		break;
	                        		
                        	case AT_DSTRONG:
                        			if (window == 3 && window_timer == 2) 
	                        		{
	                        				play_voice(["dstrong_0", "dstrong_1"], 4, false, 2);
	                        		}
	                        		break;
	                        		
                        	case AT_USTRONG:
                        			if (window == 3 && window_timer == 0) 
	                        		{
	                        				play_voice(["ustrong_0", "ustrong_1"], 4, false, 2);	
	                        		}
	                        		break;
	                        		
                        	case AT_NSPECIAL:
                        			if (window == 2 && window_timer == 0) 
	                        		{
	                        				play_voice(["nspec_0", "nspec_1"], 4, false, 2);
	                        		}

	                        		break;
	                        		
	                        case AT_FSPECIAL:
                        			if (window == 3 && window_timer == 0) 
	                        		{
	                        				play_voice("fspec_0", 4, false, 0);	
	                        			}
						if (window == 7 && window_timer == 0) 
	                        		{
	                        				play_voice(["fspec_2", "fspec_3"], 4, false, 2);	
	                        			}
						if (window == 10 && window_timer == 0) 
	                        		{
 								play_voice("fspec_1", 4, false, 0);
	                        			}
						if (window == 14 && window_timer == 0) 
	                        		{
	                        				play_voice("fspec_4", 4, false, 0);	
	                        			}
						if (window == 17 && window_timer == 0) 
	                        		{
	                        				play_voice("fspec_5", 4, false, 0);	
	                        			}

	                        		break;
	                        		
                        	case AT_USPECIAL:
                        			if (window == 2 && window_timer == 0) 
	                        		{
	                        				 play_voice("uspec_0", 4, false, 0);
	                        			}
	                        		if (window == 3 && window_timer == 6) 
	                        		{
 								 play_voice(["uspec_1", "uspec_2"], 4, false, 2);
	                        			}
						break;

                        	case AT_DSPECIAL:
                        		if (window == 2 && window_timer == 0) 
	                        		{
	                        			switch(saro_frenzy)
										{
											case 1:
	                            				play_voice(["dspec_0", "dspec_1", "dspec_2"], 4, false, 3);
											break;
											
											case 2:
	                            				play_voice(["dspec_0", "dspec_1", "dspec_2"], 4, false, 3);
											break;
											
											case 3:
	                            				play_voice(["dspec_0", "dspec_1", "dspec_2"], 4, false, 3);
											break;
										}
	                                }
                        	break;
                        	
                            case AT_TAUNT:
                                if (window == 1 && window_timer == 11) {
                            		play_voice("taunt_0", 4, false, 2);
                                }
                            break;
                        }
                    }
                    break;
                    
                case PS_HITSTUN:
                    if (state_timer == 1)
                    {
       					stop_voice();
                        var dist = point_distance(0, 0, old_hsp, old_vsp);
                        
                        if (dist > 13) play_voice(["hurt_big_0", "hurt_big_1"], 4, false, 4);
                        else if (dist > 1) play_voice(["hurt_0", "hurt_1", "hurt_2"], 4, false, 5);
                    }
                    break;
                case PS_RESPAWN:
                case PS_DEAD:
                    if (state_timer == 1)
                    {
       					stop_voice();
                		voice_cooldown = 0;
                        play_voice("death", 0, true, 2);
                    }
                    break;
                   default:
                   break;
            }
        }
        
        //if a new voiceclip is playing, cut the old one
        if (cur_voiceclip[0] != cur_voiceclip[1])
        {
            sound_stop(cur_voiceclip[1]);
            cur_voiceclip[1] = cur_voiceclip[0];
        }
    }
}

#define stop_voice()
sound_stop(cur_voiceclip[1]);

#define play_voice (_voice, _cooldown, _random, _size)
var arr = _voice;
var ran = random_func(1, _size, true);
if (!is_array(arr)) arr = [_voice];

if (vo != 0)
{
	var num = random_func( 1, 3, true );
//	print("sarolyn_vo_" + string(_voice) + "_" + string(num))
print(_random);
	if(_random == true)
	{
    cur_voiceclip[0] = sound_play(sound_get("sarolyn_vo_" + string(_voice) + "_" + string(ran)));
	}
	else {
			if(!(arr == noone))
			{
		//		print("sarolyn_vo_" + string(arr[num]))
				cur_voiceclip[0] = sound_play(sound_get("sarolyn_vo_" + string(arr[ran])));	
			}
			else
				{
			//			print("sarolyn_vo_" + string(_voice))
						cur_voiceclip[0] = sound_play(sound_get("sarolyn_vo_" + string(_voice)));
				}
	}
    voice_cooldown = _cooldown;
}


#define print_vars
/// print_vars(instance = self)
{
    //prints the variables in the given instance, or in whatever instance ran the function.
    var instance = argument_count > 0 ? argument[0] : self;
    with (instance) {
        var names = variable_instance_get_names(self);
        var str = "";
        var lb = "
    ";
        for (var i = 0; i < array_length_1d(names); i++) {
            var val_to_add = string(variable_instance_get(self, names[i]));
        str += names[i] + ': ' + (string_length(val_to_add) > 100 ? "!!value ommitted due to size!!" : val_to_add) + ';'+lb
        
        }
        var str_length = string_length(str);
        var it = 1;
        var max_pages = ceil(str_length/4096);
        for (var i = 1; i < str_length; i+=4096) {
            get_string(`variables pg ${it++}/${max_pages}`, string_copy(str,i,4096));
        }
    }
}