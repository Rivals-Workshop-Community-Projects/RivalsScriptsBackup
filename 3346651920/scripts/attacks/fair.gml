set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);

//start
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 13);//8
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

//atk
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);

//hold
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//end
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_FAIR, 2); 

var hb_damage = 9;
var hb_angle = 60;
var hb_bkb = 7;
var hb_kbg = 0.85;
var hb_bhp = 8;
var hb_hpg = 0.6;

//yep it's N/A fair values //not anymore

//1
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 84);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -82);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 120);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 33);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, hb_angle);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//2
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 69);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -96);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 117);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, hb_angle);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));







