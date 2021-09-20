switch(state){
	case PS_PRATFALL:
		sprite_index = sprite_get("jump");
		image_index = 6;
	case PS_IDLE_AIR:
		image_index = max(image_index, 4 + (prev_state == PS_DOUBLE_JUMP));
		break;
	case PS_ROLL_BACKWARD:
	case PS_ROLL_FORWARD:
	case PS_TECH_BACKWARD:
	case PS_TECH_FORWARD:
		sprite_index = sprite_get("roll");
		break;
	case PS_ATTACK_AIR:
	case PS_ATTACK_GROUND:
		switch(attack){
			case AT_DSPECIAL:
				if window < 3 && free{
					image_index += 4;
				}
				if window == 7 && free{
					image_index += 6;
				}
				if window == 6{
					var duration = max_fall + jump_speed;
					var progress = vsp + jump_speed + 1;
					if !free progress = duration;
					image_index += clamp(lerp(0, 5, progress / duration), 0, 5);
				}
				break;
			case AT_USPECIAL:
				if window == 3{
					image_index += 2 * ((right_down - left_down) * spr_dir);
				}
				hud_offset = lerp(hud_offset, 60, 0.5);
				break;
			case AT_FSPECIAL:
				if window == 4{
					if abs(vsp) < 2{
						image_index++;
					}
					else if vsp > 0 || !free{
						image_index += 2;
					}
				}
				break;
			case AT_NSPECIAL:
				if window < 3{
					image_index += 8 * cur_spear * attack_had_spear;
				}
				break;
			case AT_UAIR:
				image_index += 8 * cur_spear * attack_had_spear;
				if attack_had_spear hud_offset = lerp(hud_offset, 60, 0.5);
				break;
			case AT_USTRONG:
				if window > 2 && !(window == 4 && window_timer > phone_window_end / 2) && attack_had_spear hud_offset = lerp(hud_offset, 180, 0.5);
			case AT_FSTRONG:
				image_index += 9 * cur_spear * attack_had_spear;
				break;
			case AT_TAUNT:
				if !free sprite_index = sprite_get("taunt");
				break;
			case AT_TAUNT_2:
				if image_index < 8 hud_offset = 20;
				break;
		}
		break;
}

if abs(hud_offset) < 1{
	hud_offset = 0;
}

if rune_menu.state draw_indicator = 0;



if state == PS_SPAWN{
	var frame_dur = 5;
	var amt_frames = 13;
	var dur = frame_dur * amt_frames;
	var delay = 30;
	var s_t = state_timer - delay + player * 5;
	
	if (s_t < dur){
		sprite_index = sprite_get("intro");
		image_index = max(lerp(-1, amt_frames, s_t / dur), 0);
		// image_index = s_t / frame_dur * (s_t >= 0);
		if image_index < 11 draw_indicator = 0;
		
		switch(s_t / frame_dur){
			case 0:
				sound_play(sfx_botw_warp);
				break;
			case 11:
				sound_play(landing_lag_sound);
				spawn_base_dust(x, y, "land");
				break;
		}
	}
}



#define spawn_base_dust // supersonic
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
if newdust == noone return newdust;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;