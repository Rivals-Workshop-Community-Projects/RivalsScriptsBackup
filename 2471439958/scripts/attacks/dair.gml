set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dairB"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dairB_hurt"));

set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 9);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

//falling
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 17);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);

//falling (CAN JUMP CANCEL)

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_HSPEED_TYPE, 1);

//falling (GENERIC TRANSITION)
set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_HSPEED_TYPE, 1);


//landing
set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//(GENERIC TRANSITION)
set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 10);

//ALT start
set_window_value(AT_DAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 8, AG_WINDOW_VSPEED, -5);

//ALT throw
set_window_value(AT_DAIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DAIR, 9, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_CANCEL_FRAME, 10);

//GENERIC END
set_window_value(AT_DAIR, 10, AG_WINDOW_TYPE, 0);
set_window_value(AT_DAIR, 10, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DAIR, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 10, AG_WINDOW_ANIM_FRAME_START, 10);


set_num_hitboxes(AT_DAIR, 4)

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 1000);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 14);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DAIR, 1, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 14);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DAIR, 2, HG_EXTENDED_PARRY_STUN, 1);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, -30);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 100);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 14);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DAIR, 3, HG_EXTENDED_PARRY_STUN, 1);


set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 9);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 200);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 38);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_SPRITE, sprite_get("pitchthrow"));
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_VSPEED, 8);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_GRAVITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DAIR, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_DESTROY_EFFECT, 151);
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_DOES_NOT_REFLECT, true)
set_hitbox_value(AT_DAIR, 4, HG_PROJECTILE_PARRY_STUN, 1);