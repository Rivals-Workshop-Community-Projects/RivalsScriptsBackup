//timers
bean_bomb_recharge = clamp(bean_bomb_recharge, 0, 450);
bean_bomb_recharge++;
torchwood_recharge = clamp(torchwood_recharge, 0, 300);
torchwood_recharge++;
alert_text_timer = clamp(alert_text_timer, 0, 32);
alert_text_timer--;

//heatwave alt
if (get_player_color(player) == 12){
    if (state_cat == SC_HITSTUN || state == PS_TUMBLE || state == PS_PRATFALL || state == PS_PRATLAND){
		set_character_color_slot(0, 239, 206, 115);
		set_character_color_slot(1, 214, 173, 49);
		set_character_color_slot(2, 148, 123, 24);
		set_character_color_slot(3, 156, 165, 115);
		set_character_color_slot(4, 107, 107, 49);
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
	}
}

//shadow pea alt
if (get_player_color(player) == 5){
	if (state == PS_WAVELAND){
		set_character_color_slot(0, 9, 17, 137);
		set_character_color_slot(1, 9, 17, 137);
		set_character_color_slot(2, 9, 17, 137);
		set_character_color_slot(3, 9, 17, 137);
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
	}
}

//RAINBOWS
if !("hue" in self) hue = 0
if get_player_color(player) = 19 {
	hue+=1
	if hue>255 hue-=255;
	//make hue shift every step + loop around

	var color_rgb1=make_color_rgb(170, 0, 0);
	var color_rgb2=make_color_rgb(255, 62, 62);
	var color_rgb3=make_color_rgb(255, 114, 114);
	//make a gamemaker color variable using chosen color
	var hue1=(color_get_hue(color_rgb1)+hue) mod 255;
	var hue2=(color_get_hue(color_rgb2)+hue) mod 255;
	var hue3=(color_get_hue(color_rgb3)+hue) mod 255;
	//shift that colour by Hue, make sure it also loops
	var color_hsv1=make_color_hsv(hue1,color_get_saturation(color_rgb1),color_get_value(color_rgb1)); 
	var color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb2),color_get_value(color_rgb2)); 
	var color_hsv3=make_color_hsv(hue3,color_get_saturation(color_rgb3),color_get_value(color_rgb3)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(get_player_color(player),5,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_color_profile_slot(get_player_color(player),6,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_color_profile_slot(get_player_color(player),7,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	
	set_article_color_slot(5,color_get_red(color_hsv1),color_get_green(color_hsv1),color_get_blue(color_hsv1));
	set_article_color_slot(6,color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));
	set_article_color_slot(7,color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3));
	//set the new color using rgb values from the gamemaker color
}

if (state == PS_PARRY){
	if (state_timer == 1){
		if !hitpause{
			sound_play(sound_get("plant"));
			spawn_hit_fx(x + 20,y,15);
			spawn_hit_fx(x - 20,y,15);
		}
	}
	if (state_timer == 9){
		sound_play(sound_get("shovel"));
		spawn_hit_fx(x + 20,y,15);
		spawn_hit_fx(x - 20,y,15);
	}
}

// DAIR hover
if (hover_used){
	if (!free || state == PS_WALL_JUMP || state == PS_DEAD || state == PS_RESPAWN || state == PS_HITSTUN){
		move_cooldown[AT_DAIR] = 0;
		hover_used = false;
	}
	move_cooldown[AT_DAIR] = 2;
}
if (has_hit){
	//if (hover_used) hover_used = false;
	if (hover_pratfall) hover_pratfall = false;
}
if (hover_store_jump != -1 && !hover_pratfall){
	if !((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_FSPECIAL){
		djumps = hover_store_jump;
		hover_store_jump = -1;
	}
}
if (hover_pratfall){
	if (state == PS_PRATFALL || state == PS_PRATLAND || state == PS_HITSTUN || state == PS_WALL_JUMP || state == PS_DEAD || state == PS_RESPAWN){
		hover_pratfall = false;
	}
	if (state_cat == SC_AIR_NEUTRAL){
		set_state( PS_PRATFALL );
	}
	if (state_cat == SC_GROUND_NEUTRAL || (state_cat == SC_GROUND_COMMITTED && state != PS_WAVELAND)){
		set_state( PS_PRATLAND );
	}
}

//runes
if (has_rune("A")){
	set_attack_value(AT_FTILT, AG_CATEGORY, 2);
}

if (has_rune("B")){
	set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 100);
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
}

if (has_rune("E")){
	set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
}

if (has_rune("I")){
	set_attack_value(AT_FSTRONG, AG_CATEGORY, 2);
	set_attack_value(AT_FSTRONG, AG_OFF_LEDGE, 1);
	set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong_airraid"));
	set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_FSTRONG, 6, AG_WINDOW_HSPEED_TYPE, 0);
	set_window_value(AT_FSTRONG, 7, AG_WINDOW_HSPEED_TYPE, 0);
	if state == PS_ATTACK_AIR && state_timer == 0 {
		if (left_strong_pressed) {
			set_attack(AT_FSTRONG);
			spr_dir = -1
		}
		if (right_strong_pressed) {
			set_attack(AT_FSTRONG);
			spr_dir = 1
		}
	}
	if (airraid_used){
		move_cooldown[AT_FSTRONG] = 2;
		if (!free){
			move_cooldown[AT_FSTRONG] = 0;
			airraid_used = false;
		}
	}
}

