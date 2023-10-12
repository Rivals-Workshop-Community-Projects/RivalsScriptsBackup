set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
//set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, -1);

//Window 1 - Frames 0 - 3 - Start Up
set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 11);

//Window 2 - Frame 4 - Up Swipe Hitbox
set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//Window 3 - Frame 5 - 6 - Endlag
set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

var attack = AT_UAIR; // Swap Taunt for attack that this is
//Hitbox Values --------------------------------------------------------------------------
//Set Number of Hitboxes
set_num_hitboxes(attack, 1); // Swap 1 for number of hitboxes

var hitbox_num = 1;
var window_for_hitbox = 1; 

//Forward Hitbox in front of him
window_for_hitbox = 2; // Set this to change the window that the hitbox comes out at and its length quickly
set_hitbox_value(attack, hitbox_num, HG_WINDOW, window_for_hitbox);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(attack, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(attack, hitbox_num, HG_LIFETIME, get_window_value(attack, window_for_hitbox, AG_WINDOW_LENGTH)); // Swap 1 for what ever window this attack is
set_hitbox_value(attack, hitbox_num, HG_HITBOX_X, 4);
set_hitbox_value(attack, hitbox_num, HG_HITBOX_Y, -104);
set_hitbox_value(attack, hitbox_num, HG_WIDTH, 128);
set_hitbox_value(attack, hitbox_num, HG_HEIGHT, 64);
set_hitbox_value(attack, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(attack, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(attack, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(attack, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(attack, hitbox_num, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(attack, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(attack, hitbox_num, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, 0);
set_hitbox_value(attack, hitbox_num, HG_VISUAL_EFFECT, hfx_medium);
set_hitbox_value(attack, hitbox_num, HG_HIT_PARTICLE_NUM, hp_medium);
set_hitbox_value(attack, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

hitbox_num++;
