set_attack_value(AT_FINAL, AG_CATEGORY, 2);
set_attack_value(AT_FINAL, AG_SPRITE, sprite_get("final"));
set_attack_value(AT_FINAL, AG_HURTBOX_SPRITE, sprite_get("final_hurtb"));
set_attack_value(AT_FINAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FINAL, AG_OFF_LEDGE, 0);

var frict = 0.1;

set_window_value(AT_FINAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FINAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_FINAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FINAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_FINAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, frict);
set_window_value(AT_FINAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FINAL, 1, AG_WINDOW_SFX, sound_get("SE024"));
set_window_value(AT_FINAL, 1, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_FINAL, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FINAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FINAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FINAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_FINAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, frict);
set_window_value(AT_FINAL, 2, AG_WINDOW_INVINCIBILITY, 1);

var spin_len = 60;
set_window_value(AT_FINAL, 3, AG_WINDOW_LENGTH, spin_len);
set_window_value(AT_FINAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FINAL, 3, AG_WINDOW_ANIM_FRAMES, 16);
set_window_value(AT_FINAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_FINAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, frict);
set_window_value(AT_FINAL, 3, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_FINAL, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FINAL, 4, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_FINAL, 4, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_FINAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FINAL, 5, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_FINAL, 5, AG_WINDOW_ANIM_FRAMES, 2);


var spin_hb_amt = 10; //if you change this, remember to tweak things in user_event1.gml
var spin_each_hb_dur_real = spin_len/spin_hb_amt;
var spin_each_hb_dur = floor(spin_each_hb_dur_real);

set_hitbox_value(AT_FINAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FINAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FINAL, 1, HG_HITBOX_Y, -290);
set_hitbox_value(AT_FINAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FINAL, 1, HG_LIFETIME, spin_each_hb_dur);
set_hitbox_value(AT_FINAL, 1, HG_WIDTH, 120);
set_hitbox_value(AT_FINAL, 1, HG_HEIGHT, 580);
set_hitbox_value(AT_FINAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FINAL, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_FINAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FINAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FINAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FINAL, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_FINAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FINAL, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_FINAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FINAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FINAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FINAL, 1, HG_VISUAL_EFFECT, 111);
set_hitbox_value(AT_FINAL, 1, HG_HIT_SFX, sound_get("ARSlash"));

for (var i = 2; i <= spin_hb_amt-2; i ++;){
	var spin_each_hb_dur_i = floor(spin_each_hb_dur_real*i);
	set_hitbox_value(AT_FINAL, i, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_FINAL, i, HG_WINDOW, 3);
	set_hitbox_value(AT_FINAL, i, HG_WINDOW_CREATION_FRAME, spin_each_hb_dur_i);
	set_hitbox_value(AT_FINAL, i, HG_LIFETIME, spin_each_hb_dur);
	set_hitbox_value(AT_FINAL, i, HG_HITBOX_X, 0);
	set_hitbox_value(AT_FINAL, i, HG_HITBOX_Y, -290);
	set_hitbox_value(AT_FINAL, i, HG_HITBOX_GROUP, -1);
}


set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_HITBOX_X, 0);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_HITBOX_Y, -290);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_WINDOW, 3);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_WINDOW_CREATION_FRAME, floor(spin_each_hb_dur_real*(spin_hb_amt-1)));
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_LIFETIME, spin_each_hb_dur);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_WIDTH, 150);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_HEIGHT, 580);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_SHAPE, 2);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_PRIORITY, 6);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_DAMAGE, 7);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_ANGLE, 45);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_KNOCKBACK_SCALING, 1.45);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FINAL, spin_hb_amt-1, HG_HIT_SFX, sound_get("fs_critical"));

set_num_hitboxes(AT_FINAL, spin_hb_amt);