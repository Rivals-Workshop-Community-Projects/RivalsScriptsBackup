set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);//5);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

//charge up
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_INVINCIBILITY, 2);

//wind up
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 120);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 10);//11);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);

//start spin (kinda uneccessary? just visual)
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_INVINCIBILITY, 2);

//spin
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 9);//1
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 60);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 2);

//recovery
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 21);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);



set_num_hitboxes(AT_FSPECIAL, 4);


//final oomph
//set_hitbox_value(AT_FSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0); //12);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 10000);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 128);//84);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 128);//128);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 3);//1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 361);//90);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 10); //5-15
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);//6-9
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);//0.4-0.8
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 1.1);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
//set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_kragg_throw"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("ftilt1"));//"repair01"));//asset_get("sfx_buzzsaw_throw"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);



//set_hitbox_value(AT_FSPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);//3);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 1);//2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 10000);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 84);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 69);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 10);//361);//90);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 0);//4);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 1); //5-15
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);//6-9
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);//0.4-0.8
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 0);//1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
//set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_kragg_throw"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, sound_get("ftilt1"));//repair01"));//asset_get("sfx_buzzsaw_throw"));
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);



//set_hitbox_value(AT_FSPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 3);//3);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 10000);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 90);//45);//90);//361);//90);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE_FLIPPER, 0);//4);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 5); //5-15
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 10);//20
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);//0.4-0.8
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 0);//1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
//set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_kragg_throw"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, sound_get("ftilt1"));//"repair01"));//asset_get("sfx_buzzsaw_throw"));
set_hitbox_value(AT_FSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);


/*
//set_hitbox_value(AT_FSPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 3);//3);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 10000);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, -30);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 0);//90);//361);//90);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE_FLIPPER, 0);//4);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 5); //5-15
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 12);//6-9
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);//0.4-0.8
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 4);//1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
//set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_kragg_throw"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, sound_get("ftilt1"));//"repair01"));//asset_get("sfx_buzzsaw_throw"));
set_hitbox_value(AT_FSPECIAL, 4, HG_IGNORES_PROJECTILES, 1);
*/



