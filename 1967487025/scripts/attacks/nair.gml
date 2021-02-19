set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, sound_get("chaos_attack"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 5);

for (var i = 1; i < 3; i++) {
    set_hitbox_value(AT_NAIR, i, HG_PARENT_HITBOX, 1);
    set_hitbox_value(AT_NAIR, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_NAIR, i, HG_WINDOW, 2);
    set_hitbox_value(AT_NAIR, i, HG_LIFETIME, 2);
    set_hitbox_value(AT_NAIR, i, HG_HITBOX_X, 0);
    set_hitbox_value(AT_NAIR, i, HG_HITBOX_Y, -37);
    set_hitbox_value(AT_NAIR, i, HG_WIDTH, 87);
    set_hitbox_value(AT_NAIR, i, HG_HEIGHT, 87);
    set_hitbox_value(AT_NAIR, i, HG_PRIORITY, 1);
    set_hitbox_value(AT_NAIR, i, HG_DAMAGE, 2);
    set_hitbox_value(AT_NAIR, i, HG_ANGLE, 60);
    set_hitbox_value(AT_NAIR, i, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_NAIR, i, HG_KNOCKBACK_SCALING, .25);
    set_hitbox_value(AT_NAIR, i, HG_BASE_HITPAUSE, 5);
    set_hitbox_value(AT_NAIR, i, HG_EXTRA_HITPAUSE, 1);
    set_hitbox_value(AT_NAIR, i, HG_HIT_SFX, sound_get("chaos_hit1"));
    set_hitbox_value(AT_NAIR, i, HG_HITSTUN_MULTIPLIER, 0.8);
    set_hitbox_value(AT_NAIR, i, HG_HITBOX_GROUP, -1);
    set_hitbox_value(AT_NAIR, i, HG_EXTRA_CAMERA_SHAKE, 0);
    set_hitbox_value(AT_NAIR, i, HG_VISUAL_EFFECT, 128);
    set_hitbox_value(AT_NAIR, i, HG_SDI_MULTIPLIER, 1.5);
    
}

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 4);


for (var i = 3; i < 5; i++) {
    set_hitbox_value(AT_NAIR, i, HG_PARENT_HITBOX, i - 2);
    set_hitbox_value(AT_NAIR, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_NAIR, i, HG_WINDOW, 2);
    set_hitbox_value(AT_NAIR, i, HG_LIFETIME, 2);
    set_hitbox_value(AT_NAIR, i, HG_HITBOX_X, 0);
    set_hitbox_value(AT_NAIR, i, HG_HITBOX_Y, -37);
    set_hitbox_value(AT_NAIR, i, HG_WINDOW_CREATION_FRAME, 4 * i - 4);
    set_hitbox_value(AT_NAIR, i, HG_HITBOX_GROUP, -1);
}



set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -37);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 87);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 87);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NAIR, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, sound_get("chaos_hit2"));
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 5, HG_VISUAL_EFFECT, 129);


