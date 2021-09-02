set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
//set_attack_value(AT_JAB, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//startup
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1);

//repeating hitbox
set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1);
//set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_blow_weak1"));

/*
if (!attack_down){
    set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1);
}*/

//recovery
set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, asset_get("sfx_frog_jab"));


//hitboxes
set_num_hitboxes(AT_JAB, 4);

set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 25);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 25);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0.1);

set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 25);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 180);
//set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0.1);

set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 25);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 0);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, -20);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -15);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 25);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 25);
set_hitbox_value(AT_JAB, 4, HG_SHAPE, 0);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 180);
//set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
