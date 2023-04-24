set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_USES_ROLES, 1);
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "The portal needs to be hit in order to counter.");

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_abyss_portal_spawn"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 2, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 3, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 4, AG_MUNO_WINDOW_ROLE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 5, AG_MUNO_WINDOW_ROLE, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 6, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_GOTO, 11);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX, asset_get("sfx_abyss_seed_explode"));
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_SFX_FRAME, 14);


set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 17);

set_num_hitboxes(AT_DSPECIAL, 0);

//Charge 1
set_hitbox_value(AT_DSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Vine (No Counter)");
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 64);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 140);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2 );
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 198 );
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));

//Charge 2
set_hitbox_value(AT_DSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Vine Grab (Counter)");
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 88);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 194);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 146);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2 );
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 305 );
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_leafy_hit3"));

//Charge 1
set_hitbox_value(AT_DSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Vine Throw (Counter)");
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 128);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 64);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 64);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2 );
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 198 );
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 1 );
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_rag_plant_eat"));