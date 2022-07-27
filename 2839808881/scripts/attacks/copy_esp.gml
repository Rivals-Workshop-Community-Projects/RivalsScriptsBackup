set_attack_value(AT_COPY_ESP, AG_CATEGORY, 2);
set_attack_value(AT_COPY_ESP, AG_SPRITE, sprite_get("ability_esp"));
set_attack_value(AT_COPY_ESP, AG_HURTBOX_SPRITE, sprite_get("ability_esp_hurt"));
set_attack_value(AT_COPY_ESP, AG_NUM_WINDOWS, 5);
set_attack_value(AT_COPY_ESP, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_COPY_ESP, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_ESP, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_ESP, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_ESP, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_ESP, 1, AG_WINDOW_SFX, sound_get("sfx_star_allies_esp_pkshift"));
set_window_value(AT_COPY_ESP, 1, AG_WINDOW_SFX_FRAME, 11);

//create orb
set_window_value(AT_COPY_ESP, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_ESP, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_COPY_ESP, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_COPY_ESP, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_COPY_ESP, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_COPY_ESP, 2, AG_WINDOW_VSPEED_TYPE, 1);

//"charging"
set_window_value(AT_COPY_ESP, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_COPY_ESP, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_COPY_ESP, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_ESP, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_COPY_ESP, 3, AG_WINDOW_HSPEED_TYPE, 1);

//transition
set_window_value(AT_COPY_ESP, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_ESP, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_COPY_ESP, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_COPY_ESP, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_COPY_ESP, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_COPY_ESP, 4, AG_WINDOW_VSPEED_TYPE, 1);

//detonate + endlag
set_window_value(AT_COPY_ESP, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_COPY_ESP, 5, AG_WINDOW_LENGTH, 25);
set_window_value(AT_COPY_ESP, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_COPY_ESP, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_COPY_ESP, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_COPY_ESP, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_COPY_ESP, 6);

//Main Proj (Doesn't do anything kb wise)
set_hitbox_value(AT_COPY_ESP, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_ESP, 1, HG_WINDOW, 2);
set_hitbox_value(AT_COPY_ESP, 1, HG_LIFETIME, 1200);
set_hitbox_value(AT_COPY_ESP, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_COPY_ESP, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_COPY_ESP, 1, HG_WIDTH, 0);
set_hitbox_value(AT_COPY_ESP, 1, HG_HEIGHT, 0);
set_hitbox_value(AT_COPY_ESP, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_COPY_ESP, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_COPY_ESP, 1, HG_ANGLE, 50);
set_hitbox_value(AT_COPY_ESP, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_COPY_ESP, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_COPY_ESP, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_COPY_ESP, 1, HG_PROJECTILE_SPRITE, sprite_get("ability_esp_proj"));
set_hitbox_value(AT_COPY_ESP, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_COPY_ESP, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_ESP, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_ESP, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_ESP, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_COPY_ESP, 1, HG_HIT_SFX, asset_get("sfx_absa_whip"));

//PK Shift Traveling Hitbox (Damage only, no KB)
set_hitbox_value(AT_COPY_ESP, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_ESP, 2, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_ESP, 2, HG_LIFETIME, 0);
set_hitbox_value(AT_COPY_ESP, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_COPY_ESP, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_COPY_ESP, 2, HG_WIDTH, 80);
set_hitbox_value(AT_COPY_ESP, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_COPY_ESP, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_COPY_ESP, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_COPY_ESP, 2, HG_ANGLE, 60);
set_hitbox_value(AT_COPY_ESP, 2, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_COPY_ESP, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_COPY_ESP, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_COPY_ESP, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_COPY_ESP, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_COPY_ESP, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_ESP, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_ESP, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_ESP, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_COPY_ESP, 2, HG_HIT_SFX, asset_get("no"));
set_hitbox_value(AT_COPY_ESP, 2, HG_HITBOX_GROUP, -1);

