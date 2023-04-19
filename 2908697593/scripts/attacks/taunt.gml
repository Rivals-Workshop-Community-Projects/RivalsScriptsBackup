
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("isaac_hurt"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 32);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 8);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("isaac_taunt_bang"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, sound_get("isaac_taunt_blow"));
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 18);

set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 19);



set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, 10);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 90);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 30);
set_hitbox_value(AT_TAUNT, 1, HG_EFFECT, 4);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 18);