//update.gml
//this is where the bulk of our programming goes, where we want to program most gimmicks
//anything that should be checked/executed after the first frame of the match

///////////////////////////////////////////////////////// USEFUL CUSTOM VARIABLES /////////////////////////////////////////////////////////

attacking = (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR); //attack check - becomes true if the state is PS_ATTACK_GROUND or PS_ATTACK_AIR
is_dodging = (hurtboxID.dodging); //dodge check - becomes true if the character is invincible when dodging/teching
game_time = get_gameplay_time(); //get_gameplay_time() is a timer that counts up every frame of the match
if(practice) hbox_view = get_match_setting(SET_HITBOX_VIS); //keeps track if hitbox view is on or off

if (attacking)
{
    window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));
    // window_last = get_attack_value(attack, AG_NUM_WINDOWS);
    // window_cancel_time = get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME);

    //window_end - takes the last frame of the window (includes whifflag)
    //window_last - checks the last window in the attack
    //window_cancel_time - if the window has a cancel frame to attack/special, this variable can detect the frame it can happen
}

//play intro
// if (game_time == 4 && has_intro) set_attack(AT_INTRO);

//////////////////////////////////////////////////////// CHARACTER SPECIFIC UPDATE /////////////////////////////////////////////////////////
if(!free){
	if(!attacking or attack != AT_FSPECIAL){
		used_mf_dash_ground = 0
		used_mf_dash_air = 0
	}
	used_cuts = 0
	used_mf_air = 0
	used_mf_air_vboost = 0
}


if(state == PS_WALK_TURN){
	walkturn_counter++
	if(state_timer == 2){
		sound_play(asset_get("mfx_editor_erase"), false, -4, 0.75*min(walkturn_counter/90, 1), 0.8)
	}
}else{
	if(walkturn_counter) walkturn_counter -= 1
}

if(state == PS_FIRST_JUMP){
	if(state_timer == 0){
		jump_dir = hsp*spr_dir > 0 ? 1 : -1
	}
}

if(state == PS_PARRY_START or ((state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD) and window == 0 and window_timer == 0) or (state == PS_AIR_DODGE and window == 0 and !used_mf_dash_air)){
	if(special_down and (right_down or left_down)){
		// print("KARA")
		set_attack(AT_FSPECIAL)
	}
}

// if(mouse_button == 1){
// 	x = mouse_x
// 	y = mouse_y
// }
// if(mouse_button == 2){
// 	spawn_rail(mouse_x, mouse_y);
// }

