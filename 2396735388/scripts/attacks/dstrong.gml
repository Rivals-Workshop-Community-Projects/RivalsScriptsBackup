set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_CATEGORY, 1);
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSTRONG, AG_LANDING_LAG, 14);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_bird_downspecial"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_CUSTOM_GRAVITY, .35);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);

set_num_hitboxes(AT_DSTRONG, 1);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .6);
//set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 2);

//empowered

set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("dstrong_emp"));
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong_emp_hurt"));
set_attack_value(AT_DSTRONG_2, AG_CATEGORY, 1);
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG_2, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSTRONG_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSTRONG_2, AG_LANDING_LAG, 14);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));

set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_bird_downspecial"));
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_VSPEED, 12);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_CUSTOM_GRAVITY, .35);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);

set_num_hitboxes(AT_DSTRONG_2, 4);

set_hitbox_value(AT_DSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 75);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSTRONG_2, 1, HG_EFFECT, 230);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_DSTRONG_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSTRONG_2, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DSTRONG_2, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSTRONG_2, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 4, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DSTRONG_2, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG_2, 4, HG_WIDTH, 90);
set_hitbox_value(AT_DSTRONG_2, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG_2, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG_2, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG_2, 4, HG_ANGLE, -90);
set_hitbox_value(AT_DSTRONG_2, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG_2, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSTRONG_2, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSTRONG_2, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSTRONG_2, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DSTRONG_2, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG_2, 4, HG_EFFECT, 229);
set_hitbox_value(AT_DSTRONG_2, 4, HG_VISUAL_EFFECT, 304);