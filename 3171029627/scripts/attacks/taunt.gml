set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("triangle_hurtbox"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
//set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 19);

//Normal taunt
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 42);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 19);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 11);

//James taunt
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, sound_get("James_Gun_Hit"));

set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 23);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 18);

set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 21);

set_num_hitboxes(AT_TAUNT, 3);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 100);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 22);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -170);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 0)
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_TAUNT, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("james_proj"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 100);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 300);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -20);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -170);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 0)
set_hitbox_value(AT_TAUNT, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_TAUNT, 2, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_SPRITE, sprite_get("james_knocked"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_ANIM_SPEED, .15);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_HSPEED, 3.4);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_VSPEED, -15);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_GRAVITY, 0.7);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_TAUNT, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);