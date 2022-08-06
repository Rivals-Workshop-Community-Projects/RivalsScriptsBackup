set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("nspecial_stop_2"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 1);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("nspecial_stop_2_hurt"));

//Use 1
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 25);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sound_get("Boost"));

set_num_hitboxes(AT_EXTRA_1, 2);

set_hitbox_value(AT_EXTRA_1, 1, HG_MUNO_HITBOX_NAME, "Sweetspot (start of the move)");

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_EXTRA_1, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_EXTRA_1, 2, HG_MUNO_HITBOX_NAME, "Sweetspot (start of the move)");

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 94);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_EXTRA_1, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 304);


set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_MISC_ADD, "Speed and attack power actually vary depending on the charge. On sweetspot, Base knockback goes from 7 to 10, and damage goes from 12 to 17. On sourspot, those values go from 5 to 7 and from 8 to 11.");
set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_ENDLAG, "12");