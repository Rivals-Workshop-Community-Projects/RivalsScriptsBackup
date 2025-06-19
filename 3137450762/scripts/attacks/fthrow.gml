//La Reina fspecial.gml
var edit_attack = AT_FTHROW;
var e_window = 3;

set_attack_value(edit_attack, AG_CATEGORY, 2);
set_attack_value(edit_attack, AG_SPRITE, sprite_get("fthrow"));
set_attack_value(edit_attack, AG_NUM_WINDOWS, 3);
set_attack_value(edit_attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(edit_attack, AG_LANDING_LAG, 4);
set_attack_value(edit_attack, AG_HURTBOX_SPRITE, sprite_get("fthrow_hurt"));

//Anticipation
e_window = 1;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 9);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 0);

//Attack
e_window = 2;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 9001);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 5);

// Endlag
e_window = 3;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 11);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 6);


set_num_hitboxes(edit_attack, 2);
var e_hitbox = 1;

// Hitbox
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_SHAPE, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW, 3);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_LIFETIME, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_X, 6);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_Y, -24);
set_hitbox_value(edit_attack, e_hitbox, HG_WIDTH, 100);
set_hitbox_value(edit_attack, e_hitbox, HG_HEIGHT, 50);
set_hitbox_value(edit_attack, e_hitbox, HG_PRIORITY, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_GROUP, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_DAMAGE, 6);
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE, 80);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(edit_attack, e_hitbox, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_HITPAUSE, 17);
set_hitbox_value(edit_attack, e_hitbox, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_X_OFFSET, 4);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(edit_attack, e_hitbox, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(edit_attack, e_hitbox, HG_THROWS_ROCK, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_HIT_LOCKOUT, 10);

// Rock Throw

// Hitbox
e_hitbox++;
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_SHAPE, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW, 3);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_LIFETIME, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_X, 6);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_Y, -24);
set_hitbox_value(edit_attack, e_hitbox, HG_WIDTH, 100);
set_hitbox_value(edit_attack, e_hitbox, HG_HEIGHT, 50);
set_hitbox_value(edit_attack, e_hitbox, HG_PRIORITY, 0);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_GROUP, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_DAMAGE, 6);
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE, 80);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(edit_attack, e_hitbox, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_HITPAUSE, 16);
set_hitbox_value(edit_attack, e_hitbox, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_X_OFFSET, 4);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, -8);
set_hitbox_value(edit_attack, e_hitbox, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(edit_attack, e_hitbox, HG_THROWS_ROCK, 1);
