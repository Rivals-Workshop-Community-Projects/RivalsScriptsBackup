set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);

set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED, -0.2);
//set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED, -0.2);
//set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_ori_bash_hit"));

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_num_hitboxes(AT_DSPECIAL_2, 1);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 45);//45
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);//8
set_hitbox_value(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5);//.2
set_hitbox_value(AT_DSPECIAL_2, 1, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 15);

