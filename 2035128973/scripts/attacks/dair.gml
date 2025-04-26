#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_DAIR;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_CATEGORY,1);
	atk(a,AG_SPRITE,sprite_get("dairAcc"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_HAS_LANDING_LAG,1);
	atk(a,AG_LANDING_LAG,0);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("dairAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,4);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_VSPEED_TYPE,1);
	win(a,1,AG_WINDOW_VSPEED,0);
	win(a,1,AG_WINDOW_CUSTOM_GRAVITY,1.0);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,sound_get("vc_lucario_attack01"));
	win(a,1,AG_WINDOW_SFX_FRAME,1);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,6);
	win(a,2,AG_WINDOW_VSPEED_TYPE,1);
	win(a,2,AG_WINDOW_VSPEED,0);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
	win(a,2,AG_WINDOW_HAS_SFX,1);
	win(a,2,AG_WINDOW_SFX,sound_get("vc_lucario_attack04"));
	win(a,2,AG_WINDOW_SFX_FRAME,5);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,6);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,2);
	win(a,3,AG_WINDOW_VSPEED_TYPE,2);
	win(a,3,AG_WINDOW_VSPEED,0);
	
	set_num_hitboxes(a,2);
	
	hbox(a,1,HG_PARENT_HITBOX,1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,6);
	hbox(a,1,HG_HITBOX_Y,-13);
	hbox(a,1,HG_WIDTH,50);
	hbox(a,1,HG_HEIGHT,75);
	hbox(a,1,HG_SHAPE,2);
	hbox(a,1,HG_PRIORITY,2);
	hbox(a,1,HG_DAMAGE,8);
	hbox(a,1,HG_ANGLE,270);
	hbox(a,1,HG_BASE_KNOCKBACK,8);
	hbox(a,1,HG_KNOCKBACK_SCALING,1.0);
	hbox(a,1,HG_BASE_HITPAUSE,4);
	hbox(a,1,HG_HITPAUSE_SCALING,1.0);
	hbox(a,1,HG_VISUAL_EFFECT,303);
	hbox(a,1,HG_VISUAL_EFFECT_Y_OFFSET,20);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
	hbox(a,1,HG_ANGLE_FLIPPER,6);
	hbox(a,1,HG_HITBOX_GROUP,-1);
	
	hbox(a,2,HG_PARENT_HITBOX,2);
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,3);
	hbox(a,2,HG_LIFETIME,6);
	hbox(a,2,HG_HITBOX_Y,-13);
	hbox(a,2,HG_WIDTH,50);
	hbox(a,2,HG_HEIGHT,75);
	hbox(a,2,HG_SHAPE,2);
	hbox(a,2,HG_PRIORITY,2);
	hbox(a,2,HG_DAMAGE,8);
	hbox(a,2,HG_ANGLE,270);
	hbox(a,2,HG_BASE_KNOCKBACK,8);
	hbox(a,2,HG_KNOCKBACK_SCALING,1.0);
	hbox(a,2,HG_BASE_HITPAUSE,6);
	hbox(a,2,HG_HITPAUSE_SCALING,1.0);
	hbox(a,2,HG_VISUAL_EFFECT,303);
	hbox(a,2,HG_VISUAL_EFFECT_Y_OFFSET,20);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
	hbox(a,2,HG_ANGLE_FLIPPER,6);
	hbox(a,2,HG_HITBOX_GROUP,-1);
}
else
{
	atk(a,AG_CATEGORY,1);
	atk(a,AG_SPRITE,sprite_get("dair"));
	atk(a,AG_NUM_WINDOWS,4);
	atk(a,AG_HAS_LANDING_LAG,1);
	atk(a,AG_LANDING_LAG,6);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("dair_hurt"));

	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,12);
	win(a,1,AG_WINDOW_ANIM_FRAMES,3);
	win(a,1,AG_WINDOW_VSPEED,-1);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium2"));
	win(a,1,AG_WINDOW_SFX_FRAME,7);

	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,2);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,3);

	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,6);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,4);

	win(a,4,AG_WINDOW_TYPE,1);
	win(a,4,AG_WINDOW_LENGTH,14);
	win(a,4,AG_WINDOW_ANIM_FRAMES,2);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,5);
	win(a,4,AG_WINDOW_HAS_WHIFFLAG,1);

	set_num_hitboxes(a,3);

	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,2);
	hbox(a,1,HG_HITBOX_X,10);
	hbox(a,1,HG_HITBOX_Y,46);
	hbox(a,1,HG_WIDTH,30);
	hbox(a,1,HG_HEIGHT,40);
	hbox(a,1,HG_SHAPE,2);
	hbox(a,1,HG_PRIORITY,2);
	hbox(a,1,HG_DAMAGE,10);
	hbox(a,1,HG_ANGLE,270);
	hbox(a,1,HG_BASE_KNOCKBACK,6);
	hbox(a,1,HG_KNOCKBACK_SCALING,0.8);
	hbox(a,1,HG_BASE_HITPAUSE,8);
	hbox(a,1,HG_HITPAUSE_SCALING,0.5);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_heavy1"));
	hbox(a,1,HG_VISUAL_EFFECT,304);

	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,2);
	hbox(a,2,HG_LIFETIME,2);
	hbox(a,2,HG_HITBOX_X,-10);
	hbox(a,2,HG_HITBOX_Y,10);
	hbox(a,2,HG_WIDTH,50);
	hbox(a,2,HG_HEIGHT,80);
	hbox(a,2,HG_PRIORITY,1);
	hbox(a,2,HG_DAMAGE,7);
	hbox(a,2,HG_ANGLE,60);
	hbox(a,2,HG_BASE_KNOCKBACK,4);
	hbox(a,2,HG_KNOCKBACK_SCALING,0.4);
	hbox(a,2,HG_BASE_HITPAUSE,4);
	hbox(a,2,HG_HITPAUSE_SCALING,0.4);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
	hbox(a,2,HG_ANGLE_FLIPPER,6);

	hbox(a,3,HG_HITBOX_TYPE,1);
	hbox(a,3,HG_WINDOW,3);
	hbox(a,3,HG_LIFETIME,6);
	hbox(a,3,HG_HITBOX_X,0);
	hbox(a,3,HG_HITBOX_Y,20);
	hbox(a,3,HG_WIDTH,50);
	hbox(a,3,HG_HEIGHT,80);
	hbox(a,3,HG_PRIORITY,1);
	hbox(a,3,HG_DAMAGE,7);
	hbox(a,3,HG_ANGLE,60);
	hbox(a,3,HG_BASE_KNOCKBACK,4);
	hbox(a,3,HG_KNOCKBACK_SCALING,0.4);
	hbox(a,3,HG_BASE_HITPAUSE,4);
	hbox(a,3,HG_HITPAUSE_SCALING,0.4);
	hbox(a,3,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
	hbox(a,3,HG_ANGLE_FLIPPER,6);
}