set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);


//usps1 usps2 usps3 uspan   uspab   uspat usphl usprec uspend
//0-1:2 2-2:1 3-3:1 4-4:1   5-5:1   5-6:2 7-8:2 9-13:5 14-14:1

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);

//ready
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 10);//3
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 0);

//buffer
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);

//attack
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 14);//17
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 25);//35
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 10);//12
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);


set_num_hitboxes(AT_USPECIAL, 5);

//f 81 -27 78 43
//b 39 -26 65 56 hp

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 13);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);//0.4
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("hit1"));

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 13);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 13);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 13);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 1);

//linger line slash
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 5, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, sound_get("hit1"));








