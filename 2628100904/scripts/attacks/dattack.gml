// basic 1 hit attack with basic windup and end-lag. originally from darmanna's up-tilt.

set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, sound_get("pistol_clipin"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 2);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sound_get("pistol_shoot"));

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("pistol_shoot"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, sound_get("pistol_shoot"));
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 18);//16
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK, 5);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 73);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2); //rounded rectangle is 2, circle is 0, square is 1
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_mol_norm_explode"));
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_SDI_MULTIPLIER, .5);
set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, explode_fx);
set_hitbox_value(AT_DATTACK, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 73);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2); //rounded rectangle is 2, circle is 0, square is 1
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_mol_norm_explode"));
set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 2, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DATTACK, 2, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_SDI_MULTIPLIER, .5);
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, explode_fx);
set_hitbox_value(AT_DATTACK, 2, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 73);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 2); //rounded rectangle is 2, circle is 0, square is 1
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_mol_norm_explode"));
set_hitbox_value(AT_DATTACK, 3, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, explode_fx);
set_hitbox_value(AT_DATTACK, 3, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 73);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 4, HG_SHAPE, 2); //rounded rectangle is 2, circle is 0, square is 1
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 10);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_mol_norm_explode"));
set_hitbox_value(AT_DATTACK, 4, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DATTACK, 4, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DATTACK, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_SDI_MULTIPLIER, .5);
set_hitbox_value(AT_DATTACK, 4, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, explode_fx);
set_hitbox_value(AT_DATTACK, 4, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 73);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 44);
set_hitbox_value(AT_DATTACK, 5, HG_SHAPE, 2); //rounded rectangle is 2, circle is 0, square is 1
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 10);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, asset_get("sfx_mol_norm_explode"));
set_hitbox_value(AT_DATTACK, 5, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 5, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DATTACK, 5, HG_TECHABLE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_SDI_MULTIPLIER, .5);
set_hitbox_value(AT_DATTACK, 5, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(AT_DATTACK, 5, HG_VISUAL_EFFECT, explode_fx);
set_hitbox_value(AT_DATTACK, 5, HG_IGNORES_PROJECTILES, 1);