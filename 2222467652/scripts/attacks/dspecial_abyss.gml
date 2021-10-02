set_attack_value(AT_DTHROW, AG_CATEGORY, 2);
set_attack_value(AT_DTHROW, AG_SPRITE, sprite_get("dspecial_abyss"));
set_attack_value(AT_DTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTHROW, AG_AIR_SPRITE, sprite_get("dspecial_abyss"));
set_attack_value(AT_DTHROW, AG_HURTBOX_SPRITE, sprite_get("dspecial_abyss_hurt"));
set_attack_value(AT_DTHROW, AG_MUNO_ATTACK_NAME, "Dspecial (Abyss)");
set_attack_value(AT_DTHROW, AG_MUNO_ATTACK_MISC_ADD, "Abyss Rune L only
To input: Quartercircle(forward-down) + [SPECIAL]");

set_window_value(AT_DTHROW, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));

set_window_value(AT_DTHROW, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_ell_arc_taunt_end"));
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DTHROW, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTHROW, 3, AG_WINDOW_SFX, asset_get("sfx_blow_weak1"));
set_window_value(AT_DTHROW, 2, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DTHROW, 3, AG_WINDOW_HAS_WHIFFLAG, 10);

set_num_hitboxes(AT_DTHROW, 2);

set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DTHROW, 1, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DTHROW, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTHROW, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DTHROW, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTHROW, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DTHROW, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTHROW, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DTHROW, 1, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_DTHROW, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DTHROW, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTHROW, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DTHROW, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DTHROW, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTHROW, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DTHROW, 2, HG_ANGLE, 300);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DTHROW, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DTHROW, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DTHROW, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DTHROW, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DTHROW, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DTHROW, 2, HG_HITBOX_GROUP, 2);