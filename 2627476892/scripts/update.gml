// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

//dash smoke
if (state == PS_DASH_START && state_timer == 1){
	spawn_hit_fx( x, y - 34, 144 );
}

if (state == PS_DASH_STOP && state_timer == 4){
	spawn_hit_fx( x, y - 34, 144 );
}

if ((prev_state == PS_DASH || prev_state == PS_DASH_START || prev_state == PS_DASH_TURN) && state_timer == 1 && state != PS_DASH && state != PS_DASH_TURN && state != PS_DASH_STOP && (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)){
	spawn_hit_fx( x, y - 34, 144 );
}

if (state == PS_DASH || state == PS_DASH_START || state == PS_DASH_TURN || state == PS_DASH_STOP){
	hud_offset = 20;
}

//airdodge smoke
if(state == PS_AIR_DODGE){
    if(state_timer == 1 || state_timer == 20){
       spawn_hit_fx( x, y - 30, 13 );  
    }
}

//cool bar
if (bike_charge = 0){
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 8);
}if (bike_charge = 1){
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 10);
}if (bike_charge = 2){
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 12);
}if (bike_charge = 3){
	set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 14);
}

if(state == PS_ROLL_FORWARD || state == PS_ROLL_BACKWARD){
	if(state_timer > 2){
	if(state_timer % 2 == 0){
		spawn_hit_fx(x, y, vfx_roll);
	}
	}
}if(state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD){
	if(state_timer > 4){
	if(state_timer % 2 == 0){
		spawn_hit_fx(x, y, vfx_roll);
	}
	}
}

//slippery
if(slippery == 0){
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
    set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
	set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
    set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
    set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
    ground_friction     = 0.5;
}if(slippery > 0){
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
    set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
	set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
    set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
	set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
    set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
    ground_friction     = 0.2;
}

//respawn splat
if (state == PS_IDLE_AIR || state == PS_ATTACK_AIR || state == PS_AIR_DODGE){
if(state_timer == 1 && (reverse_splat == 0)) {
sound_play(sound_get("snd_reversesplat"));
reverse_splat = 1;
}
}

//splat strongs
if(slippery == 0){
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 148);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 304);
	set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 304);
}if(slippery > 0){
	set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 117);
	set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 119);
	set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 120);
	set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT, 119);
	set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 119);
	set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 119);
	set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 119);
	set_hitbox_value(AT_DSTRONG, 4, HG_VISUAL_EFFECT, 119);
}

if (get_player_color(player) != 20){
if (slippery == 0){
	outline_color = [ 0, 0, 0 ];
	init_shader();
}if (slippery > 0){
	outline_color = [ 43, 89, 43 ];
	init_shader();
}
}
if (get_player_color(player) == 20){
if (slippery == 0){
	outline_color = [28, 46, 36];
	init_shader();
}if (slippery > 0){
	outline_color = [ 103, 184, 103 ];
	init_shader();
}
}

if(slippery > 0){
	slippery--;
}

if(slippery == 21 && splatrecalled == 0){
	sound_play(sound_get("snd_reversesplat"));
	splatrecalled = 1;
}

if(bike_charge < 3){
if(bike_charging_time = 28){
	bike_charging_time = 0;
	bike_charge += 1;
	sound_play(asset_get("sfx_ori_ustrong_charge"));
	spawn_hit_fx(x + spr_dir * -25, y - 2, 19);
}
}

//dstrong
if(dstrong_charge == 0){
	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
	set_num_hitboxes(AT_DSTRONG, 2);

}if(dstrong_charge == 1){
	set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong_2"));
	set_num_hitboxes(AT_DSTRONG, 4);
}

//rainbow
if get_player_color(player) = 28 {
hue_offset+=hue_speed;
hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

color_rgb=make_color_rgb(70, 115, 255); //input rgb values here, uses rgb to create a gamemaker colour variable
hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
set_color_profile_slot( 28, 0, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
set_color_profile_slot( 28, 5, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
set_color_profile_slot( 28, 6, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
set_color_profile_slot( 28, 7, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours

init_shader();
}



