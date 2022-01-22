set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED, -5);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED, -5);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_start"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 10);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_loop"));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_end"));
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_TYPE, 7); //blast off
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 6); 
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2); 
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 24); 
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_ell_uspecial_explode"));
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_LENGTH, 30); //hits totem
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_LENGTH, 30); //turn around
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.5);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_turn"));
set_window_value(AT_FSPECIAL_2, 6, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_LENGTH, 10); //stall before blast off
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_SFX, asset_get("sfx_ice_uspecial_start"));
set_window_value(AT_FSPECIAL_2, 7, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_LENGTH, 20); //wall
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_SFX, asset_get("sfx_kragg_roll_end"));
set_window_value(AT_FSPECIAL_2, 8, AG_WINDOW_SFX_FRAME, 0);

set_num_hitboxes(AT_FSPECIAL_2, 1);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1); //armored roll
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 55);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1); //wall slam
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 150);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 150);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_TYPE, 1); //armored roll totem
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_WIDTH, 75);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_FSPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));