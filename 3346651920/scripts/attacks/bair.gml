set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_BAIR, AG_STRONG_CHARGE_WINDOW, 1);

//start
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

//start
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);

//atk
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);

//end
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 2); 

//early
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -34);//-38
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -79);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 125);//134
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 120);//361
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7);//6
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.75);//0.5
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//late
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -34);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -75);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 53);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 110);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 120);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);//5
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, 0.5);//0.3
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));





