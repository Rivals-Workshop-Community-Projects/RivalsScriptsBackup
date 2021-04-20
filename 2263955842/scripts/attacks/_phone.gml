set_attack_value(AT_PHONE, AG_SPRITE, sprite_get("phone_open"));
set_attack_value(AT_PHONE, AG_NUM_WINDOWS, 3);
set_attack_value(AT_PHONE, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_PHONE, AG_CATEGORY, 2);
set_attack_value(AT_PHONE, AG_OFF_LEDGE, 1);
set_attack_value(AT_PHONE, AG_HURTBOX_SPRITE, sprite_get("_pho_empty"));
set_attack_value(AT_PHONE, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_PHONE, AG_MUNO_ATTACK_EXCLUDE, 1);

//Opening window

set_window_value(AT_PHONE, 1, AG_WINDOW_LENGTH, 40);
set_window_value(AT_PHONE, 1, AG_WINDOW_ANIM_FRAMES, 7);

//Looping window

set_window_value(AT_PHONE, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_PHONE, 2, AG_WINDOW_LENGTH, 100);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAME_START, 7);

//Closing window

set_window_value(AT_PHONE, 3, AG_WINDOW_LENGTH, 40);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAME_START, 8);

//Phone Hitbox

set_num_hitboxes(AT_PHONE, 1);

set_hitbox_value(AT_PHONE, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_PHONE, 1, HG_WINDOW, 3);
set_hitbox_value(AT_PHONE, 1, HG_WINDOW_CREATION_FRAME, 23);
set_hitbox_value(AT_PHONE, 1, HG_LIFETIME, 35);
set_hitbox_value(AT_PHONE, 1, HG_HITBOX_X, -20);
set_hitbox_value(AT_PHONE, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_PHONE, 1, HG_WIDTH, 10);
set_hitbox_value(AT_PHONE, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_PHONE, 1, HG_SHAPE, 0);
set_hitbox_value(AT_PHONE, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_PHONE, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_PHONE, 1, HG_ANGLE, 160);
set_hitbox_value(AT_PHONE, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_PHONE, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_PHONE, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_PHONE, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_PHONE, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_PHONE, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_PHONE, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_PHONE, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_PHONE, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_SPRITE, sprite_get("phone"));
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_HSPEED, -4.5);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_GRAVITY, 0.45);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_UNBASHABLE, false);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_DESTROY_EFFECT, effect_nothing);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_GROUND_FRICTION, 0.05);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_AIR_FRICTION, 0.02);
set_hitbox_value(AT_PHONE, 1, HG_PROJECTILE_IS_TRANSCENDENT, false);
