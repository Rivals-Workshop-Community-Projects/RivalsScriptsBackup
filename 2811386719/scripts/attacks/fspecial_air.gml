set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_LANDING_LAG, 10);
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_air_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -8);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 0);//landing lag
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL_AIR, 4);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1); //Aerial
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, -35);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_EXTRA_HITPAUSE, -3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1); // Grounded
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 280);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_LOCKOUT, 10);

//tippers
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1); //Aerial
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITBOX_Y, -5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_DAMAGE, 13);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_ANGLE, -35);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_EXTRA_HITPAUSE, -3);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1); // Grounded
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITBOX_Y, -5);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_DAMAGE, 13);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_FORCE_FLINCH, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_ANGLE, 280);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));