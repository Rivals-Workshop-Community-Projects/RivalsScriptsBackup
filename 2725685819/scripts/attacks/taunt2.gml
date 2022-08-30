set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);

switch (get_player_color(player)){

case 1:

    switch(string_lower(get_player_name(player))){
        case "sark":
		set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("vergil_taunt"));
		set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);

		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("motivated"));
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 7);

		set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 3);


		set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 3);

		set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
		break;

		default:
		set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("phone_open"));
		set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);

		//Opening window

		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 3);
		//Looping window

		set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 20);
		set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
		// set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
		// set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_absa_8b"));
		// set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 1);
		//Closing window

		set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
		break;
	}

break;


case 6:
		set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("vergil_taunt"));
		set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);

		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 8);
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("motivated"));
		set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 7);

		set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 3);


		set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
		set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 3);

		set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 1);
		set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
break;


case 9:
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("neco_taunt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 1);

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 8);
break;

default:
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("phone_open"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);

//Opening window

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 3);
//Looping window

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
// set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_absa_8b"));
// set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 1);
//Closing window

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);

break;

}


set_num_hitboxes(AT_TAUNT_2, 0);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_DESTROY_EFFECT, jc_destroyed);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 1000);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 1000);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_TAUNT_2, 1, HG_SDI_MULTIPLIER, 1.5);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, sound_get("slicel"));
set_hitbox_value(AT_TAUNT_2, 1, HG_CHAOS_LEVEL, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, 1);

