set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial_2"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_2_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_MUNO_ATTACK_MISC_ADD, "");

set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("sfx_shield"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 15);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 12);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_INVINCIBILITY, 2);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.5);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_GOTO, 24);

set_num_hitboxes(AT_FSPECIAL_2, 3);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Clean");
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 74);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "Late");
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 19);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 74);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL_2, 3, HG_MUNO_HITBOX_NAME, "Projectile Block");
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 24);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 38);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 1);