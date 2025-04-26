#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_DTILT;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_SPRITE,sprite_get("dtiltAcc"));
	atk(a,AG_NUM_WINDOWS,2);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("dtiltAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,4);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,sound_get("vc_lucario_attack01"));
	win(a,1,AG_WINDOW_SFX_FRAME,2);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,5);
	win(a,2,AG_WINDOW_ANIM_FRAMES,2);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
	
	set_num_hitboxes(a,1);
	
	hbox(a,1,HG_PARENT_HITBOX,1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,5);
	hbox(a,1,HG_HITBOX_X,18);
	hbox(a,1,HG_HITBOX_Y,-20);
	hbox(a,1,HG_WIDTH,80);
	hbox(a,1,HG_HEIGHT,40);
	hbox(a,1,HG_SHAPE,1);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,8);
	hbox(a,1,HG_ANGLE,70);
	hbox(a,1,HG_BASE_KNOCKBACK,6);
	hbox(a,1,HG_KNOCKBACK_SCALING,.5);
	hbox(a,1,HG_BASE_HITPAUSE,5);
	hbox(a,1,HG_HITPAUSE_SCALING,.35);
	hbox(a,1,HG_VISUAL_EFFECT_X_OFFSET,30);
	hbox(a,1,HG_VISUAL_EFFECT_Y_OFFSET,10);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
}
else
{
	atk(a,AG_SPRITE,sprite_get("dtilt"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("dtilt_hurt"));

	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,7);
	win(a,1,AG_WINDOW_ANIM_FRAMES,2);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium1"));
	win(a,1,AG_WINDOW_SFX_FRAME,2);

	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,2);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,2);

	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,11);
	win(a,3,AG_WINDOW_ANIM_FRAMES,4);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,3);
	win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);

	set_num_hitboxes(a,1);

	hbox(a,1,HG_HITBOX_X,48);
	hbox(a,1,HG_HITBOX_Y,-11);
	hbox(a,1,HG_WIDTH,116);
	hbox(a,1,HG_HEIGHT,22);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,2);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,6);
	hbox(a,1,HG_ANGLE,80);
	hbox(a,1,HG_BASE_KNOCKBACK,7);
	hbox(a,1,HG_KNOCKBACK_SCALING,.35);
	hbox(a,1,HG_BASE_HITPAUSE,7);
	hbox(a,1,HG_HITPAUSE_SCALING,.3);
	hbox(a,1,HG_VISUAL_EFFECT_X_OFFSET,20);
	hbox(a,1,HG_VISUAL_EFFECT,303);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
}