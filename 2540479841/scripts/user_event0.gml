//Waft 1

set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecialv1"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecialv1"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecialv1_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("waft1"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get("SFXVoiceDSpecialFail"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_DSPECIAL, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("gascloud"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("gascloud"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, -4);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 72);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("nothing"));
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 1);