//other_update.gml
with oPlayer {
	if(player != other.player and _bd_init ){
		slide_init()
	}
	
	if(state == PS_AIR_DODGE and state_timer > 0 and abs(hsp)+abs(vsp) >= gravity_speed+0.1 and window < 2){
		var a = instance_position(x, y, other.grind_article)
		if(a and a.state < AS_BREAK){
			// print_vars(self)
			grind_id = other.grind_article;
			var incoming_speed_dir = point_direction(0,0,hsp,vsp)
			var accepted_incoming_angle = grind_id.tangent_angle - 90*grind_id.spr_dir // Only accept positive dot_products
			var accepted_incoming_angle2 = 270 // accept straight down angles from any direction
			var waveland_direction = dot_product(dcos(accepted_incoming_angle), -dsin(accepted_incoming_angle), hsp, vsp)
			var waveland_direction2 = dot_product(dcos(accepted_incoming_angle2), -dsin(accepted_incoming_angle2), hsp, vsp)
			
			if(waveland_direction >= 0 or waveland_direction2 >= 0){
				
				invincible = false
				hurtboxID.dodging = false
				set_attack(AT_FAIR)
				prev_state = PS_WAVELAND
				set_state(PS_SLIDE)
				free = false
				// positive dot_products goes the tangent direction, negative goes against it
				var grind_dot = dot_product(dcos(grind_id.tangent_angle), -dsin(grind_id.tangent_angle), hsp, vsp)
				var grind_direction = (grind_dot < 0)*180 + (grind_id.tangent_angle)
				
				sound_play(asset_get("sfx_ori_ustrong_charge"), false, noone, 0.76, 1.2)
				sound_play(asset_get("sfx_ori_glide_start"), false, noone, 0.4, 1)
				
				grind_id.grind_hsp = lengthdir_x(11, grind_direction)
				grind_id.grind_vsp = lengthdir_y(11, grind_direction)
				hsp = 0
				vsp = 0
				
				with other{
					var b = spawn_hit_fx(x, y, grind_hfx);
				}
				bd_grind_fx = b;
				bd_grind_fx.spr_dir = grind_id.grind_hsp >= 0 ? 1 : -1;
				
				if(grind_id.timer_for_destruction > 0) grind_id.timer_for_destruction += 30
				
				//Vector rotate
				var vec_x = x - grind_id.x
				var vec_y = y - grind_id.y
				var a = grind_id.tangent_angle
				var rot_x = vec_x*dcos(-a) - vec_y*-dsin(-a)
				var rot_y = (-1 + 2*(dcos(a) > 0))*-5 //ROT Y should be the diference from grind_id.y and y when horizontal, to ensure that it pops you up, do this math
				x = rot_x*dcos(a) - rot_y*-dsin(a) + grind_id.x
				y = rot_y*dcos(a) + rot_x*-dsin(a) + grind_id.y
			}
		}
		
	}
	
	if(state == PS_SLIDE){

		var my_grind_exists = instance_exists(grind_id)
		var other_grind_exists = instance_exists(other.grind_article)
		if(my_grind_exists and other_grind_exists and grind_id.player == other.grind_article.player){

			off_edge = true
		
			var hdir = -left_down + right_down
			var vdir = -up_down + down_down
			var strong_stick_any = up_stick_pressed + down_stick_pressed + left_stick_pressed + right_stick_pressed
			var strong_pressed_any = up_strong_pressed + down_strong_pressed + left_strong_pressed + right_strong_pressed
	
			if(special_pressed or attack_pressed or strong_pressed_any or strong_stick_any){
				set_state(PS_IDLE_AIR)
			}
			// print(abs(hsp) + abs(vsp))
			if(position_meeting(x,y, grind_id) and grind_id.state < AS_BREAK
				and !((abs(hsp) + abs(vsp-grav) == 0) and state_timer > 5)) { // COLLIDING WITH THE THING
				
				hsp = lerp(hsp, grind_id.grind_hsp, min(1,state_timer/10))
				vsp = lerp(vsp, grind_id.grind_vsp, min(1,state_timer/10))
				
				grind_id.timer_for_destruction += 2
				
			}else{
				slide_release()
			}
			
			if(jump_pressed or ( can_tap_jump() and tap_jump_pressed )){
				set_state(PS_JUMPSQUAT)
				clear_button_buffer(PC_JUMP_PRESSED)
			}
			if(state_timer > 7 and down_hard_pressed){
				set_state(PS_IDLE_AIR)
				clear_button_buffer(PC_DOWN_HARD_PRESSED)
				can_fast_timer = 8
				check_fast_fall = true
			}
			
			ledge_snap();
			
			if(bd_grind_fx.step_timer == bd_grind_fx.hit_length-1){
				// print(loops)
				bd_grind_fx.step_timer = 0;
				bd_grind_fx.pause_timer = 0;
			}
			bd_grind_fx.x = x;
			bd_grind_fx.y = y;
		}else{
			if(!my_grind_exists){
				if(other_grind_exists and other.player == other.grind_article.player){
					grind_id = other.grind_article;
				}else{
					slide_release()
				}
			}
		}
		
	}
	
	if(state == PS_WAVELAND){
		// bd_waveland_sprite = sprite_index
	}

	if(trail_kill_effect_source == other.id and trail_kill_effect_source != noone){

	  if(state_cat == SC_HITSTUN and (hit_attack == AT_FSPECIAL or hit_attack == AT_USPECIAL or hit_attack == AT_DSPECIAL)){
	  	
	    if(activated_kill_effect){
				if(floor(hitstop) == floor(activated_kill_effect ? 20 : hitstop_full)){
					// with other{
					// 	var i=0;
					// 	repeat(8){
					// 		i+=45;
					// 		var fx = spawn_hit_fx(other.x, other.y - 30, sparkle_fx_hfx);
					// 		fx.hsp = lengthdir_x(11, i);
	  		// 			fx.vsp = lengthdir_y(11, i);
					// 	}
					// }
					sound_play(asset_get("sfx_icehit_medium1"), false, noone, 1, 0.8)
					sound_play(asset_get("sfx_ice_hammerstart"))
					// sound_play(asset_get("sfx_ice_uspecial_start"))
				}
	      with other{
	        var variance = 5
	    		var rd_x = random_func(0, variance*2, true)-variance
	    		var rd_y = random_func(1, variance*2, true)-variance
	    		var rd_a = random_func(2, 360, true)
	    		
	  			var fx = spawn_hit_fx(other.x + rd_x, other.y - 30 + rd_y, sparkle_trail_fx_hfx)
	  			fx.hsp = lengthdir_x(1, rd_a)
	  			fx.vsp = lengthdir_y(1, rd_a)
	      }
	    }else{
	    	trail_kill_effect_source = noone;
	    	init_shader();
	    }
	  }else{
	  	trail_kill_effect_source = noone;
	  	if(state != PS_DEAD or state != PS_RESPAWN) sound_play(asset_get("sfx_ice_shatter"));
	  	init_shader();
	  }
	}
 
}

