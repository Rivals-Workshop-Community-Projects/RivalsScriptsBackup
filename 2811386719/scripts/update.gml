game_time = get_gameplay_time();
attacking = state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND

if (!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN) {
    move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_NSPECIAL] = 0;
}
if(state == PS_AIR_DODGE){
	if(window == 1 and window_timer == 0){
		move_cooldown[AT_USPECIAL] = 0;
	}
}


if(state != PS_WALL_JUMP){

	// can_cling = can_wall_jump and has_walljump and !(attack == AT_EXTRA_1 and window > 0);
	
}else{
	if(state_timer == 0 and has_walljump and !attacking){
		doCling()
	}
  if(can_cling and (jump_down or (can_tap_jump() and tap_jump_pressed))){
    doCling()
  }
}

can_cling = can_wall_jump and has_walljump and !attacking;

if(state == PS_ATTACK_AIR or state == PS_PRATFALL){
	if(can_cling and (jump_down or (can_tap_jump() and tap_jump_pressed))){
		if(place_meeting(x + 1, y, solids)){
			spr_dir = sign(-1)
			has_walljump = false;
			set_state(PS_WALL_JUMP);
		}else if(place_meeting(x - 1, y, solids)){
			spr_dir = sign(1)
			has_walljump = false;
			set_state(PS_WALL_JUMP);
		}
	}
	if(instance_exists(wat_dust)){
		with pHitBox{
  		if(player_id == other and attack == AT_BAIR){
  			other.wat_dust.x = other.x + other.hsp - 75*spr_dir;
  			other.wat_dust.y = other.y + other.vsp - 50;
  		}
  	}
  	if(hitpause){
	    wat_dust.dust_length += 2;
	    // print(wat_dust.dust_length)
  	}
	}
}

has_walljump_old = has_walljump

with oPlayer{
	if(state_cat != SC_HITSTUN and !hitpause){
		if(hit_wave) with other spawn_dust_fx(other.x, other.y - char_height/2, dspecial_bubble_fail_fx_spr, 6)
		hit_wave = false
	}
	if(hit_wave){
		if(state == PS_HITSTUN_LAND){
			vsp = -4
			hitstun = 26
			hitstun_full = 26
			can_tech = true
			hit_wave = false
			with other spawn_dust_fx(other.x, other.y - char_height/2, dspecial_bubble_fx_spr, 9)
			sound_play(asset_get("sfx_bubblepop"))
			set_state(PS_HITSTUN)
			hurt_img = 5
		}
	}
	// if(id != other.id){
	// 	print(soft_armor)
	// }
}

// with(oPlayer) if(id != other.id) print(has_armor)

// with geyser_dfx{
//   display_variables()
// }

// with oPlayer{
// 	if(state == PS_PARRY){
// 		if(window_timer > 1 )window_timer--;
// 	}
// }
// for(var i = 0; )
// print(set_ui_element(4, sprite_get("tech")))

// if(taunt_down){
//     static = 100;
//     permanent_static = true;
// }

// activated_kill_effect = true

distance_from_ledge = -min(x - stage_left, stage_right - x, 0)

Static()

// static = 100;

if(static >= 100){
	// static_flash = 0;
	// var balance = .5;
	// var red;
	// var green;
	// var blue;
	
	static_flash = floor(static_flash*0.9);
		if(game_time % 70 == 1){
		    static_flash = 100;
		}
	var col_R = get_color_profile_slot_r( get_player_color(player), 0);
	var col_G = get_color_profile_slot_g( get_player_color(player), 0);
	var col_B = get_color_profile_slot_b( get_player_color(player), 0);
	
	// var col_final = make_color_rgb(col_r, col_g, col_b);
	
  // var static_yellow_color = [255, 238, 131];
  // var static_white_color = [255, 255, 255];
  
  // blend_colors(static_yellow_color, static_white_color, balance);
 
  
  var color_mul = static_flash/100;
	  // print(color_mul)
  var red = floor(col_R*color_mul)
  var green = floor(col_G*color_mul)
  var blue = floor(col_B*color_mul)
  
  outline_color = [red, green, blue];
	init_shader();
	outline_color = [0, 0, 0];
}


pullFactor()

