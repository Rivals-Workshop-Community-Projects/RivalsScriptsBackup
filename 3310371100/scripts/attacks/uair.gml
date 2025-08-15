set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_UAIR, AG_MUNO_ATTACK_MISC_ADD, "hello - this move does NOT have autocancel");

//start
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 5);//formerly 3. what
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 4);

//atk
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);

//hold
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//end
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 8);//10
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);





set_num_hitboxes(AT_UAIR, 4); 

var hb_damage = 7;//10
var hb_angle = 50;//45
var hb_bkb = 5;//4
var hb_kbg = 0.65;//0.7
var hb_bhp = 6;//ori uair value+1
var hb_hpg = 0.55;//ori uair value+0.05//0.5

//1sthalf
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 33);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -42);//-46
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 66);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, hb_angle);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//2ndhalf
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -80);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 78);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, hb_damage);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, hb_angle);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//weird backward hit
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, -22);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -68);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 48);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 54);
set_hitbox_value(AT_UAIR, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 7);//10
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, hb_bkb);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, hb_kbg);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, hb_bhp);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, hb_hpg);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//copy UP close
set_hitbox_value(AT_UAIR, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_UAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_X, -30);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_UAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 4, HG_HITBOX_GROUP, 1);





