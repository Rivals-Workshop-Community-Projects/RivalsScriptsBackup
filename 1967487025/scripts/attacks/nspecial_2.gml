set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("blast"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("blast_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 0);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.85);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("chaos_blast"));

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED, -2.5);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_HSPEED, 0);

set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_NSPECIAL_2, 6);

for (var i = 1; i < 7; i++) {
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HITBOX_GROUP, 1);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_WINDOW, 4);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_LIFETIME, 2);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HITBOX_X, -8);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HITBOX_Y, -44);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_SHAPE, 0);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_PRIORITY, 10);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_DAMAGE, 20);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_ANGLE, 60);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_KNOCKBACK_SCALING, 1.4);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_BASE_HITPAUSE, 0);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_EXTRA_HITPAUSE, 12);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HITPAUSE_SCALING, 1.5);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_HIT_SFX, sound_get("chaos_heavy_hit"));
    set_hitbox_value(AT_NSPECIAL_2, i, HG_ANGLE_FLIPPER, 6);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_VISUAL_EFFECT, 1);
    set_hitbox_value(AT_NSPECIAL_2, i, HG_EXTRA_CAMERA_SHAKE, 1);
}

set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 70);

set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 126);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 128);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 2);

set_hitbox_value(AT_NSPECIAL_2, 3, HG_WIDTH, 190);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_HEIGHT, 192);
set_hitbox_value(AT_NSPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 4);

set_hitbox_value(AT_NSPECIAL_2, 4, HG_WIDTH, 290);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_HEIGHT, 292);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL_2, 4, HG_LIFETIME, 16);

set_hitbox_value(AT_NSPECIAL_2, 5, HG_WIDTH, 182);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_HEIGHT, 204);
set_hitbox_value(AT_NSPECIAL_2, 5, HG_WINDOW_CREATION_FRAME, 22);

set_hitbox_value(AT_NSPECIAL_2, 6, HG_WIDTH, 130);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_HEIGHT, 128);
set_hitbox_value(AT_NSPECIAL_2, 6, HG_WINDOW_CREATION_FRAME, 24);
