set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial3"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial3"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial3_hurt"));

//startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("fspec_charge"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);
//active window
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -11);
//set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HITPAUSE_FRAME, 5);
//recovery window
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 7); //setting this to 7 gives a move pratfall, give recovery moves pratfall
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);


set_num_hitboxes(AT_NSPECIAL, 1);

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2); //setting this to 2 makes it a projectile
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 125);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 125);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 8); //cry about it
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1); //you'll probably need to do some changes cause rn you can sd into
                                                        //the top blast zone real easy. thats fine he needs it
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, .65);
//set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 4);
//set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("big_hitfx")); //this sets the projectile sprite
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1); //this sets the hitbox of the projectile to be the same as the sprite
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1); //make sure you give projectiles this line, it stops the destroy effect from appearing. Replace 1 with a variable for a hit effect if you'd rather use a hit effect.
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 270);
//set_hitbox_value(AT_NSPECIAL, 1, HG_FART_WITH_REVERB, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
//set_hitbox_value(AT_NSPECIAL, 1, HG_MUNO_HITBOX_MISC_ADD, "Defense Modifier: 0.75");