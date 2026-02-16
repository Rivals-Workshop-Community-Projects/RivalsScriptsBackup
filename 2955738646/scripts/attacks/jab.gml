set_attack_value(AT_JAB, AG_CATEGORY, 2);
set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 7);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

if (attack_button == 0){ //A Type
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1); //Jab 1 Start
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("swish_light"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED, 0);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1); //Jab 1 End
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_FRAME, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1); //Jab 2 Start
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("swish_medium"));
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 12);

set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1); //Jab 2 End
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 18);
//set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("swish_medium2"));
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 1);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1); //Jab 3 Start
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, sound_get("swish_heavy1"));
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 4);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1); //Jab 4 End
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 21);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED, 12);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1); //Jab 5 ending
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 32);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 32)
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("swish_heavy2"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 15);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
}

if (attack_button == 1){ //B Type
set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1); //Jab 1 Start
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("swish_light"));
set_window_value(AT_JAB, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_HSPEED, 0);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 1); //Jab 1 End
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_FRAME, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1); //Jab 2 Start
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_SFX, sound_get("swish_medium"));
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_HSPEED, 7);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 12);

set_window_value(AT_JAB, 4, AG_WINDOW_TYPE, 1); //Jab 2 End
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("swish_medium2"));
set_window_value(AT_JAB, 4, AG_WINDOW_CANCEL_TYPE, 1);

set_window_value(AT_JAB, 5, AG_WINDOW_TYPE, 1); //Jab 3 Start
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_JAB, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_SFX, sound_get("swish_heavy1"));
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 5);

set_window_value(AT_JAB, 6, AG_WINDOW_TYPE, 1); //Jab 4 End
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 21);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 27);
set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_HSPEED, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 4);
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_JAB, 7, AG_WINDOW_TYPE, 1); //Jab 5 ending
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 32);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 32)
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("swish_heavy2"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 15);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_JAB, 7, AG_WINDOW_HSPEED, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
}

set_num_hitboxes(AT_JAB, 5);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1); //First leg step
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 50);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 95);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, sound_get("jab_hit1"));
set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_JAB, 1, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1); //Second elbow hit
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 3);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -49);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 95);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 50);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 2, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -14);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, sound_get("jab_hit2"));
set_hitbox_value(AT_JAB, 2, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_JAB, 2, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(AT_JAB, 2, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1); //Third hard punch down
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 3, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 95);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 290);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_JAB, 3, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 12);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sound_get("jab_hit3"));
set_hitbox_value(AT_JAB, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_JAB, 3, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_JAB, 3, HG_SDI_MULTIPLIER, 0.001);
set_hitbox_value(AT_JAB, 3, HG_DRIFT_MULTIPLIER, 0.001);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1); //Foruth, final kick away
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 7);
set_hitbox_value(AT_JAB, 4, HG_WINDOW_CREATION_FRAME, 21);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 22);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -36);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 85);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_JAB, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_JAB, 4, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 4, HG_HITSTUN_MULTIPLIER, 0.9);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_X_OFFSET, 42);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_JAB, 4, HG_HIT_SFX, asset_get("sfx_ori_ustrong_launch"));
set_hitbox_value(AT_JAB, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 2); //Horizontal invisible hitbox for Super teleporting
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 100);
set_hitbox_value(AT_JAB, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 50);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 70);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -43);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 90);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 10);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 90);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_JAB, 5, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_HSPEED, 45);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_JAB, 5, HG_EXTENDED_PARRY_STUN, true);