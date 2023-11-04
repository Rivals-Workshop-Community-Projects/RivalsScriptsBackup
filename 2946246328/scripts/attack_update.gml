/*
Waluigi Code


*/
//Ledge Snap 
if (attack == AT_USPECIAL || attack == AT_FSPECIAL || attack == AT_FSPECIAL_2){
    can_fast_fall = false;
    if (window == 1 && window_timer == 1){
        moved_up = false;
        //reset the vspeed to the value in fspecial_air.gml
        //reset_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED);
    }
    if (window == 2){
        // MOVE UP AT LEDGE
        if (!moved_up){
            if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
                for (var i = 0; i < 40; i++){
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                        y -= i;
                        moved_up = true;
                        break;
                    }
                }
            }
        }
}
}

if (floor(random_range(0, 3)) == 0) {//19
	should_use_voice = 0;
	} 
if (floor(random_range(0, 3)) == 1) {//19
	should_use_voice = 1;
	} 
if (floor(random_range(0, 3)) == 2) {//19
	should_use_voice = 2;
	} 
for(i=1; i < get_num_hitboxes(attack)+1; i++)
	set_hitbox_value(attack, i, HG_HIT_PARTICLE_NUM, 1);
	
var hit_wall = place_meeting(x+spr_dir, y, asset_get("par_block"));