if (has_rune("K")){
	set_num_hitboxes(AT_TAUNT, 2);
	set_num_hitboxes(AT_TAUNT_2, 1);
	set_num_hitboxes(AT_EXTRA_2, 1);
}

if (has_rune("M")){
	if (bean_bomb_recharge < 450){
		bean_bomb_recharge = 450;
	}
	if (torchwood_recharge < 300){
		torchwood_recharge = 300;
	}
}

if (has_rune("N")){
	set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 8);
}

//practice mode
if (get_training_cpu_action() != CPU_FIGHT && !playtest && !("is_ai" in self)) {
    practice_mode = true;
}
if (practice_mode) && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) 
&& (attack == AT_TAUNT || attack == AT_TAUNT_2 || attack == AT_EXTRA_2){
    bean_bomb_recharge = 450;
	torchwood_recharge = 300;
}

//copy ability
if swallowed {
	swallowed = 0
	var ability_spr = sprite_get("kirby")
	var ability_hurt = sprite_get("kirby_hurt")
	var ability_icon = sprite_get("kirby_icon")
    var ability_sfx_throw = sound_get("throw")
    var ability_sfx_splat2 = sound_get("splat2")
    var ability_sfx_splat3 = sound_get("splat3")
    var ability_proj = sprite_get("pea")
	with enemykirby {
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 6);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);

		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, ability_sfx_throw);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 9);

		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);

		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 4);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CANCEL_TYPE, 2);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CANCEL_FRAME, 3);

		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 7);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, ability_sfx_throw);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX_FRAME, 2);

		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 9);

		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 10);

		set_num_hitboxes(AT_EXTRA_3, 2);

		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 21);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 12);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 28);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 28);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 70);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_FORCE_FLINCH, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, ability_sfx_splat3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, ability_proj);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 10);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_PARRY_STUN, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_EXTENDED_PARRY_STUN, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 0.6);

		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 21);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 12);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -20);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 28);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 28);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 50);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, ability_sfx_splat3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 303);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, ability_proj);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, -1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_HSPEED, 11);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_PARRY_STUN, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_EXTENDED_PARRY_STUN, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITSTUN_MULTIPLIER, 0.6);
	newicon = ability_icon
	}
}
if enemykirby != undefined { //if kirby is in a match & swallowed
    with oPlayer { //Run through all players
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (get_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH) == 3  && attack == AT_EXTRA_3)) {
            move_cooldown[AT_EXTRA_3] = 30;
        }
    }
}