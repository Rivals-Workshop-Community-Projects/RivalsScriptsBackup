set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

//startup window
set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 7);//7
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);

//active window
set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 5);//12
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//recovery window
set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 12);//24
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_DTILT,2);

//Floor
set_hitbox_value(AT_DTILT, 1, HG_PARENT_HITBOX, 1); //use this line to make follow up hitboxes share values with this one, remove it if it should be different
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 15*2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -6*2);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 38*2);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 13*2);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 7); 
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .5); 
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);;
set_hitbox_value(AT_DTILT, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DTILT, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Arm
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 14*2);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -12*2);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 18*2);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 25*2);
set_hitbox_value(AT_DTILT, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 6); 
set_hitbox_value(AT_DTILT, 2, HG_KNOCKBACK_SCALING, .5); 
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);;
set_hitbox_value(AT_DTILT, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DTILT, 2, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));