//PK Shift Detonate Hitbox
set_hitbox_value(AT_COPY_ESP, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_ESP, 3, HG_WINDOW, 69);
set_hitbox_value(AT_COPY_ESP, 3, HG_LIFETIME, 0);
set_hitbox_value(AT_COPY_ESP, 3, HG_HITBOX_X, -1);
set_hitbox_value(AT_COPY_ESP, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_COPY_ESP, 3, HG_WIDTH, 100);
set_hitbox_value(AT_COPY_ESP, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_COPY_ESP, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_COPY_ESP, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_COPY_ESP, 3, HG_ANGLE, 60);
set_hitbox_value(AT_COPY_ESP, 3, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_COPY_ESP, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_COPY_ESP, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_COPY_ESP, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_COPY_ESP, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_COPY_ESP, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_COPY_ESP, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_ESP, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_ESP, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_ESP, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_COPY_ESP, 3, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_COPY_ESP, 3, HG_HITBOX_GROUP, -1);

//Electroshift Proj (Doesn't do anything kb wise)
set_hitbox_value(AT_COPY_ESP, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_ESP, 4, HG_WINDOW, 9);
set_hitbox_value(AT_COPY_ESP, 4, HG_LIFETIME, 1200);
set_hitbox_value(AT_COPY_ESP, 4, HG_HITBOX_X, -4);
set_hitbox_value(AT_COPY_ESP, 4, HG_HITBOX_Y, -60);
set_hitbox_value(AT_COPY_ESP, 4, HG_WIDTH, 0);
set_hitbox_value(AT_COPY_ESP, 4, HG_HEIGHT, 0);
set_hitbox_value(AT_COPY_ESP, 4, HG_PRIORITY, 0);
set_hitbox_value(AT_COPY_ESP, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_COPY_ESP, 4, HG_ANGLE, 50);
set_hitbox_value(AT_COPY_ESP, 4, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_COPY_ESP, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_COPY_ESP, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_COPY_ESP, 4, HG_PROJECTILE_SPRITE, sprite_get("ability_esp_proj_elec"));
set_hitbox_value(AT_COPY_ESP, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_COPY_ESP, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_ESP, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_ESP, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_ESP, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_COPY_ESP, 4, HG_HIT_SFX, asset_get("sfx_absa_whip"));

//PK Electroshift Traveling Hitbox (Damage only, no KB)
set_hitbox_value(AT_COPY_ESP, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_ESP, 5, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_ESP, 5, HG_LIFETIME, 0);
set_hitbox_value(AT_COPY_ESP, 5, HG_HITBOX_X, -4);
set_hitbox_value(AT_COPY_ESP, 5, HG_HITBOX_Y, -60);
set_hitbox_value(AT_COPY_ESP, 5, HG_WIDTH, 90);
set_hitbox_value(AT_COPY_ESP, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_COPY_ESP, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_COPY_ESP, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_COPY_ESP, 5, HG_ANGLE, 60);
set_hitbox_value(AT_COPY_ESP, 5, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_COPY_ESP, 5, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_COPY_ESP, 5, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_COPY_ESP, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_COPY_ESP, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_COPY_ESP, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_ESP, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_ESP, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_ESP, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_COPY_ESP, 5, HG_HIT_SFX, asset_get("no"));
set_hitbox_value(AT_COPY_ESP, 5, HG_HITBOX_GROUP, -1);

//PK Electroshift Detonate Hitbox
set_hitbox_value(AT_COPY_ESP, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_ESP, 6, HG_WINDOW, 69);
set_hitbox_value(AT_COPY_ESP, 6, HG_LIFETIME, 0);
set_hitbox_value(AT_COPY_ESP, 6, HG_HITBOX_X, -1);
set_hitbox_value(AT_COPY_ESP, 6, HG_HITBOX_Y, 0);
set_hitbox_value(AT_COPY_ESP, 6, HG_WIDTH, 150);
set_hitbox_value(AT_COPY_ESP, 6, HG_HEIGHT, 150);
set_hitbox_value(AT_COPY_ESP, 6, HG_PRIORITY, 5);
set_hitbox_value(AT_COPY_ESP, 6, HG_DAMAGE, 15);
set_hitbox_value(AT_COPY_ESP, 6, HG_ANGLE, 60);
set_hitbox_value(AT_COPY_ESP, 6, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_COPY_ESP, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_COPY_ESP, 6, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_COPY_ESP, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_COPY_ESP, 6, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_COPY_ESP, 6, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_COPY_ESP, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_ESP, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_ESP, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_ESP, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_ESP, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_COPY_ESP, 6, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_COPY_ESP, 6, HG_HITBOX_GROUP, -1);