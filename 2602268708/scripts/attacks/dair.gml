set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, -8);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.0);


set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DAIR,2);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 14);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 24);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 24);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .95);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DAIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, funnyhit);
set_hitbox_value(AT_DAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("FUNNY CHUCKYA MOVE"));
//credit to Codename Comlink for sourcing the MVC3 sound for funny chuckya move

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DAIR, 2, HG_HIT_PARTICLE_NUM, 1);