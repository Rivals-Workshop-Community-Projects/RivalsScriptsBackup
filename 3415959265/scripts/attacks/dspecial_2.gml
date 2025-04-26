atk = AT_DSPECIAL_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial_2"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("dspecial_2_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_2_hurt"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_2_air_hurt"));
set_attack_value(atk, AG_MUNO_ATTACK_EXCLUDE, true);

window_num = 1; //startup
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);


window_num ++; //startup 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 5);
set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_saya_fspcdash"));



window_num ++; //Attack invis
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
//set_window_value(atk, window_num, AG_WINDOW_SFX, sound_get("sfx_saya_transform"));
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 14);


window_num ++; //fail
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);


window_num ++; //grab success windup 5
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);


window_num ++; //grab attack
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(atk, window_num, AG_WINDOW_GOTO, 8);

window_num ++; //attack loop
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(atk, window_num, AG_WINDOW_INVINCIBILITY, 1);

window_num ++; //grab end
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(atk, window_num, AG_WINDOW_GOTO, 31);




set_attack_value(atk, AG_NUM_WINDOWS, window_num);


//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1; //grab
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, hitbox_num);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 3);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 8);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -33);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 52);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 46);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_grab);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


hitbox_num++; //TBHIT1
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 1);
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 41);
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -67);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 68);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 142);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_saya_explosion1"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_tb_1);

hitbox_num++; //TBHIT2
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 1);
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 41);
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -67);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 68);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 142);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_saya_explosion1"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_tb_2);

hitbox_num++; //TBHIT3
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 1);
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 41);
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -67);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 68);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 142);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_saya_explosion1"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_tb_3);

hitbox_num++; //TBHIT4
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 1);
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 41);
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -67);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 68);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 142);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1.4);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_saya_explosion1"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_tb_4);



hitbox_num++; //TB HIT FINAL
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 5);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 97);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 146);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 40);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_saya_explosion2"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_big);


hitbox_num++; //TBHIT weak
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 1);
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 41);
//set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -67);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 68);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 142);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_saya_explosion1"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, hfx_tb_1);




set_num_hitboxes(atk, hitbox_num);