set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

//	Startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_uspecial_eagle"));

//	Flight
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));

//	Atk startup
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_flare_razer"));

//	Atk active
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

//	Atk endlag
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USPECIAL, 8);

set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

//	Now this is an easier way to do multiple group hitboxes
//	This is mine now
for (var i = 0; i < 6; i++)
{
	var window_3 = (i == 5);
	
	set_hitbox_value(AT_USPECIAL, i + 2, HG_MUNO_HITBOX_NAME, "Multihit " + string(i + 2));
	
	set_hitbox_value(AT_USPECIAL, i + 2, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_USPECIAL, i + 2, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_USPECIAL, i + 2, HG_WINDOW, window_3 ? 3 : 2);
	set_hitbox_value(AT_USPECIAL, i + 2, HG_WINDOW_CREATION_FRAME, window_3 ? 0 : (i + 1) * 4);
	set_hitbox_value(AT_USPECIAL, i + 2, HG_LIFETIME, 4);
	set_hitbox_value(AT_USPECIAL, i + 2, HG_HITBOX_Y, -35);
	set_hitbox_value(AT_USPECIAL, i + 2, HG_HITBOX_GROUP, -1);
}

set_hitbox_value(AT_USPECIAL, 8, HG_MUNO_HITBOX_NAME, "Eagler Launcher");
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 8, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL, 8, HG_WIDTH, 155);
set_hitbox_value(AT_USPECIAL, 8, HG_HEIGHT, 105);
set_hitbox_value(AT_USPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 8, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE, 110);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 8, HG_KNOCKBACK_SCALING, 0.50);
set_hitbox_value(AT_USPECIAL, 8, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 8, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_USPECIAL, 8, HG_HIT_SFX, asset_get("sfx_boss_fireball"));
set_hitbox_value(AT_USPECIAL, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, 8, HG_HITBOX_GROUP, -1);