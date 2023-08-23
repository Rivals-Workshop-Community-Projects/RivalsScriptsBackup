set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1.5);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 18);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.9);

set_num_hitboxes(AT_DAIR,2);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 7);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, note_hfx);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_DAIR, 2, HG_FINAL_BASE_KNOCKBACK, 4);