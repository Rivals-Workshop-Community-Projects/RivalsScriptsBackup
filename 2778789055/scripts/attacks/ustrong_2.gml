set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong2"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong2_hurt"));

//startup
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

//attack
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//endlag
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG_2, 2);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 43);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, -1);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -104);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 110);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));