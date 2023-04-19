set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial2_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 4);

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
//

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_DSPECIAL_2, 6, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSPECIAL_2, 1);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 90);//45
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);//8
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);//8
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);//8
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 14);//8
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5);//.2
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_PARRY_STUN, 1);//.2
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("arrowdown"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("arrowdown"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);//nspecial_proj2_mask
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_HSPEED, 12);//6.5
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_VSPEED, 12);//6.5
//set_hitbox_value(AT_DSPECIAL_2, 3, HG_PROJECTILE_DESTROY_EFFECT, splashfx);//6
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, .5);
