set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("blushtaunt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, hurtbox_spr);


set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3 );

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 3,AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_TAUNT_2, 3,AG_WINDOW_SFX, asset_get("sfx_bubblespray"));

set_window_value(AT_TAUNT_2, 4,AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 4,AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT_2, 4,AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 4,AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_TAUNT_2,1);

set_hitbox_value(AT_TAUNT_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 999);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, sprite_get("maypulthought"));
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -190);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, -70);