// move_cooldown[AT_DSPECIAL] = 2
////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////
// if(state != PS_SLIDE){
// 	print("hi")
// 	set_state(100)
// }
//if (shield_pressed) end_match(player); //uncomment this line to check the victory screen (the input can also be changed but it needs some input)

//parry interraction testing

// with (oPlayer) if (temp_level != 0 && state == PS_PARRY && !perfect_dodged)
// {
//     window = 1;
//     window_timer = 0;
//     perfect_dodging = true;
// }

// if(keyboard_lastchar == "p"){
// 	print_vars(self)
// }

// if(back_pressed){
// 	print("hello")
// 	var a = sprite_get("asdasd")
	
// 	draw_sprite(a , 0, x, y)
// }

// if("jel" not in self and keyboard_lastchar != ""){
	
// 	if(keyboard_lastchar == "1"){
// 		print("winner 1")
// 		var winner = player;
// 		var loser = 2;
// 	}else{
// 		print("winner 2")
// 		var winner = 2;
// 		var loser = player;
// 	}
// 	end_match(winner, loser)
// 	jel = 0
// }
with(hat_falling){
	if(step_timer == hit_length-1 and loops < max_loops){
		// print(loops)
		step_timer = 0
		pause_timer = 0
		loops++
	}
}

with(taunt_bird_fx){
	if(step_timer == hit_length-1){
		if(loops < max_loops){
			// print(loops)
			step_timer = 0;
			pause_timer = 0;
			loops++;
			
			var rd_i = random_func(10, 5, true);
			with other{
				var a = spawn_hit_fx(other.x, other.y, gold_speckles[rd_i])
				a.spr_dir *= -1
			}
		}else{
			// print("GHGH")
			with other spawn_hit_fx(other.x, other.y, sparkle_fx_hfx)
		}
	}
}



if(practice){
	if(taunt_down){ 
		coins_in_bag = 9;
		if(up_pressed) if(lvl < 3) lvl++;
		if(down_pressed) if(lvl > 1) lvl--;
	}
}

