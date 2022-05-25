set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSPECIAL, 13);

for (var hnum = 1; hnum < 14; hnum++) {
    set_hitbox_value(AT_DSPECIAL, hnum, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DSPECIAL, hnum, HG_WINDOW, 0);
    set_hitbox_value(AT_DSPECIAL, hnum, HG_LIFETIME, 3);
    set_hitbox_value(AT_DSPECIAL, hnum, HG_HITBOX_Y, -30);
    set_hitbox_value(AT_DSPECIAL, hnum, HG_WIDTH, 40);
    set_hitbox_value(AT_DSPECIAL, hnum, HG_HEIGHT, 40);
    set_hitbox_value(AT_DSPECIAL, hnum, HG_PRIORITY, 1);
    set_hitbox_value(AT_DSPECIAL, hnum, HG_DAMAGE, 11);
    set_hitbox_value(AT_DSPECIAL, hnum, HG_ANGLE, 70);
    set_hitbox_value(AT_DSPECIAL, hnum, HG_BASE_KNOCKBACK, 9); // 10
    set_hitbox_value(AT_DSPECIAL, hnum, HG_KNOCKBACK_SCALING, 1);
    set_hitbox_value(AT_DSPECIAL, hnum, HG_BASE_HITPAUSE, 16); // 3
    set_hitbox_value(AT_DSPECIAL, hnum, HG_HITPAUSE_SCALING, .5); // 3
    set_hitbox_value(AT_DSPECIAL, hnum, HG_VISUAL_EFFECT, hitfx3);
    set_hitbox_value(AT_DSPECIAL, hnum, HG_HIT_SFX, sound_get("muno_thing_idk"));
    set_hitbox_value(AT_DSPECIAL, hnum, HG_ANGLE_FLIPPER, 6);
    set_hitbox_value(AT_DSPECIAL, hnum, HG_EXTENDED_PARRY_STUN, 1);
}

for (var hnum = -6; hnum < 7; hnum++) {
	//set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_HITBOX_X, spr_dir*round(slash_x - x + hnum*((420*cos(degtorad(bubble_angle)))/12)));
	//set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_HITBOX_Y, round(slash_y - y + hnum*((-420*sin(degtorad(bubble_angle)))/12)));
	set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_PRIORITY, 10 - abs(hnum));
	set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_DAMAGE, 14 - abs(hnum));
	set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_KNOCKBACK_SCALING, 1.2 - abs(hnum)/12);
	set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_EXTRA_CAMERA_SHAKE, 15 - abs(hnum));
	set_hitbox_value(AT_DSPECIAL, hnum + 7, HG_BASE_HITPAUSE, 15 - abs(hnum));
}
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_DSPECIAL, 11, HG_WIDTH, 20);
set_hitbox_value(AT_DSPECIAL, 11, HG_HEIGHT, 20);