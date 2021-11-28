set_attack_value(43, AG_CATEGORY, 2);
set_attack_value(43, AG_NUM_WINDOWS, 9);
set_attack_value(43, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(43, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(43, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(43, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

var ig = 1;

//Startup animation
set_window_value(43, ig, AG_WINDOW_TYPE, 1);
set_window_value(43, ig, AG_WINDOW_LENGTH, 12);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAMES, 7);

ig++;

//Normal Special Charge A
set_window_value(43, ig, AG_WINDOW_TYPE, 1);
set_window_value(43, ig, AG_WINDOW_LENGTH, 12);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAME_START, 7);

ig++;

//Normal Special Charge B
set_window_value(43, ig, AG_WINDOW_TYPE, 1);
set_window_value(43, ig, AG_WINDOW_LENGTH, 12);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAME_START, 11);

ig++;

//Normal Special Charge C
set_window_value(43, ig, AG_WINDOW_TYPE, 1);
set_window_value(43, ig, AG_WINDOW_LENGTH, 12);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAME_START, 15);

ig++;

//Normal Special Fully Charged Click (5)
set_window_value(43, ig, AG_WINDOW_TYPE, 1);
set_window_value(43, ig, AG_WINDOW_LENGTH, 15);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAME_START, 19);

ig++;

//Normal Special Fully Charged Stay
set_window_value(43, ig, AG_WINDOW_TYPE, 1);
set_window_value(43, ig, AG_WINDOW_LENGTH, 1);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAME_START, 23);

ig++;

//Normal Special Start Alt (7)
set_window_value(43, ig, AG_WINDOW_TYPE, 1);
set_window_value(43, ig, AG_WINDOW_LENGTH, 2);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAME_START, 31);

ig++;

//Normal Special Hit Alt (8)
set_window_value(43, ig, AG_WINDOW_TYPE, 1);
set_window_value(43, ig, AG_WINDOW_LENGTH, 2);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(43, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(43, ig, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));

ig++;

//Normal Special End Alt (9)
set_window_value(43, ig, AG_WINDOW_TYPE, 1);
set_window_value(43, ig, AG_WINDOW_LENGTH, 15);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(43, ig, AG_WINDOW_ANIM_FRAME_START, 34);
set_window_value(43, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(43, 1);
ig = 1;

//Catooken Hitbox
set_hitbox_value(43, ig, HG_HITBOX_TYPE, 2);
set_hitbox_value(43, ig, HG_LIFETIME, 70);
set_hitbox_value(43, ig, HG_PRIORITY, 2);
set_hitbox_value(43, ig, HG_DAMAGE, 4); //Change in init
set_hitbox_value(43, ig, HG_ANGLE, 45);
set_hitbox_value(43, ig, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(43, ig, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(43, ig, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(43, ig, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(43, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(43, ig, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(43, ig, HG_BASE_HITPAUSE, 30);
set_hitbox_value(43, ig, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(43, ig, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(43, ig, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(43, ig, HG_VISUAL_EFFECT, 22);

//END