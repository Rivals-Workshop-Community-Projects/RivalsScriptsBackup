set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_birdflap"));

// Takin' a tumble
var tumble_duration = 32;
set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, tumble_duration);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("tumble"));

// Ugh, Petah...
set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);

var num_dattack_boxes = 8;
set_num_hitboxes(AT_DATTACK, 1 + num_dattack_boxes);

// Rollin'
var box_duration = tumble_duration/num_dattack_boxes;
for (i = 0; i < num_dattack_boxes; i++) {
    set_hitbox_value(AT_DATTACK, 2 + i, HG_PARENT_HITBOX, 0);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_HITBOX_GROUP, 1);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_WINDOW, 3);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_WINDOW_CREATION_FRAME, i * box_duration);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_LIFETIME, box_duration);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_SHAPE, 2);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_HITBOX_X, 1);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_HITBOX_Y, -27);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_WIDTH, 90);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_HEIGHT, 64);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_PRIORITY, 1);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_HITBOX_GROUP, -1);
    
    set_hitbox_value(AT_DATTACK, 2 + i, HG_DAMAGE, 1);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_ANGLE, 10);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_ANGLE_FLIPPER, 0);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_BASE_KNOCKBACK, 6.5);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_KNOCKBACK_SCALING, 0.0);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_HITPAUSE_SCALING, 0.2);
    //set_hitbox_value(AT_DATTACK, 2 + i, HG_TECHABLE, 1);
    //set_hitbox_value(AT_DATTACK, 2 + i, HG_DRIFT_MULTIPLIER, 0);
    //set_hitbox_value(AT_DATTACK,  + i, HG_SDI_MULTIPLIER, 0);
    
    set_hitbox_value(AT_DATTACK, 2 + i, HG_VISUAL_EFFECT, 303);
    set_hitbox_value(AT_DATTACK, 2 + i, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
}

// Splat
set_hitbox_value(AT_DATTACK, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.4);

set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));