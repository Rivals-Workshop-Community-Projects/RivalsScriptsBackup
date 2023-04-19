//Reload
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("reload"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("reload_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 21);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("glucky_gun4"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("glucky_click"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("mollo_gunload"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 0);


//Base Taunt
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_charge"));

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_ori_uptilt_single"));

set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_TAUNT_2,1);

set_hitbox_value(AT_TAUNT_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 64);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_TAUNT_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, -1);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 0);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT, sweet_hfx);
set_hitbox_value(AT_TAUNT_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, sound_get("glucky_waterhit"));

//Gun Taunt
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("taunt_gun"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("taunt_gun_hurt"));


set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 20);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX_FRAME, 26);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_SFX, asset_get("mfx_star"));

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 22);

set_window_value(AT_EXTRA_2, 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 5, AG_WINDOW_ANIM_FRAME_START, 23);