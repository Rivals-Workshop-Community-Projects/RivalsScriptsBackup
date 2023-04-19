//timers
timer++;
jackolantern_recharge = clamp(jackolantern_recharge, 0, 450);
jackolantern_recharge++;
witchhazel_recharge = clamp(witchhazel_recharge, 0, 180);
witchhazel_recharge++;

//wall phasing
if (wall_phase == true){
	mask_index = asset_get("empty_sprite");
    go_through = true;
    can_wall_jump = false;
} else if (wall_phase == false){
	mask_index = orig_mask;
    go_through = false;
}
if (state == PS_WALL_JUMP && state_timer <= 2) && (wall_phase == false) && (vsp <= 0){
	wall_phase = true;
	sound_play(asset_get("sfx_frog_nspecial_cast"));
}
if (wall_phase == true) && (vsp > 0){
	if !position_meeting(x, y - 16, asset_get("par_block")){
		wall_phase = false;
	}
}

if (state == PS_PARRY){
	if (state_timer == 1){
		sound_play(sound_get("plant"));
		spawn_hit_fx(floor(x + 16),floor(y),15)
		spawn_hit_fx(floor(x - 16),floor(y),15)
	}
	if (state_timer == 9){
		sound_play(sound_get("shovel"));
		spawn_hit_fx(floor(x + 16),floor(y),15)
		spawn_hit_fx(floor(x - 16),floor(y),15)
	}
}

//practice mode
if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
    practice_mode = true;
}
if (practice_mode && (attack == AT_TAUNT || attack == AT_TAUNT_2)){
    jackolantern_recharge = 450;
	witchhazel_recharge = 180;
}

if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR){
	if (attack == AT_NSPECIAL){
		if (window == 2 || window == 3){
			if (window_timer == 0){
				spawn_base_dust(x, y, "land", spr_dir)
				spawn_base_dust(x + 30, y, "dash_start", -1)
				spawn_base_dust(x + 80, y, "dash_start", -1)
				spawn_base_dust(x - 30, y, "dash_start", 1)
				spawn_base_dust(x - 80, y, "dash_start", 1)
			}
		}
		if (window == 2 || window == 3) && (window_timer == 0){
			sound_play(sound_get("haunt_ambience"));
		}
		if ((window == 4) && (window_timer == 0)){
			sound_stop(sound_get("haunt_ambience"));
		}
	}
	if (attack == AT_FSTRONG){
		if (window == 3 && window_timer == 0){
			spawn_base_dust(x, y, "dash_start", spr_dir)
		}
		if (window == 3 && window_timer == 2) || (window == 4 && window_timer == 0){
			spawn_base_dust(x, y, "dash", spr_dir)
		}
	}
	if (attack == AT_DSTRONG && window == 3 && (window_timer == 0 || window_timer == 6)){
		spawn_base_dust(x + 30, y, "dash", -1)
		spawn_base_dust(x - 30, y, "dash", 1)
	}
}
if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	sound_stop(asset_get("sfx_ori_charged_flame_charge2"));
}

with (oPlayer) {
	if (puffshroom_timer != 0 && puffshroom_timer <= 30){
		if (state == PS_HITSTUN_LAND || state == PS_HITSTUN){
			puffshroom_timer--;
			draw_y = 999;
		} else {
			puffshroom_timer = 0;
		}
	} else {
		draw_y = 0;
		witchhazel_transformed = false;
	}
	if (puffshroom_timer == 1){
		spawn_hit_fx(floor(x),floor(y - 30),67);
	}
}

//soup
#define spawn_base_dust
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