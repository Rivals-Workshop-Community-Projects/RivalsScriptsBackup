//Empower Ring. Attack index: 29

set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("cast"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_NTHROW, AG_AIR_SPRITE, sprite_get("cast"));
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("saffronhitbox"));

set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sound_get("ice_beam"));

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 20);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NTHROW, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_SPRITE, sprite_get("empowerball"));
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_MASK, sprite_get("empowerball"));
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
