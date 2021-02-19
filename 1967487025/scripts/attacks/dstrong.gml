set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 8);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//Startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 10);//10
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("Shadow_smash_down"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 5);//11
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);



//Hitbox window
set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 13);

//Endlag
set_window_value(AT_DSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_DSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_DSTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG, 4);

set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -43);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 112);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 107);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, sound_get("chaos_hit1"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DSTRONG, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 129);


for (var i = 3; i < 5; i++) {
    set_hitbox_value(AT_DSTRONG, i, HG_PARENT_HITBOX, 1);
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DSTRONG, i, HG_WINDOW, 5);
    set_hitbox_value(AT_DSTRONG, i, HG_LIFETIME, 4);
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_X, 3);
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_Y, -43);
    set_hitbox_value(AT_DSTRONG, i, HG_WINDOW_CREATION_FRAME, 4 * i - 8);
    set_hitbox_value(AT_DSTRONG, i, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_DSTRONG, i, HG_SDI_MULTIPLIER, 0);
}

//last hit
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -43);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 112);
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 107);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, sound_get("chaos_heavy_hit"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 2, HG_EXTRA_CAMERA_SHAKE, 1);