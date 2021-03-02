//Down Special: Mario Tornado
set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL, AG_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_mario_tornado1"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1); //Repeating Hits
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1); //Inbetween Multi Hit and Final Hit
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_mario_tornado2"));
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1); //Final hit
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSPECIAL, 2);

//Repeating Hits

set_hitbox_value(AT_DSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Repeating Hitboxes");

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 62);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 58);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.05);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 10);

//Final Hit

set_hitbox_value(AT_DSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Final Hitbox");

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -44);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 72);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 6);










//Fireball Stuff
//This is for Down B Lol!
//Same Thing
set_hitbox_value(AT_NSPECIAL, 7, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 70);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT_X_OFFSET, 1 * spr_dir);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, -3);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 0.95);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("fireball_left"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_MASK, sprite_get("fireball_left"));
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GRAVITY, 0.45);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_HSPEED, -5);
set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, sound_get("sfx_mario_fireball_hit"));
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 6);

//Normal Fireball
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 9, HG_LIFETIME, 70);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_X, 32);
set_hitbox_value(AT_NSPECIAL, 9, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 9, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT_X_OFFSET, 1 * spr_dir);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT_Y_OFFSET, -3);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITSTUN_MULTIPLIER, 0.95);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_SPRITE, sprite_get("fireball"));
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_MASK, sprite_get("fireball"));
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_VSPEED, -9);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_GRAVITY, 0.45);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_SFX, sound_get("sfx_mario_fireball_hit"))
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_HITPAUSE, 6);