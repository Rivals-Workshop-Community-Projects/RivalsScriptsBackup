set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_CATEGORY, 2);
set_attack_value(AT_UTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

//startup
set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

//active
set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//recovery
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,2);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 4); //above average active frames
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 55);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8); //high tilt base knockback
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, hfx_wind_small);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 3); //normal tilt hitpause
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 0.7);

set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3); //above average active frames
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 65);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 75);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 7); //high tilt base knockback
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .3); //normal tilt scaling
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 7); //normal tilt hitpause
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .3); //low tilt hitpause scaling
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, hfx_wind_small);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, -1);