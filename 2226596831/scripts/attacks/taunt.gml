set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 7);

//ts    tt    tth   tan   ta    tah   tar
//0-0:1 1-1:1 2-2:1 3-4:2 5-6:2 7-7:1 8-9:2

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("tilt"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("bowling_start"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 29);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, sound_get("swing_2"));
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME, 17);

set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 2);


set_num_hitboxes(AT_TAUNT, 1); 

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 5);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 10);

set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("wheel"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, 16);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 32+17);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -48+17);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 34);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 34);

set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 270);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 141);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("hit_hard_1"));

set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_TAUNT, 1, HG_EXTENDED_PARRY_STUN, 1);