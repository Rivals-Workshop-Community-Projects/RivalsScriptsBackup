set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 12);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

var ig = 1;

//Startup animation
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 7);

ig++;

//Normal Special Charge A
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 7);

ig++;

//Normal Special Charge B
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 11);

ig++;

//Normal Special Charge C
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 15);

ig++;

//Normal Special Fully Charged Click (5)
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 19);

ig++;

//Normal Special Fully Charged Stay
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 23);

ig++;

//Normal Special Start (7)
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 24);

ig++;

//Normal Special Hit
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));

ig++;

//Normal Special End
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

ig++;

//Normal Special Start Alt (10)
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 31);

ig++;

//Normal Special Hit Alt
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_strong"));

ig++;

//Normal Special End Alt
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 34);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

ig++;

//Window when the player has not enough MP (13)
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 38);

set_num_hitboxes(AT_NSPECIAL, 3);
ig = 1;

//Sphere Hitbox (Fire)
set_hitbox_value(AT_NSPECIAL, ig, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, ig, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, ig, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, ig, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, ig, HG_DAMAGE, 10);
//set_hitbox_value(AT_NSPECIAL, ig, HG_EFFECT, 1); //Burn
set_hitbox_value(AT_NSPECIAL, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, ig, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, ig, HG_KNOCKBACK_SCALING, .7);

ig++

//Sphere Hitbox (Electric)
set_hitbox_value(AT_NSPECIAL, ig, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, ig, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, ig, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_NSPECIAL, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, ig, HG_DAMAGE, 7);
//set_hitbox_value(AT_NSPECIAL, ig, HG_EFFECT, 1); //Burn
set_hitbox_value(AT_NSPECIAL, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, ig, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, ig, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, ig, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, ig, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, ig, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, ig, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, ig, HG_WIDTH, 150);
set_hitbox_value(AT_NSPECIAL, ig, HG_HEIGHT, 150);

/**/
set_hitbox_value(AT_NSPECIAL, ig, HG_PROJECTILE_SPRITE, sprite_get("ball_explode"));
set_hitbox_value(AT_NSPECIAL, ig, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, ig, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_NSPECIAL, ig, HG_PROJECTILE_GROUND_BEHAVIOR, 1);


ig++;

//Hadoken Hitbox
set_hitbox_value(AT_NSPECIAL, ig, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, ig, HG_LIFETIME, 70);
set_hitbox_value(AT_NSPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL, ig, HG_DAMAGE, 4); //Change in init
set_hitbox_value(AT_NSPECIAL, ig, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, ig, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_NSPECIAL, ig, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, ig, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_NSPECIAL, ig, HG_PROJECTILE_ANIM_SPEED, .3);
set_hitbox_value(AT_NSPECIAL, ig, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_NSPECIAL, ig, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, ig, HG_BASE_HITPAUSE, 30);
set_hitbox_value(AT_NSPECIAL, ig, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, ig, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_NSPECIAL, ig, HG_PROJECTILE_VSPEED, 0);

//END