set_attack_value(AT_DTILT, AG_CATEGORY, 2);
set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dash"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DTILT, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DTILT, AG_OFF_LEDGE, 1);
set_attack_value(AT_DTILT, AG_AIR_SPRITE, sprite_get("roll"));
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("roll"));
//set_attack_value(AT_DTILT, AG_USES_CUSTOM_GRAVITY, 1);



//startup
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 0);

//charging window. The length of this window = the maximum charge time.
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 80); 
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 45);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_SFX, sound_get("revup"));

//charge release window. This window should be at least 2 frames long.
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 47);

//active
set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, charge_timer*4+20);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 49);
set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DTILT, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.001);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX, sound_get("revout"));

//recovery
set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 50);
//set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_DTILT, 5, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_DTILT, 5, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH,70);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_DTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, charge_timer/10);//old 6
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 45); // old 65
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, charge_timer/10); // old 6
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 8);
//set_hitbox_value(AT_DTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("hardhit"));