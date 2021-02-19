set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_COOLDOWN, 90);
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_CD_SPECIAL, 1);
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Whifflag only applies after burrowing and emerging directly vertically.");

//startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(AT_DSPECIAL, 1, AG_MUNO_WINDOW_CD_SPECIAL, 1);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
// set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 19);

//active
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_DSPECIAL, 2, AG_MUNO_WINDOW_CD_SPECIAL, 1);

//endlag
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
// set_window_value(AT_DSPECIAL, 3, AG_MUNO_WINDOW_CD_SPECIAL, 1);

//thru ground
// set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_DSPECIAL, 4, AG_MUNO_WINDOW_CD_SPECIAL, 1);

set_num_hitboxes(AT_DSPECIAL, 2);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Falling");

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Emerging");