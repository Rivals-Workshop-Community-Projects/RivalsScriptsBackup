set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UTILT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_UTILT, AG_OFF_LEDGE, 0);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("reserve_shooter"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 7);


set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UTILT, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UTILT, 2, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_UTILT, 2, 25, 0);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, sound_get("reserve_shooter"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 2);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UTILT, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UTILT, 3, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_UTILT, 3, 25, 0);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX, sound_get("reserve_shooter"));
set_window_value(AT_UTILT, 3, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UTILT, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UTILT, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UTILT, 4, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_UTILT, 4, 25, 0);

global.catgrid[AT_UTILT,400+57] = 1
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, sound_get("reserve_shooter"));
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
set_window_value(AT_UTILT, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_UTILT, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_UTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_UTILT, 5, AG_WINDOW_HITPAUSE_FRAME, 0);
set_window_value(AT_UTILT, 5, 25, 0);



var temp_attack = AT_UTILT;
var temp_num = 1;

set_num_hitboxes(temp_attack, 3);
set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 19);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -70);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 60);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 60);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 2);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 80);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 109);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 9);


set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_TECHABLE, 3);
set_hitbox_value(temp_attack, temp_num, HG_FORCE_FLINCH, 2);



temp_num += 1;

set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 3);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 19);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -70);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 60);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 60);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 2);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 80);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 109);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 9);


set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(temp_attack, temp_num, HG_TECHABLE, 3);
set_hitbox_value(temp_attack, temp_num, HG_FORCE_FLINCH, 2);


temp_num += 1;


set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 3);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 4);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 4);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 19);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -70);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 60);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 60);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 2);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 3);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 85);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 109);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));


set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_GROUP, 2);
