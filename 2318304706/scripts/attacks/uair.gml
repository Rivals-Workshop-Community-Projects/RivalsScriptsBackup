set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_UAIR, 3);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -100);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 69); //nice
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 95);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(AT_UAIR, 1, HG_MUNO_HITBOX_NAME, "Sourspot (outer)");

set_hitbox_value(AT_UAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -83);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 20);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .85);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_COLOR, 1);
set_hitbox_value(AT_UAIR, 2, HG_MUNO_HITBOX_NAME, "Sweetspot (inner)");

set_hitbox_value(AT_UAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 15);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 35);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 135);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, sound_get("smrpg_mario_hammer"));
set_hitbox_value(AT_UAIR, 3, HG_MUNO_HITBOX_NAME, "Weak hit (body)");