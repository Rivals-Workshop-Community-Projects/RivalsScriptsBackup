#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_BAIR;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_CATEGORY,1);
	atk(a,AG_SPRITE,sprite_get("bairAcc"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_HAS_LANDING_LAG,1);
	atk(a,AG_LANDING_LAG,0);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("bairAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,4);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_VSPEED,-1);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,sound_get("vc_lucario_attack04"));
	win(a,1,AG_WINDOW_SFX_FRAME,1);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,4);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,0);
	
	set_num_hitboxes(a,1);
	
	hbox(a,1,HG_PARENT_HITBOX,1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,4);
	hbox(a,1,HG_HITBOX_X,-30);
	hbox(a,1,HG_HITBOX_Y,-30);
	hbox(a,1,HG_WIDTH,60);
	hbox(a,1,HG_HEIGHT,80);
	hbox(a,1,HG_PRIORITY,2);
	hbox(a,1,HG_DAMAGE,9);
	hbox(a,1,HG_ANGLE,145);
	hbox(a,1,HG_BASE_KNOCKBACK,8);
	hbox(a,1,HG_KNOCKBACK_SCALING,1);
	hbox(a,1,HG_BASE_HITPAUSE,8);
	hbox(a,1,HG_HITPAUSE_SCALING,1);
	hbox(a,1,HG_VISUAL_EFFECT,304);
	hbox(a,1,HG_VISUAL_EFFECT_X_OFFSET,-32);
	hbox(a,1,HG_VISUAL_EFFECT_Y_OFFSET,-10);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_heavy1"));
}
else
{
	atk(a,AG_CATEGORY,1);
	atk(a,AG_SPRITE,sprite_get("bair"));
	atk(a,AG_HURTBOX_SPRITE,sprite_get("bair_hurt"));
	atk(a,AG_NUM_WINDOWS,4);
	atk(a,AG_HAS_LANDING_LAG,1);
	atk(a,AG_LANDING_LAG,10);

	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,14);
	win(a,1,AG_WINDOW_ANIM_FRAMES,2);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_heavy2"));
	win(a,1,AG_WINDOW_SFX_FRAME,10);
	win(a,1,AG_WINDOW_VSPEED,-1);

	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,3);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,2);
	win(a,2,AG_WINDOW_HSPEED,1);

	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,6);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,3);

	win(a,4,AG_WINDOW_TYPE,1);
	win(a,4,AG_WINDOW_LENGTH,10);
	win(a,4,AG_WINDOW_ANIM_FRAMES,1);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,4);
	win(a,4,AG_WINDOW_HAS_WHIFFLAG,1);

	set_num_hitboxes(a,2);

	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,3);
	hbox(a,1,HG_HITBOX_X,-42);
	hbox(a,1,HG_HITBOX_Y,-34);
	hbox(a,1,HG_WIDTH,60);
	hbox(a,1,HG_HEIGHT,40);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,9);
	hbox(a,1,HG_BASE_KNOCKBACK,7.5);
	hbox(a,1,HG_KNOCKBACK_SCALING,0.95);
	hbox(a,1,HG_BASE_HITPAUSE,10);
	hbox(a,1,HG_HITPAUSE_SCALING,0.75);
	hbox(a,1,HG_ANGLE,140);
	hbox(a,1,HG_VISUAL_EFFECT_X_OFFSET,-24);
	hbox(a,1,HG_VISUAL_EFFECT,aurabig_effect);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_ori_energyhit_heavy"));

	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,3);
	hbox(a,2,HG_LIFETIME,6);
	hbox(a,2,HG_HITBOX_X,-50);
	hbox(a,2,HG_HITBOX_Y,-34);
	hbox(a,2,HG_WIDTH,70);
	hbox(a,2,HG_HEIGHT,50);
	hbox(a,2,HG_PRIORITY,1);
	hbox(a,2,HG_DAMAGE,5);
	hbox(a,2,HG_BASE_KNOCKBACK,6);
	hbox(a,2,HG_KNOCKBACK_SCALING,0.4);
	hbox(a,2,HG_BASE_HITPAUSE,6);
	hbox(a,2,HG_HITPAUSE_SCALING,0.4);
	hbox(a,2,HG_ANGLE,140);
	hbox(a,2,HG_VISUAL_EFFECT,aura_effect);
	hbox(a,2,HG_VISUAL_EFFECT_X_OFFSET,-24);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_ori_energyhit_medium"));
}