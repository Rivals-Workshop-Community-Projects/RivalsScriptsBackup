set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);

//start
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 10);//9
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get("antici_2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 2);

//antici
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 14);//11
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, sound_get("distort_1"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 10);

//atk
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

//hold
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);

//end
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);




set_num_hitboxes(AT_DAIR, 4); 


//sour-early
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 77);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 136);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("hit4"));


//sweet-early
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 89);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 98);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 51);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 101);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 280);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, sound_get("hit1"));


var hb_damage = 6;
var hb_angle = 361;
var hb_bkb = 6;
var hb_kbg = 0.4;
var hb_bhp = 6;
var hb_hpg = 0.4;

//late 1
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 29);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -19);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 52);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, hb_angle);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, sound_get("hit4"));


//late 2
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 10);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 72);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 66);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 52);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 82);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, hb_angle);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_DAIR, 4, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, sound_get("hit4"));








