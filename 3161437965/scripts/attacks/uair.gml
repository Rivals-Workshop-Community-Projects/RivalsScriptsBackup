set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_rag_axe_swing"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,2);

// Hello Ambinheimer, this attack script has been invaded by a rogue entity by the request of Soka. Literally just ignore the fact that I goofed with something and continue with business as per usual

// Personally I still think Uair should be a 2 hit, but soka said make it 1 so idk, convince him otherwise or something i guess

// set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
// set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
// set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2); 
// set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 30);
// set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -48);
// set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 40);
// set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 42);
// set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
// set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 3);
// set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
// set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 100); // Same as Mollo
// set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 3); // Slightly lower than Mollow
// set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0); // Same as Mollo
// set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 3) // Same as Mollo
// set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .5); // Same as Mollo
// set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
// set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1); // Changed for multihit

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 76);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7); // Same as Mollo
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .8); // Same as Mollo (Rogue entity note: make it .9, same as pre-patch mollo, trust me they need it, I know from the number of mollo mains who still complain uair doesn't kill)
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6); // A bit higher than Mollo so can be hitfalled easier
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .7); // Slightly lower than mollo
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, fx_strike_up);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -20);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -39);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 2); // Changed for multihit
