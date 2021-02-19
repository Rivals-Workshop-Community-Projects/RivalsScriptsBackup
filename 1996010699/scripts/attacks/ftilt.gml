set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_birdclap"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FTILT, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 6, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FTILT, 6, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 7, AG_WINDOW_HSPEED, -4);
set_window_value(AT_FTILT, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FTILT,4);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 52);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("mfx_timertick_holy"));

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 37);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 65);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, tada);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_holy_tablet"));
set_hitbox_value(AT_FTILT, 2, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 72);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, exp1KT);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_ell_big_missile_ground"));

set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 55);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 100);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 68);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 12);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT, blast2KT);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT_X_OFFSET, -40);
set_hitbox_value(AT_FTILT, 4, HG_VISUAL_EFFECT_Y_OFFSET, 40);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_FTILT, 4, HG_HIT_LOCKOUT, 10);