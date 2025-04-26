#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_USTRONG;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_SPRITE,sprite_get("ustrongAcc"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_STRONG_CHARGE_WINDOW,1);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("ustrongAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,4);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,3);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
	win(a,2,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,2,AG_WINDOW_HAS_SFX,1);
	win(a,2,AG_WINDOW_SFX,sound_get("vc_lucario_attack05"));
	win(a,2,AG_WINDOW_SFX_FRAME,2);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,12);
	win(a,3,AG_WINDOW_ANIM_FRAMES,3);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,3);
	
	set_num_hitboxes(a,1);
	
	hbox(a,1,HG_PARENT_HITBOX,1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,3);
	hbox(a,1,HG_LIFETIME,3);
	hbox(a,1,HG_HITBOX_X,5);
	hbox(a,1,HG_HITBOX_Y,-110);
	hbox(a,1,HG_WIDTH,60);
	hbox(a,1,HG_HEIGHT,220);
	hbox(a,1,HG_SHAPE,2);
	hbox(a,1,HG_PRIORITY,2);
	hbox(a,1,HG_DAMAGE,7);
	hbox(a,1,HG_ANGLE,90);
	hbox(a,1,HG_BASE_KNOCKBACK,8);
	hbox(a,1,HG_KNOCKBACK_SCALING,1.2);
	hbox(a,1,HG_BASE_HITPAUSE,8);
	hbox(a,1,HG_HITPAUSE_SCALING,.5);
	hbox(a,1,HG_VISUAL_EFFECT_Y_OFFSET,-10);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_heavy1"));
}
else
{
	atk(a,AG_SPRITE,sprite_get("ustrong"));
	atk(a,AG_HURTBOX_SPRITE,sprite_get("ustrong_hurt"));
	atk(a,AG_NUM_WINDOWS,4);
	atk(a,AG_STRONG_CHARGE_WINDOW,1);
	
	win(a,1,AG_WINDOW_LENGTH,12);
	win(a,1,AG_WINDOW_ANIM_FRAMES,3);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_ori_energyhit_weak"));
	win(a,1,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,1,AG_WINDOW_CUSTOM_GROUND_FRICTION,.1);
	
	win(a,2,AG_WINDOW_LENGTH,4);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,3);
	win(a,2,AG_WINDOW_HAS_SFX,1);
	win(a,2,AG_WINDOW_SFX,asset_get("sfx_ori_charged_flame_release"));
	
	win(a,3,AG_WINDOW_LENGTH,4);
	win(a,3,AG_WINDOW_ANIM_FRAMES,2);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,4);
	
	win(a,4,AG_WINDOW_LENGTH,20);
	win(a,4,AG_WINDOW_ANIM_FRAMES,4);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,6);
	win(a,4,AG_WINDOW_HAS_WHIFFLAG,1);
	
	set_num_hitboxes(a,3);
	
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,3);
	hbox(a,1,HG_LIFETIME,2);
	hbox(a,1,HG_HITBOX_X,6);
	hbox(a,1,HG_HITBOX_Y,-43);
	hbox(a,1,HG_WIDTH,50);
	hbox(a,1,HG_HEIGHT,86);
	hbox(a,1,HG_SHAPE,1);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,0);
	hbox(a,1,HG_ANGLE,90);
	hbox(a,1,HG_BASE_KNOCKBACK,10);
	hbox(a,1,HG_BASE_HITPAUSE,12);
	hbox(a,1,HG_VISUAL_EFFECT,aura_effect);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_ori_energyhit_weak"));
	
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,3);
	hbox(a,2,HG_LIFETIME,2);
	hbox(a,2,HG_HITBOX_X,3);
	hbox(a,2,HG_HITBOX_Y,-110);
	hbox(a,2,HG_WIDTH,100);
	hbox(a,2,HG_HEIGHT,52);
	hbox(a,2,HG_PRIORITY,2);
	hbox(a,2,HG_DAMAGE,0);
	hbox(a,2,HG_ANGLE,90);
	hbox(a,2,HG_BASE_KNOCKBACK,10);
	hbox(a,2,HG_BASE_HITPAUSE,12);
	hbox(a,2,HG_VISUAL_EFFECT,aura_effect);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_ori_energyhit_weak"));
	
	hbox(a,3,HG_HITBOX_GROUP,-1);
	hbox(a,3,HG_HITBOX_TYPE,1);
	hbox(a,3,HG_WINDOW,3);
	hbox(a,3,HG_WINDOW_CREATION_FRAME,2);
	hbox(a,3,HG_LIFETIME,2);
	hbox(a,3,HG_HITBOX_X,3);
	hbox(a,3,HG_HITBOX_Y,-110);
	hbox(a,3,HG_WIDTH,110);
	hbox(a,3,HG_HEIGHT,62);
	hbox(a,3,HG_PRIORITY,1);
	hbox(a,3,HG_DAMAGE,10);
	hbox(a,3,HG_ANGLE,90);
	hbox(a,3,HG_BASE_KNOCKBACK,9);
	hbox(a,3,HG_KNOCKBACK_SCALING,1);
	hbox(a,3,HG_BASE_HITPAUSE,9);
	hbox(a,3,HG_HITPAUSE_SCALING,1);
	hbox(a,3,HG_VISUAL_EFFECT,aurabig_effect);
	hbox(a,3,HG_HIT_SFX,asset_get("sfx_ori_energyhit_heavy"));
}