#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_FTILT;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_SPRITE,sprite_get("ftiltAcc"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("ftiltAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,5);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,1);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,0);
	win(a,2,AG_WINDOW_HAS_SFX,1);
	win(a,2,AG_WINDOW_SFX,sound_get("vc_lucario_attack01"));
	win(a,2,AG_WINDOW_SFX_FRAME,0);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,6);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,1);
	
	set_num_hitboxes(a,1);
	
	hbox(a,1,HG_PARENT_HITBOX,1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,3);
	hbox(a,1,HG_LIFETIME,5);
	hbox(a,1,HG_HITBOX_X,50);
	hbox(a,1,HG_HITBOX_Y,-25);
	hbox(a,1,HG_WIDTH,64);
	hbox(a,1,HG_HEIGHT,50);
	hbox(a,1,HG_SHAPE,2);
	hbox(a,1,HG_PRIORITY,4);
	hbox(a,1,HG_DAMAGE,14);
	hbox(a,1,HG_ANGLE,361);
	hbox(a,1,HG_BASE_KNOCKBACK,9);
	hbox(a,1,HG_KNOCKBACK_SCALING,.8);
	hbox(a,1,HG_BASE_HITPAUSE,8);
	hbox(a,1,HG_HITPAUSE_SCALING,.6);
	hbox(a,1,HG_VISUAL_EFFECT_X_OFFSET,16);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium3"));
	hbox(a,1,HG_EXTRA_CAMERA_SHAKE,2);
}
else
{
	atk(a,AG_SPRITE,sprite_get("ftilt"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("ftilt_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,8);
	win(a,1,AG_WINDOW_ANIM_FRAMES,2);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium1"));
	win(a,1,AG_WINDOW_SFX_FRAME,7);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,4);
	win(a,2,AG_WINDOW_ANIM_FRAMES,2);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,2);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,16);
	win(a,3,AG_WINDOW_ANIM_FRAMES,3);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,4);
	win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);
	
	set_num_hitboxes(a,2);
	
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,2);
	hbox(a,1,HG_HITBOX_X,54);
	hbox(a,1,HG_HITBOX_Y,-8);
	hbox(a,1,HG_WIDTH,80);
	hbox(a,1,HG_HEIGHT,32);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,9);
	hbox(a,1,HG_ANGLE,45);
	hbox(a,1,HG_BASE_KNOCKBACK,7);
	hbox(a,1,HG_KNOCKBACK_SCALING,.9);
	hbox(a,1,HG_BASE_HITPAUSE,10);
	hbox(a,1,HG_HITPAUSE_SCALING,.8);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
	hbox(a,1,HG_VISUAL_EFFECT,303);
	
	hbox(a,2,HG_WINDOW,2);
	hbox(a,2,HG_WINDOW_CREATION_FRAME,2);
	hbox(a,2,HG_LIFETIME,2);
	hbox(a,2,HG_HITBOX_X,64);
	hbox(a,2,HG_HITBOX_Y,-32);
	hbox(a,2,HG_WIDTH,90);
	hbox(a,2,HG_HEIGHT,90);
	hbox(a,2,HG_PRIORITY,1);
	hbox(a,2,HG_DAMAGE,9);
	hbox(a,2,HG_ANGLE,45);
	hbox(a,2,HG_BASE_KNOCKBACK,7);
	hbox(a,2,HG_KNOCKBACK_SCALING,.9);
	hbox(a,2,HG_BASE_HITPAUSE,10);
	hbox(a,2,HG_HITPAUSE_SCALING,.8);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
	hbox(a,2,HG_VISUAL_EFFECT,303);
}