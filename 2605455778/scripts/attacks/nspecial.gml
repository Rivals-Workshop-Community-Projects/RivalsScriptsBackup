set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1); //start up
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_cast"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 10);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1); //grab
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_hit"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1); //recovery
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1); //throw
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 1); //swallow
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_swallow"));
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_TYPE, 1); //eat
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 40);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_crunch"));
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 1); //after plat
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_TYPE, 1); //barf
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 35);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_turn"));
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 1); //throw recovery
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 23);

set_window_value(AT_NSPECIAL, 10, AG_WINDOW_TYPE, 1); //totem pull
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL, 11, AG_WINDOW_TYPE, 1); //Pull
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_NSPECIAL, 2);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 15);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 180);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_AIR_FRICTION, 9);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 50);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
