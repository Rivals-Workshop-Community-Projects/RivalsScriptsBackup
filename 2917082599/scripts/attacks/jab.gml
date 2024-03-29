set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_AIR_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_HURTBOX_AIR_SPRITE, sprite_get("jab_hurt"));
set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 7);

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 3);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7);
//set_window_value(AT_JAB, 5, AG_WINDOW_VSPEED, -3);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 7, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_JAB, 7, AG_WINDOW_CANCEL_FRAME, 3);

set_num_hitboxes(AT_JAB, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 64);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 41);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));


set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 60);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -22);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 50);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 90);//45
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 5);//8
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .5);//.2
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_SPRITE, sprite_get("arrow"));
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_MASK, -1);//nspecial_proj2_mask
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_HSPEED, 12);//6.5
//set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_DESTROY_EFFECT, splashfx);//6
set_hitbox_value(AT_JAB, 3, HG_HITSTUN_MULTIPLIER, .5);

/*

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 2);
//set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 32);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 79);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 43);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 45);//45
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);//8
//set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, .5);//.2
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
