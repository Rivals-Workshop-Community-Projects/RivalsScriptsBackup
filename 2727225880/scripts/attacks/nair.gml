set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5); //bayos is 10, sbert if 4?
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_USES_CUSTOM_GRAVITY, 1); //bayos is 10, sbert if 4?


set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -0.5);
set_window_value(AT_NAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);


//main attack
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);//do frame - 1
set_window_value(AT_NAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.7);



//loopies!
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 9);//do frame - 1
//set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
//set_window_value(AT_NAIR, 4, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.7);


//held lag
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 8); //lag is this + 3 or 2 (for held or notheld)
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 4); //AAAA
set_window_value(AT_NAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.0);


//nonheld lag
set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 7); //lag is this + 3 or 2 (for held or notheld)
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 4); //AAAA
set_window_value(AT_NAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 1.0); //IT MULTIPLIES YOUR CURRENT GRAVITY


set_num_hitboxes(AT_NAIR,4);


set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);//new
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 2);//new
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);//new
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);//new
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -18);//new
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 23);//new
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 55);//new
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 45);//new
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 5);//new
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 361);//new
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);//new
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .5);//new
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);//new
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .2);//new
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);//new
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 8);//new
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);//new
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2);//new
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -18);//new
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, -27);//new
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 55);//new
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 45);//new
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 5);//new
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 361);//new
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 5);//WROKS
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 6);//new
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .5);//new
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);//new
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .2);//new
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 3);//new
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 2);//new
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);//new
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 2);//new
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -15);//new
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 25);//new
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 55);//new
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 40);//new
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 2);//new
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 361);//new
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 4);//new
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .3);//new
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 3);//new
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .2);//new
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_NAIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 3);//new
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 8);//new
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);//new
set_hitbox_value(AT_NAIR, 4, HG_SHAPE, 2);//new
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -15);//new
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, -25);//new
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 55);//new
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 40);//new
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 2);//new
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 361);//new
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 5);//WROKS
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 4);//new
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .3);//new
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 3);//new
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .2);//new
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));





