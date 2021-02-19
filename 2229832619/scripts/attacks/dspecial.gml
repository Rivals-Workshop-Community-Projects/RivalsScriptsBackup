set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 5);//14

//1     2     3     4     5       6       7     8       9       10      11      12      13      14
//dsprd dspst dspac dspr1 dspr2 | buffr | dsp2d dsp2st1 dsp2st2 dsp2ant dsp2at1 dsp2at2 dsp2hol dsp2rec
//0-0:1 1-2:2 3-4:2 5-5:1 6-7:2 | 8-8:1 | 9-9:1 10-10:1 11-11:1 12-12:1 13-13:1 14-14:1 15-15:1 16-17:2

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 8);//10
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 13);//18
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);


//buffer
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
//

//1     2     3     4     5       6       7     8       9       10      11      12      13      14
//dsprd dspst dspac dspr1 dspr2 | buffr | dsp2d dsp2st1 dsp2st2 dsp2ant dsp2at1 dsp2at2 dsp2hol dsp2rec
//0-0:1 1-2:2 3-4:2 5-5:1 6-7:2 | 8-8:1 | 9-9:1 10-10:1 11-11:1 12-12:1 13-13:1 14-14:1 15-15:1 16-17:2

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 12, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 13, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSPECIAL, 14, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 2);





set_num_hitboxes(AT_DSPECIAL, 32);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 24);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 57);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -49);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 44);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 25);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 12);//10
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.15);//0.85//1
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 17);//14
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.1);//1.5
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 157);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("hit1"));

for (var i = 2; i <= 32; i ++;){
	var tmpx = 57 + (24 * (i-1))
	var tmpy = -49 - (24 * (i-1))
	set_hitbox_value(AT_DSPECIAL, i, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_DSPECIAL, i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_DSPECIAL, i, HG_WINDOW, 11);
	set_hitbox_value(AT_DSPECIAL, i, HG_LIFETIME, 24);
	set_hitbox_value(AT_DSPECIAL, i, HG_HITBOX_X, tmpx);
	set_hitbox_value(AT_DSPECIAL, i, HG_HITBOX_Y, tmpy);
	set_hitbox_value(AT_DSPECIAL, i, HG_HITBOX_GROUP, 1);
}









