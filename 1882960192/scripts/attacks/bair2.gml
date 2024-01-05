//Souped up BAir
set_attack_value(AT_EXTRA_2, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_LANDING_LAG, 6);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED, -1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX, asset_get("sfx_absa_kickhit"));

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_EXTRA_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_EXTRA_2, 2);

set_hitbox_value(AT_EXTRA_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, -63);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 65);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_EXTRA_2, 1, HG_EFFECT, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_ori_sein_fstrong_hit"));
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_EXTRA_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_X, -40);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_EXTRA_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_WIDTH, 70);
set_hitbox_value(AT_EXTRA_2, 2, HG_HEIGHT, 34);
set_hitbox_value(AT_EXTRA_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_2, 2, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_EXTRA_2, 2, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_EXTRA_2, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE_FLIPPER, 5);