set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1); //Charging
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1); //Sweeping gut punch
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, sound_get("fstrong_flyforward"));
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1); //Second hit
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1); //Endlag
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 20);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_INVINCIBILITY, 2);

set_num_hitboxes(AT_FSTRONG, 2);

set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1); //Start up grab
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW_CREATION_FRAME, 5);
if (attack_button == 0){
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 0);

}
if (attack_button == 1){
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 16);
set_hitbox_value(AT_FSTRONG, 1, HG_TECHABLE, 3);
}
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 25);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 12);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, sound_get("fstrong_grab"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_FSTRONG, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1); //Punch away
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 4);
if (attack_button == 0){
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 31);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 87);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 72);
}
if (attack_button == 1){
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 7);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 120);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 105);
}
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 35);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, .5);
if (attack_button == 0){
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 1);
}
if (attack_button == 1){
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 204);
}
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_X_OFFSET, 25);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, sound_get("fstrong_hit"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_GROUP, -1);