switch(attack) {
	case AT_FSTRONG:
	if (window == 3 && window_timer == 1){
		spawn_base_dust(x, y, "dash_start");
	}
	if (window == 2 && window_timer == 10 && voice == 1){
		if (should_use_voice == 1){
		sound_play(sound_get("wa1"), false, noone, 1,1);
		}
		if (should_use_voice == 0){
		sound_play(sound_get("waha1"), false, noone, 1,1);
		}
	}
	
	break;
	case AT_USTRONG:
	if (window == 2 && window_timer == 2 && voice == 1){
		if (should_use_voice == 1){
		sound_play(sound_get("wa3"), false, noone, 1,1);
		}
		if (should_use_voice == 0){
		sound_play(sound_get("ha1"), false, noone, 1,1);
		}
	}
	break;
	case AT_DSTRONG:
	if ((window == 3||window == 5||window == 7) && !has_hit && !hitpause && window_timer ==1){
		sound_play(asset_get("sfx_blow_medium1"), false, noone, 1,1);
	}
	if (window == 2 && window_timer == 1 && voice == 1){
		if (should_use_voice == 1){
		sound_play(sound_get("wa2"), false, noone, 1,1);
		}
		if (should_use_voice == 0){
		sound_play(sound_get("ha1"), false, noone, 1,1);
		}
	}
	break;
	case AT_DATTACK:
	if (window == 2 && attack_pressed){//&& has_hit 
		destroy_hitboxes();
		attack_end();
		set_attack( AT_EXTRA_1 );
	}
	break;
	case AT_EXTRA_1:
	CorrectHurtboxes()
		if (window == 1 && window_timer == 1){
			vsp = -12;
			hsp = 4*spr_dir;
		}
		if (window == 4 && window_timer == 1 && !hitpause && !free){
			sound_play(asset_get("sfx_blow_heavy2"), false, noone, 1, 1);
		}
		can_move = false;
		can_fast_fall = false;
	break;
	case AT_FSPECIAL_2:
	CorrectHurtboxes()
		if (window_timer == 1 && free && !hitpause){
			vsp = -4;
		}
		if (window_timer == 1 && !free && !hitpause){
			vsp = -0.5;
		}
	move_cooldown[AT_FSPECIAL] = 200;
	break;

	case AT_FSPECIAL:
		if (window == 1 && window_timer == 1 && !free){
			fspecialprat = 0
		} 
		if (window == 1 && window_timer == 1 && free){
			fspecialprat = 1
		} 
		if (fspecialprat == 1){
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 7);
		}
		if (fspecialprat == 0){
			set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
		}
		if window > 1 && window < 4 && (has_hit == true || was_parried == true || (hit_wall == true && window_timer > 1)){
		if hit_wall == true{
			spawn_hit_fx(x+24*spr_dir, y-32, 304);
			sound_play(asset_get("sfx_blow_heavy2"));
			hitpause = true;
			hitstop = 6;
		}
		sound_stop(sound_get("fspecial_dash"));
		destroy_hitboxes();
		attack_end();
		set_attack( AT_FSPECIAL_2 );
	}
	//Window 2 (active)
	if (window == 3 && jump_pressed && free && !hitpause){
		can_jump = true;
	}
	if (window == 2){
		if (window_timer == 1){
		spawn_base_dust(x, y, "dash_start");
		}
		if (free && window_timer == 1){
			vsp = -4;
		}
		if (jump_pressed && !free && !hitpause){// && !has_hit_player
			vsp = -9;
		}

	}
	//ledge snap
    if (window == 1 && window_timer == 1 && voice == 1){
		if (should_use_voice == 1){
		sound_play(sound_get("wa3"), false, noone, 1,1);
		}
		if (should_use_voice == 0){
		sound_play(sound_get("fspecialvoice"), false, noone, 1,1);
		}
        moved_up = false;
        //reset the vspeed to the value in fspecial_air.gml
        reset_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED);
    }
   /*
    if (window == 3){
        // MOVE UP AT LEDGE
        if (!moved_up){
            if (free && place_meeting(x+hsp,y,asset_get("par_block"))){
                for (var i = 0; i < 40; i++){
                    if (!place_meeting(x+hsp,y-(i+1),asset_get("par_block"))){
                        y -= i;
                        moved_up = true;
                        break;
                    }
            }
        }
}
}
   */
	can_move = false;
	can_fast_fall = false;
	move_cooldown[AT_FSPECIAL] = 35;
    break;
	case AT_USPECIAL:
		if (window == 1 && window_timer == 1 && voice == 1){
			if (should_use_voice == 1){
			sound_play(sound_get("wa3"), false, noone, 1,1);
			}
			if (should_use_voice == 0){
			sound_play(sound_get("waha1"), false, noone, 1,1);
			}
		}
		can_fast_fall = false;
		if (spin_count && window == 2 && window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)) {
			spin_count -= 1;
			window_length = 0
		}
		if (window == 4){
			can_wall_jump = true;
		}
	   
	
	break;
	case AT_NSPECIAL:
		if (window == 1 && window_timer == 4){
			sound_play(sound_get("snap"),false, noone, 1.2, 1);
		}
	break;
	case AT_DSPECIAL:
		if (window == 2 && window_timer == 1 && voice == 1){
			if (should_use_voice == 1){
			sound_play(sound_get("wa1"), false, noone, 1,1);
			}
			if (should_use_voice == 0){
			sound_play(sound_get("ha1"), false, noone, 1,1);
			}
		}
		if (window == 1) {
			can_move = false;
			if (window_timer == get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH)) {
				if (special_down) {
					window_timer = 0;
					if (bomb_count < bomb_max) {
						bomb_count += 1;
					}
					print(bomb_count)
					sound_play(asset_get("sfx_burnend"));
				} else {
					if bomb_count {
						bomb_count -= 1;
					}
				}
			}
			if (shield_pressed || bomb_count == 2) {
				spawn_hit_fx( x, y - 24, HFX_ELL_BOOM_HIT );
				sound_play(asset_get("mfx_star"));
				if (!free) {
					set_state(PS_IDLE);
					clear_button_buffer(PC_SHIELD_PRESSED);
				} else {
					set_state(PS_AIR_DODGE);
				}
			}
			//can_jump = true;
		} else if (window == 2) {
			move_cooldown[AT_DSPECIAL] = 60;
			if (window_timer == 6 && !hitpause) {
				vsp = -10;
				hsp = -spr_dir * 4
			}
			if (bomb_count && window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH)) {
				bomb_count -= 1;
				window_timer = 0;
			}
		}
		can_wall_jump = true;
	break;
	case AT_NSPECIAL_AIR:
		can_wall_jump = true;
		if (!free ){
			window = 4;
			//window_timer = 0;
		}
		trigger_wavebounce();
		trigger_b_reverse();
	break;
	default:
	break;
}



//This code lets you add a smash 4 styled wavebouce to your attacks
//Just write "trigger_wavebounce();" under the case statement for the attack you want to wavebounce#define CorrectHurtboxes()
#define random_range()
/// random_range(minimum, maximum)
var minimum = argument0, maximum = argument1;

var key = floor( abs(x + y - hsp - vsp) mod 10 );  

var range = (maximum - minimum)*100

return  (random_func(key, range, false)/100) + minimum
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

#define CreateAfterimage()
{
    afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:c_white, timer:0, timerMax:15};
}