set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 3);
//set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial2"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_ori_bash_hit"));
//set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);

set_num_hitboxes(AT_NSPECIAL_2, 0);

//STRONG
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 160);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 160);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .9);//.75
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.0);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 251);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, blank);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_UNBASHABLE, 1);
//set_hitbox_value(AT_NSPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 251);

//WEAK
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_WIDTH, 60);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .8);//.5
set_hitbox_value(AT_NSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_HIT_LOCKOUT, 5);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_VISUAL_EFFECT, 251);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_UNBASHABLE, 1);
//set_hitbox_value(AT_NSPECIAL_2, 2, HG_PROJECTILE_DESTROY_EFFECT, 251);