set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_AIR_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);

set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, sound_get("lightswingsoku"));
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FAIR, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 55);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_FAIR, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("weakslash"));

