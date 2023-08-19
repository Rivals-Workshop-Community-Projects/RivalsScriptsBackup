set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_BAIR, AG_BULLET_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 99); 
//if attack/special down on last frame, go to next window. otherwise, skip next window.
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 2, AG_WINDOW_JUMP_TO, 4);

set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_SFX, sound_get("gunshot"));

set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 2);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_BAIR, 5, AG_WINDOW_HSPEED, -5);
set_window_value(AT_BAIR, 5, AG_WINDOW_VSPEED, -3);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 3);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -34);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 5);//6
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);//added
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 9);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -34);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 75);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 6);
var atk = AT_BAIR;
var hboxnum = 3;
set_hitbox_value(atk, hboxnum, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hboxnum, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hboxnum, HG_WINDOW, 5);
set_hitbox_value(atk, hboxnum, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, hboxnum, HG_LIFETIME, 6);
set_hitbox_value(atk, hboxnum, HG_HITBOX_X, 50);
set_hitbox_value(atk, hboxnum, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hboxnum, HG_WIDTH, 70);
set_hitbox_value(atk, hboxnum, HG_HEIGHT, 35);
set_hitbox_value(atk, hboxnum, HG_SHAPE, 2);
set_hitbox_value(atk, hboxnum, HG_PRIORITY, 2);
set_hitbox_value(atk, hboxnum, HG_DAMAGE, 8);
set_hitbox_value(atk, hboxnum, HG_ANGLE, 361);
set_hitbox_value(atk, hboxnum, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hboxnum, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(atk, hboxnum, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hboxnum, HG_HITPAUSE_SCALING, 1);//.5
set_hitbox_value(atk, hboxnum, HG_VISUAL_EFFECT, hfx_plasma_small);
set_hitbox_value(atk, hboxnum, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(atk, hboxnum, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(atk, hboxnum, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
//set_hitbox_value(atk, hboxnum, HG_PROJECTILE_SPRITE, sprite_get("blindfire_placeholder"));
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hboxnum, HG_HIT_LOCKOUT, 8);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_ANIM_SPEED, 5/6);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_HIT_TAG, 2);
set_hitbox_value(atk, hboxnum, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hboxnum, HG_HITBOX_COLOR, hitbox_colors.gunshot)