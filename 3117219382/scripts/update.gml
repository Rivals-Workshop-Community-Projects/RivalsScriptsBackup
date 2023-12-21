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
	used_mf_air_vboost = true
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

if(state == PS_PARRY_START){
	if(special_down and (right_down or left_down)){
		print("KARA")
		set_attack(AT_FSPECIAL)
	}
}

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
				
				grind_id.timer_for_destruction += 15
				
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
			
			// slide_animation();
			
			if(bd_grind_fx.step_timer == bd_grind_fx.hit_length-1){
				// print(loops)
				bd_grind_fx.step_timer = 0;
				bd_grind_fx.pause_timer = 0;
			}
			bd_grind_fx.x = x;
			bd_grind_fx.y = y;
		}else{
			if(!my_grind_exists){
				if(other_grind_exists and grind_id.player == other.grind_article.player){
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

if(coin_fade_in_timer > 0){
	coin_fade_in_timer--;
}
if(fspecial_hud_timer > 0){
	fspecial_hud_timer--;
}

#define slide_release()

if(vsp > 0) vsp = -3
hsp = clamp(hsp, -leave_ground_max, leave_ground_max)
print("NOT COLLIDING")
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

_bd_init = false
bd_has_custom_rail_grind_sprite = false;
bd_rail_grind_startup_frames = 0;
bd_rail_grind_active_frames = 1;
bd_rail_grind_endlag_frames = 0;
bd_rail_grind_anim_speed = 0.15;
if("url" not in self){
	bd_rail_grind_forward_spr = sprite_get("waveland");
}else{
switch(url){
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
		bd_rail_grind_forward_spr = asset_get("bear_waveland");
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
		bd_rail_grind_forward_spr = asset_get("fer_waveland");
	break;
	case CH_MAYPUL:
		bd_rail_grind_forward_spr = asset_get("fer_waveland");
	break;
	default:
		bd_rail_grind_forward_spr = sprite_get("waveland");
	break;
}
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

#macro PS_SLIDE 69

#macro AS_SPAWN 0
#macro AS_IDLE 1
#macro AS_BREAK 2