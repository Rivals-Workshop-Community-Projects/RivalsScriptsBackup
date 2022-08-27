set_attack_value(49, AG_CATEGORY, 0);
set_attack_value(49, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(49, AG_NUM_WINDOWS, 4);
set_attack_value(49, AG_HAS_LANDING_LAG, 0);
set_attack_value(49, AG_LANDING_LAG, 0);
set_attack_value(49, AG_OFF_LEDGE, 0);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(49, 1, AG_WINDOW_LENGTH, 35);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(49, 1, AG_WINDOW_HSPEED, -5);
set_window_value(49, 1, AG_WINDOW_VSPEED, 0);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .8);
set_window_value(49, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("bell_uncut"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(49, 1, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(49, 2, AG_WINDOW_LENGTH, 8);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(49, 2, AG_WINDOW_VSPEED, 0);
set_window_value(49, 2, AG_WINDOW_HSPEED, 25);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .7);
set_window_value(49, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .7);
set_window_value(49, 2, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, asset_get("sfx_blink_dash"));
set_window_value(49, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(49, 3, AG_WINDOW_LENGTH, 6);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(49, 3, AG_WINDOW_VSPEED, 0);
set_window_value(49, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(49, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 2.5);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 4, AG_WINDOW_LENGTH, 18);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(49, 4, AG_WINDOW_HSPEED, 0);
set_window_value(49, 4, AG_WINDOW_VSPEED, 0);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);


set_num_hitboxes(49, 1);

set_hitbox_value(49, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(49, 1, HG_LIFETIME, 12);
set_hitbox_value(49, 1, HG_HITBOX_X, 16);
set_hitbox_value(49, 1, HG_HITBOX_Y, -40);
set_hitbox_value(49, 1, HG_WIDTH, 96);
set_hitbox_value(49, 1, HG_HEIGHT, 80);
set_hitbox_value(49, 1, HG_SHAPE, 1);
set_hitbox_value(49, 1, HG_PRIORITY, 10);
set_hitbox_value(49, 1, HG_DAMAGE, 30);
set_hitbox_value(49, 1, HG_ANGLE, 60);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 1.5);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 30);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(49, 1, HG_HIT_SFX, sound_get("fs_hit"));