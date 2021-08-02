set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 99);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_JUMP_TO, 4);

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
//bullet
set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, asset_get("sfx_clairen_hit_strong"));

set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_UTILT,2);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 39);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 60);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
//set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));

var atk = AT_UTILT;
var hboxnum = 2;
set_hitbox_value(atk, hboxnum, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hboxnum, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hboxnum, HG_WINDOW, 4);
set_hitbox_value(atk, hboxnum, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hboxnum, HG_LIFETIME, 6);
set_hitbox_value(atk, hboxnum, HG_HITBOX_X, 63);
set_hitbox_value(atk, hboxnum, HG_HITBOX_Y, -106);
set_hitbox_value(atk, hboxnum, HG_WIDTH, 70);
set_hitbox_value(atk, hboxnum, HG_HEIGHT, 70);
set_hitbox_value(atk, hboxnum, HG_PRIORITY, 2);
set_hitbox_value(atk, hboxnum, HG_DAMAGE, 10);
set_hitbox_value(atk, hboxnum, HG_ANGLE, 65);
set_hitbox_value(atk, hboxnum, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(atk, hboxnum, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(atk, hboxnum, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hboxnum, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(atk, hboxnum, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(atk, hboxnum, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(atk, hboxnum, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_SPRITE, sprite_get("blindfire_placeholder"));
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_ANIM_SPEED, 0.7);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_HIT_TAG, 2);
/*
set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -39);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 76);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 100);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 4);