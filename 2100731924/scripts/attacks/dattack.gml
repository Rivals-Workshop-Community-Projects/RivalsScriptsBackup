set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);

// this variable holds the length of dash attack with no looping of the last window, this is for efficiency
dashAttackLength = 0;
var i = 1;
for(i = 1; i <= get_attack_value(AT_DATTACK, AG_NUM_WINDOWS); i++){
    dashAttackLength += get_window_value(AT_DATTACK, i, AG_WINDOW_LENGTH);
}

set_num_hitboxes(AT_DATTACK, 4);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(AT_DATTACK, 1, HG_SDI_MULTIPLIER, -1);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 65);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(AT_DATTACK, 2, HG_SDI_MULTIPLIER, -1);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 19);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 50);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_DRIFT_MULTIPLIER, -1);
set_hitbox_value(AT_DATTACK, 3, HG_SDI_MULTIPLIER, -1);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 14);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 40);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 1);