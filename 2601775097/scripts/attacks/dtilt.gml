atk = AT_DTILT;

set_attack_value(atk, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 3);

windowNum = 1; //windup and leg woosh
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 5); //controls speed
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3); //frames amount on strip
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.1); //0.2

windowNum ++; //attack itself
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3); //starting frame. starts from 0
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.2); //0.3

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 9);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, windowNum, AG_WINDOW_HAS_WHIFFLAG, 1); //if the attack misses it's punishable

//amount of hitboxes
set_num_hitboxes(atk, 1);

hitboxNum = 1;
set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 1); // 1 = physical attack || 2 = projectile
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 2); //at which window from the above the attack is created
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 4); //hitbox duration in frames
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 30); //26
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -20);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 80); //66
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 40); //36
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 0);
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2); //1 = low priority over other moves || 10 = highest
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 7);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 75); //85
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 5); //hitstun
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, 1); //it needs to be a different value for every different move in the file