set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 3);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
// set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0.01);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
// set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 3);
// set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.5);

set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
// set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0.2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
// set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_HSPEED, 0.5);
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
// set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 128);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -68);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 74);//
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 74);//
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 140);
// set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.4);
// set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, hit_fx_create(sprite_get("fx_magic"), 20));
// set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_sword_activate"));
set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("fspecial_proj"));