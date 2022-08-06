set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("sfx_blaster"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_USTRONG, 1);

set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2 );
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -12);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -66);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0 );
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITSTUN_MULTIPLIER, .8);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USTRONG, 1, HG_EXTENDED_PARRY_STUN, 2);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 196 );
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_bird_downspecial"));
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, ustrong_proj);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_MASK, ustrong_proj);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -8);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0 );
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1 );
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_PARRY_STUN, 1 );
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 194);
