set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 10);	// dont make me explain why its like this
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

// startup
set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -2);

var nairHBActiveTime = 3;

// active 1
set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, nairHBActiveTime*2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

// active 1
set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, nairHBActiveTime*2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);

// active 1
set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, nairHBActiveTime*2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);

// endlag
set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 6);

// multihit
var nairHB_W = 96;
var nairHB_H = nairHB_W;
var nairHB_X = 0;
var nairHB_Y = -44;

// for loop for multihits
for (var i = 1; i <= 5; i++){//>
	set_hitbox_value(AT_NAIR, i, HG_HITBOX_TYPE, 1);
	set_hitbox_value(AT_NAIR, i, HG_MUNO_HITBOX_NAME, "Multihit " + string(i));
	if (i == 1){
		set_hitbox_value(AT_NAIR, i, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, i, HG_WINDOW_CREATION_FRAME, 0);
	} else if (i == 2){
		set_hitbox_value(AT_NAIR, i, HG_WINDOW, 2);
		set_hitbox_value(AT_NAIR, i, HG_WINDOW_CREATION_FRAME, 3);
	} else if (i == 3){
		set_hitbox_value(AT_NAIR, i, HG_WINDOW, 3);
		set_hitbox_value(AT_NAIR, i, HG_WINDOW_CREATION_FRAME, 0);
	} else if (i == 4){
		set_hitbox_value(AT_NAIR, i, HG_WINDOW, 3);
		set_hitbox_value(AT_NAIR, i, HG_WINDOW_CREATION_FRAME, 3);
	} else if (i == 5){
		set_hitbox_value(AT_NAIR, i, HG_WINDOW, 4);
		set_hitbox_value(AT_NAIR, i, HG_WINDOW_CREATION_FRAME, 0);
	} 
	
	set_hitbox_value(AT_NAIR, i, HG_LIFETIME, 1);
	set_hitbox_value(AT_NAIR, i, HG_HITBOX_X, nairHB_X);
	set_hitbox_value(AT_NAIR, i, HG_HITBOX_Y, nairHB_Y);
	set_hitbox_value(AT_NAIR, i, HG_WIDTH, nairHB_W);
	set_hitbox_value(AT_NAIR, i, HG_HEIGHT, nairHB_H);
	set_hitbox_value(AT_NAIR, i, HG_SHAPE, 0);
	set_hitbox_value(AT_NAIR, i, HG_PRIORITY, 1);
	set_hitbox_value(AT_NAIR, i, HG_DAMAGE, 1);
	set_hitbox_value(AT_NAIR, i, HG_ANGLE, 90);
	set_hitbox_value(AT_NAIR, i, HG_ANGLE_FLIPPER, 9);
	set_hitbox_value(AT_NAIR, i, HG_BASE_KNOCKBACK, 6);
	set_hitbox_value(AT_NAIR, i, HG_KNOCKBACK_SCALING, 0);
	set_hitbox_value(AT_NAIR, i, HG_BASE_HITPAUSE, 1);
	set_hitbox_value(AT_NAIR, i, HG_HITPAUSE_SCALING, 0);
	set_hitbox_value(AT_NAIR, i, HG_VISUAL_EFFECT, 302);
	set_hitbox_value(AT_NAIR, i, HG_VISUAL_EFFECT_X_OFFSET, 12);
	set_hitbox_value(AT_NAIR, i, HG_VISUAL_EFFECT_Y_OFFSET, 0);
	set_hitbox_value(AT_NAIR, i, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_NAIR, i, HG_HITBOX_GROUP, i);
}


set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_MUNO_HITBOX_NAME, "Finishing Hitbox");
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 4);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, nairHB_X);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, nairHB_Y);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, nairHB_W);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, nairHB_H);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NAIR, 6, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_GROUP, 6);