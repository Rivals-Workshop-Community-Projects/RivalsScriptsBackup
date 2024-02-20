set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, sound_get("sentry_rocket"));//, false, noone, 0.6)
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, sound_get("sentry_rocket"));
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_BAIR, 2);

//melee hitbox(only when no metal)
set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -30);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_BAIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);

//rockets
set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 90);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -42);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -58);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 30);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 110);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 3);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_SPRITE, sprite_get("rockets"));
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_MASK, sprite_get("rocket"));
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("rocket"));
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_HSPEED, -3.5);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_VSPEED, -7);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_GRAVITY, 0.6);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_ANIM_SPEED, 0.175);
set_hitbox_value(AT_BAIR, 2, HG_PROJECTILE_GROUND_FRICTION, 20)
// set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 300);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 141 )
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_ell_uspecial_explode"));

