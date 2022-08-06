set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("BulletStart"));

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 20);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 0);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_SFX, sound_get("BulletEnd"));


set_num_hitboxes(AT_FSPECIAL_AIR, 2);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_MUNO_HITBOX_NAME, "Bullet");

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 82);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_MUNO_HITBOX_NAME, "Also bullet");

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 82);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 304);

set_attack_value(AT_FSPECIAL_AIR, AG_MUNO_ATTACK_MISC_ADD, "Goes into pratfall. Has 8 points of soft armor.");