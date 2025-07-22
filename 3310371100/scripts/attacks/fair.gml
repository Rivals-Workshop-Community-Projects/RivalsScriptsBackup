set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);//8//16//dr mario fair - 1
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FAIR, AG_MUNO_ATTACK_MISC_ADD, "hello - this move has AUTOCANCEL at window 5. because of the way it is implemented, it might look wrong in munobird. i assure you it works. FAIR LANDING LAG IS 9, AND AUTOCANCEL MAKES IT 4.");

//start
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14);//13//15
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 13);//12

//anticipation
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy2"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HITPAUSE_FRAME, 3);

//atk
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);

//hold
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 18);//18
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//end
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 16);//16
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 5, AG_AUTOCANCEL, 1);
set_window_value(AT_FAIR, 5, AG_IASA_THIS_WINDOW, 1);
set_window_value(AT_FAIR, 5, AG_MUNO_WINDOW_EXCLUDE, 1);



set_num_hitboxes(AT_FAIR, 5); 

var hb_damage = 13;//10
var hb_angle = 50;
var hb_bkb = 6;
var hb_kbg = 1.0;
var hb_bhp = 8;
var hb_hpg = 0.5;

//cleanhit
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -74);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, hb_angle);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//cleanhit
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 72);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 57);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, hb_angle);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//cleanhit 2ndhalf
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 52);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -14);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 68);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 66);
set_hitbox_value(AT_FAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, hb_angle);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


//late
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 40);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, 16);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 53);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 26);
set_hitbox_value(AT_FAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 4, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 4, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));


//weird early hitbox
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, -13);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -82);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 25);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 35);
set_hitbox_value(AT_FAIR, 5, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, 0.65);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));









