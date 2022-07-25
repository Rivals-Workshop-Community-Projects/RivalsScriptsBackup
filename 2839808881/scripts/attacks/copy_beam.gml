set_attack_value(AT_COPY_BEAM, AG_CATEGORY, 2);
set_attack_value(AT_COPY_BEAM, AG_SPRITE, sprite_get("ability_beam"));
set_attack_value(AT_COPY_BEAM, AG_HURTBOX_SPRITE, sprite_get("ability_beam_hurt"));
set_attack_value(AT_COPY_BEAM, AG_NUM_WINDOWS, 10);
set_attack_value(AT_COPY_BEAM, AG_OFF_LEDGE, 1);

//startup
set_window_value(AT_COPY_BEAM, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BEAM, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_COPY_BEAM, 1, AG_WINDOW_ANIM_FRAMES, 3);

//beam whip startup
set_window_value(AT_COPY_BEAM, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BEAM, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_BEAM, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_BEAM, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_COPY_BEAM, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_BEAM, 2, AG_WINDOW_SFX, sound_get("sfx_kssu_beam"));
set_window_value(AT_COPY_BEAM, 2, AG_WINDOW_SFX_FRAME, 11);

//whip active
set_window_value(AT_COPY_BEAM, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BEAM, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_BEAM, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_BEAM, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//whip endlag (visual)
set_window_value(AT_COPY_BEAM, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BEAM, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_BEAM, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_COPY_BEAM, 4, AG_WINDOW_ANIM_FRAME_START, 11);

//whip endlag (whiff)
set_window_value(AT_COPY_BEAM, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BEAM, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_COPY_BEAM, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_COPY_BEAM, 5, AG_WINDOW_ANIM_FRAME_START, 14);

//charging 1
set_window_value(AT_COPY_BEAM, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BEAM, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_BEAM, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_BEAM, 6, AG_WINDOW_ANIM_FRAME_START, 16);

//charging 2
set_window_value(AT_COPY_BEAM, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BEAM, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_COPY_BEAM, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_COPY_BEAM, 7, AG_WINDOW_ANIM_FRAME_START, 16);

//release charge
set_window_value(AT_COPY_BEAM, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BEAM, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_COPY_BEAM, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_COPY_BEAM, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_COPY_BEAM, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_COPY_BEAM, 8, AG_WINDOW_SFX, sound_get("sfx_kssu_wave_beam"));
set_window_value(AT_COPY_BEAM, 8, AG_WINDOW_SFX_FRAME, 5);

//charge shot
set_window_value(AT_COPY_BEAM, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BEAM, 9, AG_WINDOW_LENGTH, 9);
set_window_value(AT_COPY_BEAM, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_COPY_BEAM, 9, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_COPY_BEAM, 9, AG_WINDOW_HSPEED, -5);

//endlag charge
set_window_value(AT_COPY_BEAM, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_COPY_BEAM, 10, AG_WINDOW_LENGTH, 10);
set_window_value(AT_COPY_BEAM, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_COPY_BEAM, 10, AG_WINDOW_ANIM_FRAME_START, 25);

set_num_hitboxes(AT_COPY_BEAM, 6);

//Whip 1
set_hitbox_value(AT_COPY_BEAM, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_BEAM, 1, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_BEAM, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_BEAM, 1, HG_HITBOX_X, 35);
set_hitbox_value(AT_COPY_BEAM, 1, HG_HITBOX_Y, -93);
set_hitbox_value(AT_COPY_BEAM, 1, HG_WIDTH, 76);
set_hitbox_value(AT_COPY_BEAM, 1, HG_HEIGHT, 93);
set_hitbox_value(AT_COPY_BEAM, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_COPY_BEAM, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_COPY_BEAM, 1, HG_ANGLE, 40);
set_hitbox_value(AT_COPY_BEAM, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_COPY_BEAM, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_COPY_BEAM, 1, HG_VISUAL_EFFECT, beam_hitfx);
set_hitbox_value(AT_COPY_BEAM, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));

//Whip 2
set_hitbox_value(AT_COPY_BEAM, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_BEAM, 2, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_BEAM, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_COPY_BEAM, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_BEAM, 2, HG_HITBOX_X, 58);
set_hitbox_value(AT_COPY_BEAM, 2, HG_HITBOX_Y, -84);
set_hitbox_value(AT_COPY_BEAM, 2, HG_WIDTH, 90);
set_hitbox_value(AT_COPY_BEAM, 2, HG_HEIGHT, 110);
set_hitbox_value(AT_COPY_BEAM, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_COPY_BEAM, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_COPY_BEAM, 2, HG_ANGLE, 40);
set_hitbox_value(AT_COPY_BEAM, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_COPY_BEAM, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_COPY_BEAM, 2, HG_VISUAL_EFFECT, beam_hitfx);
set_hitbox_value(AT_COPY_BEAM, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_COPY_BEAM, 2, HG_HITBOX_GROUP, 1);

