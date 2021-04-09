//this doesn't work but i promise it will eventually i hope

//Bomb Toss. Internal move ID: 38.
//This used to be called "Trans Rights" and it's not anymore
//But that still holds true, trans rights baby

set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("cast"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 2);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, sprite_get("cast"));
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("saffronhitbox"));

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("flare"));

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_EXTRA_3, 2);

set_hitbox_value(AT_EXTRA_3, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 80);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 40);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 4);
set_hitbox_value(AT_EXTRA_3, 1, HG_EFFECT, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, sound_get("explode_fire"));
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_EXTRA_3, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_SPRITE, sprite_get("temp_bomb_proj"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_MASK, sprite_get("temp_bomb_proj"));
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_VSPEED, -6);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_AIR_FRICTION, .04);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_GROUP, 1);

// Explosion
set_hitbox_value(AT_EXTRA_3, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 300);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 300);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, sound_get("explode_fire"));
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 85);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_TECHABLE, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_GROUP, -1);
