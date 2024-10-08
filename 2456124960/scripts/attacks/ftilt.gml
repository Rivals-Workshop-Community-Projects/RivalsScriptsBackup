set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));
set_window_value(AT_FTILT, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_FTILT, 3);

set_hitbox_value(AT_FTILT, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 30);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, hitA2); //27
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_FTILT, 1, HG_SDI_MULTIPLIER, 0.000001);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FTILT, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 65);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 30);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, hitA2); //27
set_hitbox_value(AT_FTILT, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_FTILT, 2, HG_SDI_MULTIPLIER, 0.000001);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);


set_hitbox_value(AT_FTILT, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 60);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 55);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 55);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, hitB2);