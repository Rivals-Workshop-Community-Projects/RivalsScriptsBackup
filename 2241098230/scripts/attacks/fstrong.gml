set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);

set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX,  sound_get("sfx_ryk_steam_burst"));
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED, -3.2);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 22);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

var smoke_spawn = get_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH) + get_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH) + get_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH);

set_attack_value(AT_FSTRONG, AG_MUNO_ATTACK_MISC_ADD, "Spawns smoke on frame " + string(smoke_spawn) );

set_num_hitboxes(AT_FSTRONG, 1);

set_hitbox_value(AT_FSTRONG, 1, HG_MUNO_HITBOX_MISC_ADD, "Applies smoke debuff");
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -44);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 56);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));

