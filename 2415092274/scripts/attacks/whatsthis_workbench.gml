//workbench
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 1);
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

var teste = "grab"
if (teste=="grab"){
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("whatsthis_grab"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);


set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -27);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 61);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 40);
}
if (teste=="hold"){
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("whatsthis_grab_hold"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 6);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);


set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 49);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 39);
}
if (teste=="pummel"){
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("whatsthis_grab_pummel"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);


set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 67);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 47);
}
if (teste=="getup"){
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("whatsthis_getupattack"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);


set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 150);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 88);
}
if (teste=="ledge"){
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("whatsthis_ledgeattack"));
set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);

set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 17);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);


set_hitbox_value(AT_NSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_WIDTH, 150);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HEIGHT, 88);
}






set_num_hitboxes(AT_NSPECIAL_2, 1);

set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));



















