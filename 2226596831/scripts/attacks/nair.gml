set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
//set_attack_value(AT_NAIR, AG_USES_CUSTOM_GRAVITY, 1);

//nas   naa   nar
//0-1:2 2-5:4 6-6:1

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.48);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

set_num_hitboxes(AT_NAIR, 4);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 14);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 59);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 78);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, sound_get("hit_medium_2"));

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -62);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 14);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -62);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 14);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -62);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);


//wiimote
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 35);

set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_SPRITE, sprite_get("wiimote"));
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_NAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 20);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 20);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 0.1);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 75);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sound_get("hit_medium_2"));

set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NAIR, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NAIR, 5, HG_EXTENDED_PARRY_STUN, 1);









