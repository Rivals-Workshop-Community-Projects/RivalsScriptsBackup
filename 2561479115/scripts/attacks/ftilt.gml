set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 99);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 2, AG_WINDOW_JUMP_TO, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_HAS_SFX, 1);


set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 4);



set_num_hitboxes(AT_FTILT,2);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//set_hitbox_value(AT_FTILT, 1, HG_EXTRA_CAMERA_SHAKE, 2);

var atk = AT_FTILT;
var hboxnum = 2;
set_hitbox_value(atk, hboxnum, HG_PARENT_HITBOX, 2);
set_hitbox_value(atk, hboxnum, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hboxnum, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hboxnum, HG_WINDOW, 5);
set_hitbox_value(atk, hboxnum, HG_LIFETIME, 6);
set_hitbox_value(atk, hboxnum, HG_HITBOX_X, 121);
set_hitbox_value(atk, hboxnum, HG_HITBOX_Y, -37);
set_hitbox_value(atk, hboxnum, HG_WIDTH, 50);
set_hitbox_value(atk, hboxnum, HG_HEIGHT, 40);
set_hitbox_value(atk, hboxnum, HG_PRIORITY, 2);
set_hitbox_value(atk, hboxnum, HG_DAMAGE, 10);
set_hitbox_value(atk, hboxnum, HG_ANGLE, 40);
set_hitbox_value(atk, hboxnum, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hboxnum, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(atk, hboxnum, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hboxnum, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(atk, hboxnum, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(atk, hboxnum, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(atk, hboxnum, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_SPRITE, sprite_get("blindfire_placeholder"));
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_ANIM_SPEED, 0.7);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_HIT_TAG, 2);