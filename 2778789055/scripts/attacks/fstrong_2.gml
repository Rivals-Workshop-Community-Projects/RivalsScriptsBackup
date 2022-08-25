set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong2"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong2_hurt"));

//startup
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

//attack
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 2);

//endlag
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 104);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));