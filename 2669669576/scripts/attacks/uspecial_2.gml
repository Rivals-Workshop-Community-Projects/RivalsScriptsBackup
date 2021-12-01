set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial_hex"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial_hex"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("teleport_start"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_SFX, sound_get("teleport_end"));
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_SFX_FRAME, 3);


//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
var attack = AT_USPECIAL_2;
set_num_hitboxes(attack, 1); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

//Set Hitbox Values - This is the basic block of a functional hitbox
window_for_hitbox = 5; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, 3); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 120);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 90);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 9);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 53.9);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(attack, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 304);
set_hitbox_value(attack, hitbox_num, HG_EXTRA_CAMERA_SHAKE, 2);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_poison_hit_strong"));

hitbox_num++;