set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 7);//dr mario nair-1
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_MUNO_ATTACK_MISC_ADD, "hello - this move has AUTOCANCEL at window 1 and 4. because of the way it is implemented, it might look wrong in munobird. i assure you it works. NAIR2 HAS 7 LANDING LAG. NAIR1 LANDING LAG IS 6, AND AUTOCANCEL MAKES IT 4.");

//1 - dr mario nair
//start 1
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 3);//2
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_AUTOCANCEL, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

//atk 1 //8
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);

//window 3 and 4 goes to 2nd part of the attack from attack_update.gml
//hold 1 //17
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);

//end 1
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 4, AG_AUTOCANCEL, 1);


//2 - frallan nair sledge kick
//start 2 //startup is much slower than frallan
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 9);//6
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_NAIR, 5, AG_WINDOW_SFX_FRAME, 5);

//atk 2
set_window_value(AT_NAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 6, AG_AUTOCANCEL, 2); //override

//hold 2
set_window_value(AT_NAIR, 7, AG_WINDOW_LENGTH, 10);//18//14
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 7, AG_AUTOCANCEL, 2); //override

//end 2
set_window_value(AT_NAIR, 8, AG_WINDOW_LENGTH, 10);//18//14
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 1);









set_num_hitboxes(AT_NAIR, 4); 

//early
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.35);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//late
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 17);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 12);//15
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -19);//-20
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 53);//46
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 31);//31
set_hitbox_value(AT_NAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4);//5
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//for nair2

var tmp_dmg = 3; //frallan value-2
var tmp_angle = 315; //frallan value
var tmp_bkb = 5; //3//orcane dair value
var tmp_kbg = 0.25; //orcane dair value
var tmp_bhp = 6.5; //5//orcane dair value
var tmp_hpg = 0.40; //0.2//orcane dair value

//3.1
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 29);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 52);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 58);//48
set_hitbox_value(AT_NAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, tmp_dmg);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, tmp_angle);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, tmp_bkb);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, tmp_kbg);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, tmp_bhp);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, tmp_hpg);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//3.2
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 6);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 21);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, 5);//1
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 42);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 47);//39
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, tmp_dmg);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, tmp_angle);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, tmp_bkb);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, tmp_kbg);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, tmp_bhp);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, tmp_hpg);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


