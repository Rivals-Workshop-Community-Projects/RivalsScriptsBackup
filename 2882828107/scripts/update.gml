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
if (wall_phase == true){
	if (!position_meeting(x, y - 48, asset_get("par_block"))) && (state == PS_AIR_DODGE) 
	&& (state_timer > 0 && state_timer <= 14) && (vsp >= 0){
		wall_phase = false;
	} else if (!position_meeting(x, y - 64, asset_get("par_block"))) 
	&& (state == PS_PRATFALL) && (vsp >= 0){
		wall_phase = false;
	} else if !position_meeting(x, y - 16, asset_get("par_block")) && (vsp > 0){
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

if (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR){
	sound_stop(sound_get("haunt_ambience"));
}

with (oPlayer) {
	if (id != other.id){
		if (puffshroom_timer != 0 && puffshroom_timer <= 30){
			if (state == PS_HITSTUN_LAND || state == PS_HITSTUN){
				puffshroom_timer--;
				draw_y = 999;
			} else {
				puffshroom_timer = 0;
			}
		} else {
			draw_y = 0;
		}
		if (puffshroom_timer == 1){
			spawn_hit_fx(floor(x),floor(y - 30),67);
		}
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

//ranibow sprimkle
if !("hue" in self) hue = 0
if get_player_color(player) = 15 {
	hue+=1
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	var color_rgb1=make_color_rgb(250, 160, 160);
	var color_rgb2=make_color_rgb(255, 62, 62);
	var color_rgb3=make_color_rgb(170, 0, 0);
	//make a gamemaker color variable using chosen color
	var hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	var hue2=(color_get_hue(color_rgb2)+hue) mod 255;
	var hue3=(color_get_hue(color_rgb3)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	var color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	var color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2)); 
	var color_hsv3=make_color_hsv(hue3,color_get_saturation(color_rgb3),color_get_value(color_rgb3));
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(get_player_color(player),0,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),1,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	set_color_profile_slot(get_player_color(player),2,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(get_player_color(player),5,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(get_player_color(player),6,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),7,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	}
init_shader();

if get_player_color(player) = 5 {
	hue+=1
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	var color_rgb1=make_color_rgb(230, 216, 163);
	var color_rgb2=make_color_rgb(111, 202, 231);
	var color_rgb3=make_color_rgb(182, 114, 221);
	//make a gamemaker color variable using chosen color
	var hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	var hue2=(color_get_hue(color_rgb2)+hue) mod 255;
	var hue3=(color_get_hue(color_rgb3)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	var color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	var color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2)); 
	var color_hsv3=make_color_hsv(hue3,color_get_saturation(color_rgb3),color_get_value(color_rgb3));
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(get_player_color(player),0,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),1,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	set_color_profile_slot(get_player_color(player),5,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(get_player_color(player),6,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),7,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	}
init_shader();

//runes
if (has_rune("A")){
	set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 8);
}

if (has_rune("B")){
	set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 9);
}

if (has_rune("C")){
	set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
	if (uspecial_used){
		if (!free || state == PS_HITSTUN || state == PS_WALL_JUMP){
			move_cooldown[AT_USPECIAL] = 0;
			uspecial_used = false;
		}
		move_cooldown[AT_USPECIAL] = 2;
	}
}

if (has_rune("D")){
	if (state == PS_WAVELAND && state_timer mod 2 == 0 && hsp != 0){
		create_hitbox( AT_DSPECIAL, 1, (x),(y - 10) );
	}
}

if (has_rune("E")){
	walljump_hsp = 6
	walljump_vsp = 9
}

if (has_rune("J")){
	max_djumps = 2;
}

if (has_rune("L")){
	set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
	set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
	if state == PS_ATTACK_AIR {
		if state_timer == 0 {
			if (left_strong_pressed) {
				set_attack(AT_FSTRONG);
				spr_dir = -1
			}
			if (right_strong_pressed) {
				set_attack(AT_FSTRONG);
				spr_dir = 1
			}
			if (up_strong_pressed) {
				set_attack(AT_USTRONG);
			}
			if (down_strong_pressed) {
				set_attack(AT_DSTRONG);
			}
		}
	}
}

if (has_rune("M")){
	set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
	set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 14);
	set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 45);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
	set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
	set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 20);
	set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 10);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_LOCKOUT, 10);
	set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
	set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1);
}

if (has_rune("N")){
	set_hitbox_value(AT_DATTACK, 6, HG_EFFECT, 1);
	set_hitbox_value(AT_DATTACK, 7, HG_EFFECT, 1);
	set_hitbox_value(AT_BAIR, 1, HG_EFFECT, 1);
	set_hitbox_value(AT_BAIR, 2, HG_EFFECT, 1);
	set_hitbox_value(AT_DAIR, 1, HG_EFFECT, 1);
	set_hitbox_value(AT_DAIR, 2, HG_EFFECT, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 2);
	set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 10);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
	set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
	set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
	set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));
}