if(gs[GS_EXISTS]){
	gs[GS_TIMER] += 1;
	gs[GS_STATE_TIMER] += 1;
	
	if(gs[GS_STATE_TIMER] == gs_state_end[gs[GS_STATE]]){
		gs[GS_STATE] += 1;
		gs[GS_STATE_TIMER] = 0;
	}
	if(gs[GS_STATE] == 2 and gs[GS_STATE_TIMER] == 0){
		create_hitbox(AT_USPECIAL, 6, gs[GS_X], gs[GS_Y]);
		sound_play(asset_get("sfx_ice_shieldup"));
		gs[GS_USES]++;
		// print(gs[GS_USES])
		// print(gs[GS_MAX_USES])
	}
	if(gs[GS_STATE] == 3 and gs[GS_STATE_TIMER] == 9){
		if(gs[GS_USES] < gs[GS_MAX_USES]){
			gs[GS_STATE] = 1;
			gs[GS_STATE_TIMER] = 100;
		}
	}
	if(gs[GS_STATE] >= 4){
		gs[GS_STATE] = 0;
		gs[GS_STATE_TIMER] = 0;
		gs[GS_EXISTS] = false;
	}
}

if(coin_fade_in_timer > 0){
	coin_fade_in_timer--;
}
if(fspecial_hud_timer > 0){
	fspecial_hud_timer--;
}

#define slide_release()

if(vsp > 0) vsp = -3
hsp = clamp(hsp, -leave_ground_max, leave_ground_max)
// print("NOT COLLIDING")
if(free) set_state(PS_IDLE_AIR)
else set_state(PS_IDLE)
 
#define slide_animation()

// image_index = state_timer*0.2
// sprite_index = bd_waveland_sprite

if(state == PS_SLIDE){
	sprite_index = hsp >= 0 ? bd_rail_grind_forward_spr : bd_rail_grind_backwards_spr;
	var startup_length = 5;
	if(state_timer < startup_length){
		image_index = state_timer * max(0, bd_rail_grind_startup_frames-1) / startup_length
	}else if(state_timer >= startup_length){
		var st = bd_rail_grind_startup_frames-1;
		var en = bd_rail_grind_active_frames;
		image_index = st + ((state_timer*bd_rail_grind_anim_speed)%en);
	}
}
var endlag_length = 10;
if(bd_has_custom_rail_grind_sprite){
}


#define slide_init()
if("url" not in self or ("bd_has_custom_rail_grind_sprite" in self and bd_has_custom_rail_grind_sprite)) return;

_bd_init = false
bd_has_custom_rail_grind_sprite = false;
bd_rail_grind_startup_frames = 0;
bd_rail_grind_active_frames = 1;
bd_rail_grind_endlag_frames = 0;
bd_rail_grind_anim_speed = 0.15;
switch(url){
	default:
		bd_rail_grind_forward_spr = sprite_get("waveland");
	break;
	case CH_ZETTERBURN:
		bd_rail_grind_forward_spr =  asset_get("zet_waveland");
	break;
	case CH_ORCANE:
		bd_rail_grind_forward_spr = asset_get("orca_waveland");
	break;
	case CH_WRASTOR:
		bd_rail_grind_forward_spr = asset_get("bird_waveland");
	break;
	case CH_KRAGG:
		bd_rail_grind_forward_spr = asset_get("bug_waveland");
	break;
	case CH_FORSBURN:
		bd_rail_grind_forward_spr = asset_get("smoke_waveland");
	break;
	case CH_ABSA:
		bd_rail_grind_forward_spr = asset_get("goat_waveland");
	break;
	case CH_ETALUS:
		bd_rail_grind_forward_spr = asset_get("bear_land");
	break;
	case CH_ORI:
		bd_rail_grind_forward_spr = asset_get("cat_waveland");
	break;
	case CH_RANNO:
		bd_rail_grind_forward_spr = asset_get("frog_waveland");
	break;
	case CH_CLAIREN:
		bd_rail_grind_forward_spr = asset_get("sword_waveland");
	break;
	case CH_SYLVANOS:
		bd_rail_grind_forward_spr = asset_get("wolf_waveland");
	break;
	case CH_ELLIANA:
		bd_rail_grind_forward_spr = asset_get("mech_waveland");
	break;
	case CH_SHOVEL_KNIGHT:
		bd_rail_grind_forward_spr = asset_get("gus_waveland");
	break;
	case CH_MOLLO:
		bd_rail_grind_forward_spr = asset_get("moth_waveland");
	break;
	case CH_HODAN:
		bd_rail_grind_forward_spr = asset_get("stinky_waveland");
	break;
	case CH_POMME:
		bd_rail_grind_forward_spr = asset_get("mouse_waveland");
	break;
	case CH_OLYMPIA:
		bd_rail_grind_forward_spr = asset_get("punch_waveland");
	break;
	
}
bd_rail_grind_backwards_spr = bd_rail_grind_forward_spr;


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
#define print_vars
/// @param instance = self
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

