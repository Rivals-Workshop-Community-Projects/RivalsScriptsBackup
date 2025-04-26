set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_NAME, "FSpecial");
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Teleport then reappear while throwing a bomb downwards. You can hold either up or down while moving forwards to increase or decrease the height you gain from moving, but you move horizontally less. You're also still vulnerable when teleporting, so no invincibility.

You can also press Parry when travelling to prematurely reappear without throwing a bomb, but you'll go into pratfall from this.

Hold the Special button after throwing a Bomb to start charging a Bomb Burst.");

//HOLD
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_plague_bomb_med_explode_2"))
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);

//Invisible
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

//reappear
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"))
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);

//swipe down
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.1);

//Recovery
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.8);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 65);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 275);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

// set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
// set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 2);
// set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, -1);
// set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
// set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
// set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, 0);
// set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 170);
// set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 170);
// set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
// set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 6);
// set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
// set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
// set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
// set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
// set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
// set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"))
// set_hitbox_value(AT_FSPECIAL, 1, HG_PROJECTILE_MASK, -1);
// set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));