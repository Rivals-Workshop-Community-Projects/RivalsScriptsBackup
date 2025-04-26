set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);

//start
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

//grabber
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);

//whiffed as hell
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);


//empty window just in case
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);


//NO ESCAPE
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, 0);

//toss em up
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_VSPEED, 0);

//end
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);

set_num_hitboxes(AT_NSPECIAL, 3); 

var grab_hbox_dmg = 2;
var grab_hbox_ang = -90;
var grab_hbox_bkb = 6;
var grab_hbox_kbg = 0.25;
var grab_hbox_bhp = 7;
var grab_hbox_hpg = 0.2;

//grab1
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 84);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 111);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 14);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, grab_hbox_dmg);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, grab_hbox_ang);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, grab_hbox_bkb);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, grab_hbox_kbg);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, grab_hbox_bhp);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, grab_hbox_hpg);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

//grab2
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 173);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, grab_hbox_dmg);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, grab_hbox_ang);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, grab_hbox_bkb);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, grab_hbox_kbg);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, grab_hbox_bhp);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, grab_hbox_hpg);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));



//thrower
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -37);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 78);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 68);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));












