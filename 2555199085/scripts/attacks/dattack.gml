set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DATTACK, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DATTACK, AG_LANDING_LAG, 8);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1); //Prep 1
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("Lawnmower"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1); //Prep Move
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 12);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1); //Jump
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1); //Attack 1
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 2);

/*
set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1); //Attack 1 Smear2
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 2);
*/

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1); //Endlag
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1); //Endlag
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_DATTACK, 3);

//Late Sour
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 9);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 35);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE,  70);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .4);

//Early
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE,  65);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .55);

set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_GRAVITY, .25);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_ANIM_SPEED, .1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 240);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_SPRITE, sprite_get("mower"));
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_MASK, sprite_get("mower"));
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_IS_TRANSCENDENT, false)
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_VSPEED, 3);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_DESTROY_EFFECT, 301 );



