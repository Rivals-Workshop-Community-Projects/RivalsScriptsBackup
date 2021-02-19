set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("AT_DSPECIAL_CHARGE"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("AT_DSPECIAL_CHARGE"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("AT_DSPECIAL_CHARGE_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1); //CHARGE
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("jet_chargeup"));

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1); //NOCHARGE
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, sound_get("jet_boost"));

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1); //MEDCHARGE
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, sound_get("jet_boost"));

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1); //FULLCHARGE
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, 11);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, -2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_SFX, sound_get("jet_boost"));

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1); //BLAST
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, sound_get("jet_blast"));


set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_DSPECIAL, 4);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 10);

set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .23);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 16);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 50);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSPECIAL, 4, HG_FINAL_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .26);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 1);