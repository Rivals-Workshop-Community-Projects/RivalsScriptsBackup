set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);
set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC, "Can be charged from frame 8 onwards for a maximum of 96 frames.");

set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 8);
//Charge 0
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

//Charge 1
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//Charge 2
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

//Charge 3
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);

//Store charge
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_GOTO, 9);

//Projectile Shoot
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_NSPECIAL, 6, AG_MUNO_WINDOW_ROLE, 1);

set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_NSPECIAL, 7, AG_MUNO_WINDOW_ROLE, 2);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_NSPECIAL, 8, AG_MUNO_WINDOW_ROLE, 3);

//These card hitboxes are also used for USTRONG and DSTRONG
set_num_hitboxes(AT_NSPECIAL, 0);

set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Card Projectile");
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_DAMAGE, "1 (" + string(round(1 * 1.5)) + ")");
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_BKB, "4 (" + string(round(4 * 1.5)) + ")");
set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_MISC, "Values in parentheses are when passed through FSPECIAL 
card.");
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 24);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 32);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 16);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, fx_cardhit);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_lucy_cardhit2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("card_proj1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, sprite_get("card_proj1"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 13);
