//update
umbrellaleaf_recharge = clamp(umbrellaleaf_recharge, 0, 300);
umbrellaleaf_recharge++;

if (state == PS_PARRY){
	if (state_timer == 1){
		if !hitpause{
			sound_play(sound_get("plant"));
			spawn_hit_fx(floor(x + 16),floor(y),15);
			spawn_hit_fx(floor(x - 16),floor(y),15);
		}
	}
	if (state_timer == 9){
		sound_play(sound_get("shovel"));
		spawn_hit_fx(floor(x + 16),floor(y),15);
		spawn_hit_fx(floor(x - 16),floor(y),15);
	}
}

//uhh idk if being able to input attacks during dashstop is illegal or not sorry in advance
if (state == PS_DASH || state == PS_DASH_STOP){
	if (up_down && attack_pressed){
		set_attack( AT_EXTRA_2 );
		swing_throw_type = 1;
	}
}

if (attack == AT_DAIR){
	if (window == 4 && window_timer == 0){ 
		spawn_hit_fx(floor(x + 30*spr_dir),floor(y),splat_effect);
	}
}

if (umbrellaleaf_dair_bounces != 0 && !free) 
&& !((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DAIR){
	umbrellaleaf_dair_bounces = 0;
}

if (umbrellaleaf_glide_used == true && !free) 
&& !((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_FSPECIAL_2){
	umbrellaleaf_glide_used = false;
}

//practice mode
if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
    practice_mode = true;
}
if (practice_mode && attack == AT_TAUNT){
	umbrellaleaf_recharge = 300;
}

//ranibow sprimkle
if !("hue" in self) hue = 0
if get_player_color(player) = 15 {
	hue+=1
	if hue>255 hue-=255;
	//make hue shift every step + loop around
	var color_rgb1=make_color_rgb(255, 0, 0);
	var color_rgb2=make_color_rgb(255, 80, 80);
	var color_rgb3=make_color_rgb(128, 40, 40);
	var color_rgb4=make_color_rgb(166, 110, 110);
	var color_rgb5=make_color_rgb(114, 80, 80);
	var color_rgb6=make_color_rgb(85, 65, 65);
	var color_rgb7=make_color_rgb(60, 53, 53);
	//make a gamemaker color variable using chosen color
	var hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	var hue2=(color_get_hue(color_rgb2)+hue) mod 255;
	var hue3=(color_get_hue(color_rgb3)+hue) mod 255;
	var hue4=(color_get_hue(color_rgb4)+hue) mod 255;
	var hue5=(color_get_hue(color_rgb5)+hue) mod 255;
	var hue6=(color_get_hue(color_rgb6)+hue) mod 255;
	var hue7=(color_get_hue(color_rgb7)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	var color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	var color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2)); 
	var color_hsv3=make_color_hsv(hue3,color_get_saturation(color_rgb3),color_get_value(color_rgb3));
	var color_hsv4=make_color_hsv(hue4,color_get_saturation(color_rgb4),color_get_value(color_rgb4)); 
	var color_hsv5=make_color_hsv(hue5,color_get_saturation(color_rgb5),color_get_value(color_rgb5));
	var color_hsv6=make_color_hsv(hue6,color_get_saturation(color_rgb6),color_get_value(color_rgb6)); 
	var color_hsv7=make_color_hsv(hue7,color_get_saturation(color_rgb7),color_get_value(color_rgb7));
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(get_player_color(player),0,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(get_player_color(player),6,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),7,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	set_color_profile_slot(get_player_color(player),1,color_get_red(color_hsv4),color_get_green(color_hsv4),color_get_blue(color_hsv4));
	set_color_profile_slot(get_player_color(player),2,color_get_red(color_hsv5),color_get_green(color_hsv5),color_get_blue(color_hsv5));
	set_color_profile_slot(get_player_color(player),3,color_get_red(color_hsv6),color_get_green(color_hsv6),color_get_blue(color_hsv6));
	set_color_profile_slot(get_player_color(player),4,color_get_red(color_hsv7),color_get_green(color_hsv7),color_get_blue(color_hsv7));
	set_article_color_slot(0,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_article_color_slot(6,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_article_color_slot(7,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	set_article_color_slot(1,color_get_red(color_hsv4),color_get_green(color_hsv4),color_get_blue(color_hsv4));
	set_article_color_slot(2,color_get_red(color_hsv5),color_get_green(color_hsv5),color_get_blue(color_hsv5));
	set_article_color_slot(3,color_get_red(color_hsv6),color_get_green(color_hsv6),color_get_blue(color_hsv6));
	set_article_color_slot(4,color_get_red(color_hsv7),color_get_green(color_hsv7),color_get_blue(color_hsv7));
	}
init_shader();

//watermimic alt
if (get_player_color(player) == 14){
    if (state_cat == SC_HITSTUN || state == PS_TUMBLE || state == PS_PRATFALL || state == PS_PRATLAND){
		if (activated_kill_effect){
			set_character_color_slot( 0, 148, 148, 148 );
			set_character_color_slot( 1, 25, 25, 25 );
			set_character_color_slot( 2, 58, 58, 58 );
			set_character_color_slot( 3, 89, 89, 89 );
			set_character_color_slot( 4, 125, 125, 125 );
			set_character_color_slot( 5, 155, 155, 155 );
			set_character_color_slot( 6, 135, 135, 135 );
			set_character_color_slot( 7, 172, 172, 172 );
			outline_color = [255, 255, 255];
		} else {
			set_character_color_slot( 0, 107, 107, 107 );
			set_character_color_slot( 1, 230, 230, 230 );
			set_character_color_slot( 2, 197, 197, 197 );
			set_character_color_slot( 3, 166, 166, 166 );
			set_character_color_slot( 4, 130, 130, 130 );
			set_character_color_slot( 5, 100, 100, 100 );
			set_character_color_slot( 6, 120, 120, 120 );
			set_character_color_slot( 7, 83, 83, 83 );
		}
	} else {
		set_character_color_slot(0,
		get_color_profile_slot_r( get_player_color(player), 0),
		get_color_profile_slot_g( get_player_color(player), 0),
		get_color_profile_slot_b( get_player_color(player), 0)
		);
		set_character_color_slot(1,
		get_color_profile_slot_r( get_player_color(player), 1),
		get_color_profile_slot_g( get_player_color(player), 1),
		get_color_profile_slot_b( get_player_color(player), 1)
		);
		set_character_color_slot(2,
		get_color_profile_slot_r( get_player_color(player), 2),
		get_color_profile_slot_g( get_player_color(player), 2),
		get_color_profile_slot_b( get_player_color(player), 2)
		);
		set_character_color_slot(3,
		get_color_profile_slot_r( get_player_color(player), 3),
		get_color_profile_slot_g( get_player_color(player), 3),
		get_color_profile_slot_b( get_player_color(player), 3)
		);
		set_character_color_slot(4,
		get_color_profile_slot_r( get_player_color(player), 4),
		get_color_profile_slot_g( get_player_color(player), 4),
		get_color_profile_slot_b( get_player_color(player), 4)
		);
		set_character_color_slot(5,
		get_color_profile_slot_r( get_player_color(player), 5),
		get_color_profile_slot_g( get_player_color(player), 5),
		get_color_profile_slot_b( get_player_color(player), 5)
		);
		set_character_color_slot(6,
		get_color_profile_slot_r( get_player_color(player), 6),
		get_color_profile_slot_g( get_player_color(player), 6),
		get_color_profile_slot_b( get_player_color(player), 6)
		);
		set_character_color_slot(7,
		get_color_profile_slot_r( get_player_color(player), 7),
		get_color_profile_slot_g( get_player_color(player), 7),
		get_color_profile_slot_b( get_player_color(player), 7)
		);
		outline_color = [0, 0, 0];
	}
}

//runes
if (has_rune("E")){
	set_attack_value(AT_DTILT, AG_OFF_LEDGE, 1);
}

if (has_rune("B")){
	set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8);
	set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
	set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1);
	set_hitbox_value(AT_DAIR, 1, HG_TECHABLE, 0);
	set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("melonimpact"));
	set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, splat_effect);
	set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
	set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 4);
}