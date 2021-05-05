set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 14);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ell_dtilt1"));

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 9);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 13);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial_start"));
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 12);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);


set_num_hitboxes(AT_DAIR, 3);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 11);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 38);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 62);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get( "sfx_blow_heavy2" ));
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 302);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 8);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 8);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, -23);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6.25);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 45);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, beakss );
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 8);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 8);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 7.66);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 45);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, beakss2 );






set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_HSPEED, -2); //These values are how fast they bounce off of enemies if the attack lands.
set_hitbox_value(AT_DAIR, 1, HG_PROJECTILE_VSPEED, -5); 


set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_HSPEED, -6); //These values are how fast they bounce off of enemies if the attack lands.
set_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_VSPEED, -7); 


set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_HSPEED, -6); //These values are how fast they bounce off of enemies if the attack lands.
set_hitbox_value(AT_DAIR, 2, HG_PROJECTILE_VSPEED, -7); 