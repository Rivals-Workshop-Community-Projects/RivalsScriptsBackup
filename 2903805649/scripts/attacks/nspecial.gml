set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));

set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 13);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, 14);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);



set_num_hitboxes(AT_NSPECIAL, 6);

//set_hitbox_value(AT_NSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 99);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 5);
//set_hitbox_value(AT_NSPECIAL, 1, HG_EFFECT, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 105);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("sf_hit1"));


set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 105);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sound_get("sf_hit1"));


set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 105);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 20);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, sound_get("sf_hit1"));


set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 105);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 20);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1.7);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, sound_get("sf_hit1"));


set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 105);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.56);
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, sound_get("sf_hit3"));
