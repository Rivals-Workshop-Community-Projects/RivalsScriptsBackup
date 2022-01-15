set_attack_value(AT_DSTRONG, AG_CATEGORY, 2);
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
//set_attack_value(AT_DSTRONG, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED, -3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED, -9);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);


set_num_hitboxes(AT_DSTRONG, 0);

set_hitbox_value(AT_DSTRONG, 1, HG_MUNO_HITBOX_NAME, "Card Projectile");
set_hitbox_value(AT_DSTRONG, 1, HG_MUNO_HITBOX_DAMAGE, "8 (" + string(round(8 * 1.5)) + ")");
set_hitbox_value(AT_DSTRONG, 1, HG_MUNO_HITBOX_BKB, "7 (" + string(round(7 * 1.5)) + ")");
set_hitbox_value(AT_DSTRONG, 1, HG_MUNO_HITBOX_MISC, "Values in parentheses are when passed through FSPECIAL
card.");
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 32);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, fx_cardhit);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("sfx_lucy_cardhit1"));
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("card_proj1"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_MASK, sprite_get("card_proj1"));
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 13);