// var print_input = 'f'; //Change this to change what keyboard input prints your variables.
// //Capital letters require shift to be held (e.g. 'F' as Shift + F, just like typing normally) 
// if string_pos(print_input, keyboard_string) {
//     with oPlayer if(id != other.id) print_vars();
//     keyboard_string = ''
// }
//alternatively, if you can otherwise ensure it only runs for a frame, just call print_vars();

#define print_vars
/// print_vars(instance = self)
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

#define doCling()

// print(distance_from_ledge)
clear_button_buffer(PC_JUMP_PRESSED);
can_let_go_jump = false;
has_walljump = false;
walljump_charge = -1;
hurtboxID.sprite_index = get_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE);
set_attack(AT_EXTRA_1);

#define jet_update()

if(attack == AT_FSTRONG and attacking){
	jet_x = lerp(jet_x, x+5*spr_dir, 0.2)
	jet_y = lerp(jet_y, y-(char_height+hud_offset+10), 0.2)
	if(window > 1) jet_ball_timer++
}else{
	jet_x = lerp(jet_x, x-55*spr_dir, 0.5)
	jet_y = lerp(jet_y, y-(char_height+hud_offset+10), 0.5)
	jet_show_charge = static != old_static;
	if(static < 100){
		var is_dash = (state == PS_DASH_START or state == PS_DASH);
	  if(old_static != static and game_time % (5 - is_dash) == 1 and !hitpause){
			
			sound_play(asset_get("sfx_absa_singlezap1"), false, noone, 0.67 - (drain_timer>0)*.24 - is_dash*0.28, (0.7 + static*0.005));
		
	  } 
	}else{
		if(old_static < 100) sound_play(asset_get("sfx_gem_collect"))
	}
}



#define pullFactor()
// print(static_people);
// var len = array_length(static_people);
var count = 0;
with oPlayer{
	// if(other.shield_pressed) static_pull = 450
	if(self != other and static_pull > 0){
    // sp.static_pull--;
    
    if(state == PS_DEAD or state == PS_RESPAWN) static_pull = 0;
    if(state != PS_DASH and state != PS_DASH_START){
    	saved_hsp = 0;
    }
    count++;
  }
  if(static_transfer_cooldown) static_transfer_cooldown--;
}

if(state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND){
	switch(attack){
		default:
			pulling = false;
		case AT_NSPECIAL:
			pulling = (window == 2 or window == 3);

			break;
		case AT_USPECIAL_GROUND:
			pulling = (window == 2 or window == 3);

			break;
		case AT_JAB:
			pulling = (window == 9);
			break;
	}

}else{
	pulling = false;
}


opponent_in_static = count > 0;


if(instance_exists(right_bubble) and count > 0){
	right_bubble.static = true;
}
#define pull()
var len = array_length(static_people);
for(var i = 0; i < len; i++){
  var sp = static_people[i];
  
}

#define Static()


gain_static();

if(old_static != static){
    static_cooldown = max(120, static_cooldown);
}

if(drain_timer > 0) drain_timer--;
drain_static();

static = clamp(static, 0, 100);

bar_alpha = max(drain_timer/10, static_cooldown/60)

if(static_cooldown > 0) static_cooldown--;

jet_update();

old_static = static;
#define gain_static()
switch(state){
	case PS_JUMPSQUAT:
        static += (abs(hsp) > 1)*1;
        break;
    case PS_WAVELAND:
        static += (abs(hsp) > 1)*1.2;
        break;
    case PS_DASH_START:
        static += 0.7;
        break;
    case PS_DASH:
        static += 0.7;
        break;
    case PS_ATTACK_GROUND:
        if(attack == AT_FSPECIAL){
            if(window == 2){
              static += 3.3*(hsp != 0);
            }
        }
        if(attack == AT_DATTACK){
        	if(window == 2){
        		static += (abs(hsp) > 1);
        	}
        	break;
        }
}

#define drain_static()

if(static_cooldown <= 0){
	if (state == PS_HITSTUN or state == PS_HITSTUN_LAND){
		static -= 0.6;
		drain_timer = 10;
	} 
   
}

#define display_variables()

var ls = ds_list_create();
variable_instance_get_names(id,ls);
var s = 9;
for (var i = 0; i < ds_list_size(ls); i += s){
  	var strings = "";
  	for(var j = 0; j < s; j++){
  		if(ls[| i + j] == undefined or string_pos("strong", ls[| i + j]) == 0) continue;
  		strings += ls[| i + j] + " ";
  	}
  	if(strings != "") print(strings);

} 
ds_list_destroy(ls);