set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sfx_astral_chain_gunshot_charged);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 25); // 20
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 1);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -150);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 300);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 0.99999); // 1
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, vfx_hit_big);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG, 1, HG_MUNO_HITBOX_NAME, "Blade");

// set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
// set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
// set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 0);
// set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -50);
// set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 50);
// set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 100);
// set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 2);
// set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
// set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 6);
// set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 45);
// set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 0.5);
// set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
// set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, 0.7);
// set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
// set_hitbox_value(AT_USTRONG, 2, HG_MUNO_HITBOX_NAME, "Sourspot");
// set_hitbox_value(AT_USTRONG, 2, HG_MUNO_HITBOX_MISC_ADD, "Does not appear for the desynced version.");