#define spawn_ground_gold(x1, y1, dir)
{
	var hhfx = spawn_hit_fx(x1, y1, player_id.slash_ground_big_hfx);
	hhfx.draw_angle = dir;
	hhfx.spr_dir = 1;
}

#define get_normal_dir(x1, y1)

var rr_x = 0;
var rr_y = 0;
if(!position_meeting(x1-1, y1, solids)){
	rr_x += -1;
}
if(!position_meeting(x1+1, y1, solids)){
	rr_x += 1;
}
if(!position_meeting(x1, y1-1, solids)){
	rr_y += -1;
}
if(!position_meeting(x1, y1+1, solids)){
	rr_y += 1;
}
return point_direction(0,0,rr_x, rr_y);

#define spawn_rail(_x, _y)

if(instance_exists(grind_article)) instance_destroy(grind_article);
grind_article = instance_create(_x, _y, "obj_article1");
var grind = grind_article;

// spawn_hit_fx(closest_point_x, closest_point_y, HFX_GEN_OMNI)
// spawn_hit_fx(farthest_point_x, farthest_point_y, HFX_GEN_SPIN)

grind.spr_dir = spr_dir;
grind.lvl = lvl;
grind.tangent_angle = 0;
grind.normal_ang = -90;
grind.article_angle = 0;
grind.image_angle = 0;
grind.article_width = mist_distance[lvl-1];
grind.article_height = 28;

grind.image_xscale = grind.article_width/450;
grind.image_yscale = 1;

#define ledge_snap
//allows a moving attack to snap onto and over the ledge without getting caught, 
// similar to Maypul and Orcane's Forward-Specials.
// returns 'true' when the attack successfully snaps over a ledge
//code example by Mawral - free to use without credit.

var step = 16; //the maximum distance to move up from the ledge. must be a power of 2. '16' or '32' is recommended.
var xx = x + hsp; //use 'xx = x - spr_dir' if the attack moves backwards.

//check if there is a ledge ahead. if there is not, return 'false' and end the script.
var par_block = asset_get("par_block");
if (!place_meeting(xx, y, par_block) || place_meeting(xx, y - step, par_block)) return false;

//move the player onto and above the ledge.
x = xx;
y -= step;
//then, move downwards as far as possible without cutting into the stage.
for (step /= 2; step >= 1; step /= 2) {
    if (!place_meeting(x, y + step, par_block))  y += step; 
}
//ledge snap successful. return 'true'.
return true;

#macro PS_SLIDE 69

#macro AS_SPAWN 0
#macro AS_IDLE 1
#macro AS_BREAK 2

#macro GS_X 0
#macro GS_Y 1
#macro GS_TIMER 2
#macro GS_EXISTS 3
#macro GS_STATE 4
#macro GS_STATE_TIMER 5
#macro GS_USES 6
#macro GS_MAX_USES 7