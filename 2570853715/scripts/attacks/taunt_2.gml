set_attack_value(AT_TAUNT_2, AG_MUNO_ATTACK_NAME, "roomba (taunt 2)");

set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT_2, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));


set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HSPEED, 2.5);

set_num_hitboxes(AT_TAUNT_2, 4);

set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 20);
set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING, .0);
set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_TAUNT_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT_2, 2, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT_2, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_TAUNT_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT_2, 2, HG_HITBOX_X, 5);

set_hitbox_value(AT_TAUNT_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT_2, 3, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT_2, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_TAUNT_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT_2, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_TAUNT_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT_2, 3, HG_HITBOX_X, 5);

set_hitbox_value(AT_TAUNT_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT_2, 4, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT_2, 4, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_TAUNT_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT_2, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_TAUNT_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT_2, 4, HG_HITBOX_X, 5);

set_attack_value(AT_TAUNT_2, AG_MUNO_ATTACK_MISC, "Input Down + Taunt on the ground for roomba go brrr");