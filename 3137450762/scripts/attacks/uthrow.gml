//La Reina fspecial.gml
var edit_attack = AT_UTHROW;
var e_window = 3;

set_attack_value(edit_attack, AG_CATEGORY, 2);
set_attack_value(edit_attack, AG_SPRITE, sprite_get("uthrow"));
set_attack_value(edit_attack, AG_NUM_WINDOWS, 3);
set_attack_value(edit_attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(edit_attack, AG_LANDING_LAG, 4);
set_attack_value(edit_attack, AG_HURTBOX_SPRITE, sprite_get("uthrow_hurt"));

//Anticipation
e_window = 1;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 6);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 0);

//Attack
e_window = 2;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 14);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 3);

// Endlag
e_window = 3;
set_window_value(edit_attack, e_window, AG_WINDOW_TYPE, 1);
set_window_value(edit_attack, e_window, AG_WINDOW_LENGTH, 9);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(edit_attack, e_window, AG_WINDOW_ANIM_FRAME_START, 9);


set_num_hitboxes(edit_attack, 1);
var e_hitbox = 1;

// Double knee
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_TYPE, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_SHAPE, 0);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW, 3);
set_hitbox_value(edit_attack, e_hitbox, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_LIFETIME, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_X, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_Y, -41);
set_hitbox_value(edit_attack, e_hitbox, HG_WIDTH, 110);
set_hitbox_value(edit_attack, e_hitbox, HG_HEIGHT, 64);
set_hitbox_value(edit_attack, e_hitbox, HG_PRIORITY, 1);
set_hitbox_value(edit_attack, e_hitbox, HG_HITBOX_GROUP, 2);
set_hitbox_value(edit_attack, e_hitbox, HG_DAMAGE, 6);
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE, 80);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(edit_attack, e_hitbox, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(edit_attack, e_hitbox, HG_BASE_HITPAUSE, 20);
set_hitbox_value(edit_attack, e_hitbox, HG_VISUAL_EFFECT_Y_OFFSET, -26);
set_hitbox_value(edit_attack, e_hitbox, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(edit_attack, e_hitbox, HG_ANGLE_FLIPPER, 0);
