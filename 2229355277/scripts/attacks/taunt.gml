set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("saffronhitbox"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

// Champion Skin
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("champ"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("saffronhitbox"));

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

// Hit One
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
// Hit Two
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
// Multihits
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX, asset_get("mfx_star"));
// Almost There..AT_TAUNT_2
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 8);
// Final Hits
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAME_START, 9);
// Endlag
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_TAUNT_2, 7, AG_WINDOW_HAS_WHIFFLAG, 1);