set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_COOLDOWN, 40);
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_CD_SPECIAL, 1);
//set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "The number of multi-hits, as well as the final hit's power, will change depending on A) the charge of the move and B) the distance from the opponent.");

// startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 10);

// charge loop
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 2, AG_MUNO_WINDOW_EXCLUDE, 1);

// post-charge
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 14);

set_num_hitboxes(AT_NSPECIAL, 0);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2); // also change these stats in hit_player.gml
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 690);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 48);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 32);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, -60);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 32);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("blanklol"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 304);
//set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sfx_dbfz_hit_jab3);
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_MUNO_HITBOX_ACTIVE, "23");
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 1);

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("blanklol"));
//set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 12);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 120);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 16);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 6); // 10
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 5); // 3
//set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 6);