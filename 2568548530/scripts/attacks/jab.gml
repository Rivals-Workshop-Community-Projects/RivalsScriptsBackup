set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 9);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

//window 1 (1. windup)
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4); //actual duration in frames
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 1); //how many sprites shown in that
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, sound_get("jab1"));

//window 2 (1. hit)
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 2); //actual duration in frames
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 1); //how many sprites shown in that
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 1); //animation frame on which the window starts

//window 3 (1. recovery)
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 12); ///actual duration in frames
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 4); //how many sprites shown in that
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 2); //animation frame on which the window starts
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 1); //1.5x longer if didn't hit someone
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_CANCEL_FRAME, 8);

//window 4 (2. windup)
set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 2); //actual duration in frames
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1); //how many sprites shown in that
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 6); //animation frame on which the window starts
set_window_value(AT_JAB, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_SFX, sound_get("jab2"));

//window 5 (2. hit)
set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 2); //actual duration in frames
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 1); //how many sprites shown in that
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 7); //animation frame on which the window starts

//window 6 (2. recovery)
set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 12);//17); ///actual duration in frames
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 4); //how many sprites shown in that
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8); //animation frame on which the window starts
set_window_value(AT_JAB, 6, AG_WINDOW_HAS_WHIFFLAG, 1); //1.5x longer if didn't hit someone
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_CANCEL_FRAME, 8);

//window 7 (3. windup)
set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 4); //actual duration in frames
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 2); //how many sprites shown in that
set_window_value(AT_JAB, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_SFX, sound_get("jab3"));
set_window_value(AT_JAB, 7, AG_WINDOW_SFX_FRAME, 1); //frame in the window that the sfx is played

//window 8 (3. hit)
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 5); //actual duration in frames
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 1); //how many sprites shown in that
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 14); //animation frame on which the window starts
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 6);
set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED_TYPE, 0);

//window 9 (3. recovery)
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 16); ///actual duration in frames
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 4); //how many sprites shown in that
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 15); //animation frame on which the window starts
set_window_value(AT_JAB, 9, AG_WINDOW_HAS_WHIFFLAG, 1); //1.5x longer if didn't hit someone

set_num_hitboxes(AT_JAB, 3);

set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2); //window in which hitboxes is created
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2); //the duration of hitbox in frames
//set_hitbox_value(AT_JAB, 1, HG_PARENT_HITBOX, 1); //inherit stuff from ???
set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1); //physical (2 projectile)
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 31); //hitbox center relative to center of player
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 63);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2); //1=circle, 2=rect, 3=rounded rect
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2); //if both attack at same time, higher priority wins
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361); //where to push enemy (0 straight hor, 90 up, 270 down)
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 3); //pure knockback, without their dmg (HG_KNOCKBACK_SCALING for relative to dmg)
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 6); //how much hitpause enemy receives (in frames???)
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_X_OFFSET, 32); //move usual center of hit effect
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1")); //sfx on hit
//set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6); //not sure... hor knock sends enemy away from me?

set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5); //window in which hitboxes is created
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3); //the duration of hitbox in frames
//set_hitbox_value(AT_JAB, 2, HG_PARENT_HITBOX, 1); //inherit stuff from ???
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1); //physical (2 projectile)
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 31); //hitbox center relative to center of player
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 80);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2); //1=circle, 2=rect, 3=rounded rect
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2); //if both attack at same time, higher priority wins
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 361); //where to push enemy (0 straight hor, 90 up, 270 down)
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4); //pure knockback, without their dmg (HG_KNOCKBACK_SCALING for relative to dmg)
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 6); //how much hitpause enemy receives (in frames???)
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_X_OFFSET, 32); //move usual center of hit effect
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2")); //sfx on hit
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8); //window in which hitboxes is created
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 6); //the duration of hitbox in frames
//set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 1); //inherit stuff from ???
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1); //physical (2 projectile)
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 31); //hitbox center relative to center of player
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -31);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 70);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 2); //1=circle, 2=rect, 3=rounded rect
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 2); //if both attack at same time, higher priority wins
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 40); //where to push enemy (0 straight hor, 90 up, 270 down)
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 8); //pure knockback, without their dmg (HG_KNOCKBACK_SCALING for relative to dmg)
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 8); //how much hitpause enemy receives (in frames???)
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_X_OFFSET, 32); //move usual center of hit effect
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1")); //sfx on hit
set_hitbox_value(AT_JAB, 3, HG_HITBOX_GROUP, 2);