//Whip 3
set_hitbox_value(AT_COPY_BEAM, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_BEAM, 3, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_BEAM, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_COPY_BEAM, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_BEAM, 3, HG_HITBOX_X, 85);
set_hitbox_value(AT_COPY_BEAM, 3, HG_HITBOX_Y, -79);
set_hitbox_value(AT_COPY_BEAM, 3, HG_WIDTH, 97);
set_hitbox_value(AT_COPY_BEAM, 3, HG_HEIGHT, 122);
set_hitbox_value(AT_COPY_BEAM, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_COPY_BEAM, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_COPY_BEAM, 3, HG_ANGLE, 40);
set_hitbox_value(AT_COPY_BEAM, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_COPY_BEAM, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_COPY_BEAM, 3, HG_VISUAL_EFFECT, beam_hitfx);
set_hitbox_value(AT_COPY_BEAM, 3, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_COPY_BEAM, 3, HG_HITBOX_GROUP, 2);

//Whip 4
set_hitbox_value(AT_COPY_BEAM, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_BEAM, 4, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_BEAM, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_COPY_BEAM, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_BEAM, 4, HG_HITBOX_X, 114);
set_hitbox_value(AT_COPY_BEAM, 4, HG_HITBOX_Y, -70);
set_hitbox_value(AT_COPY_BEAM, 4, HG_WIDTH, 77);
set_hitbox_value(AT_COPY_BEAM, 4, HG_HEIGHT, 120);
set_hitbox_value(AT_COPY_BEAM, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_COPY_BEAM, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_COPY_BEAM, 4, HG_ANGLE, 45);
set_hitbox_value(AT_COPY_BEAM, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_COPY_BEAM, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_COPY_BEAM, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_COPY_BEAM, 4, HG_VISUAL_EFFECT, beam_hitfx);
set_hitbox_value(AT_COPY_BEAM, 4, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_COPY_BEAM, 4, HG_HITBOX_GROUP, 3);

//Whip 4.2
set_hitbox_value(AT_COPY_BEAM, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_COPY_BEAM, 5, HG_WINDOW, 3);
set_hitbox_value(AT_COPY_BEAM, 5, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_COPY_BEAM, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_COPY_BEAM, 5, HG_HITBOX_X, 71);
set_hitbox_value(AT_COPY_BEAM, 5, HG_HITBOX_Y, -30);
set_hitbox_value(AT_COPY_BEAM, 5, HG_WIDTH, 83);
set_hitbox_value(AT_COPY_BEAM, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_COPY_BEAM, 5, HG_PRIORITY, 6);
set_hitbox_value(AT_COPY_BEAM, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_COPY_BEAM, 5, HG_ANGLE, 45);
set_hitbox_value(AT_COPY_BEAM, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_COPY_BEAM, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_COPY_BEAM, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_COPY_BEAM, 5, HG_VISUAL_EFFECT, beam_hitfx);
set_hitbox_value(AT_COPY_BEAM, 5, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_COPY_BEAM, 5, HG_HITBOX_GROUP, 3);

//charge shot
set_hitbox_value(AT_COPY_BEAM, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_COPY_BEAM, 6, HG_WINDOW, 9);
set_hitbox_value(AT_COPY_BEAM, 6, HG_LIFETIME, 180);
set_hitbox_value(AT_COPY_BEAM, 6, HG_HITBOX_X, 60);
set_hitbox_value(AT_COPY_BEAM, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_COPY_BEAM, 6, HG_WIDTH, 60);
set_hitbox_value(AT_COPY_BEAM, 6, HG_HEIGHT, 60);
set_hitbox_value(AT_COPY_BEAM, 6, HG_PRIORITY, 8);
set_hitbox_value(AT_COPY_BEAM, 6, HG_DAMAGE, 11);
set_hitbox_value(AT_COPY_BEAM, 6, HG_ANGLE, 50);
set_hitbox_value(AT_COPY_BEAM, 6, HG_VISUAL_EFFECT, beam_hitfx);
set_hitbox_value(AT_COPY_BEAM, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_COPY_BEAM, 6, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_COPY_BEAM, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_COPY_BEAM, 6, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_COPY_BEAM, 6, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_COPY_BEAM, 6, HG_PROJECTILE_SPRITE, sprite_get("ability_beam_proj"));
set_hitbox_value(AT_COPY_BEAM, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_COPY_BEAM, 6, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_COPY_BEAM, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_COPY_BEAM, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_BEAM, 6, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_COPY_BEAM, 6, HG_PROJECTILE_DESTROY_EFFECT, beam_hitfx);
set_hitbox_value(AT_COPY_BEAM, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_BEAM, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_COPY_BEAM, 6, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_COPY_BEAM, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_COPY_BEAM, 6, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));