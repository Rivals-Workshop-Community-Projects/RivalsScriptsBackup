#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_FSTRONG;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_SPRITE,sprite_get("fstrongAcc"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_STRONG_CHARGE_WINDOW,1);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("fstrongAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,6);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,4);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
	win(a,2,AG_WINDOW_HAS_SFX,1);
	win(a,2,AG_WINDOW_SFX,sound_get("vc_lucario_attack06"));
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,8);
	win(a,3,AG_WINDOW_ANIM_FRAMES,3);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,2);
	
	set_num_hitboxes(a,2);
	
	hbox(a,1,HG_PARENT_HITBOX,0);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,3);
	hbox(a,1,HG_LIFETIME,3);
	hbox(a,1,HG_HITBOX_X,88);
	hbox(a,1,HG_HITBOX_Y,-31);
	hbox(a,1,HG_WIDTH,94);
	hbox(a,1,HG_HEIGHT,70);
	hbox(a,1,HG_PRIORITY,3);
	hbox(a,1,HG_DAMAGE,10);
	hbox(a,1,HG_ANGLE,45);
	hbox(a,1,HG_BASE_KNOCKBACK,9);
	hbox(a,1,HG_KNOCKBACK_SCALING,1.1);
	hbox(a,1,HG_BASE_HITPAUSE,18);
	hbox(a,1,HG_HITPAUSE_SCALING,1.0);
	hbox(a,1,HG_VISUAL_EFFECT,304);
	hbox(a,1,HG_VISUAL_EFFECT_Y_OFFSET,-10);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_burnconsume"));
	
	hbox(a,2,HG_PARENT_HITBOX,0);
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,3);
	hbox(a,2,HG_WINDOW_CREATION_FRAME,3);
	hbox(a,2,HG_LIFETIME,5);
	hbox(a,2,HG_HITBOX_X,128);
	hbox(a,2,HG_HITBOX_Y,-31);
	hbox(a,2,HG_WIDTH,94);
	hbox(a,2,HG_HEIGHT,70);
	hbox(a,2,HG_PRIORITY,3);
	hbox(a,2,HG_DAMAGE,10);
	hbox(a,2,HG_ANGLE,45);
	hbox(a,2,HG_BASE_KNOCKBACK,9);
	hbox(a,2,HG_KNOCKBACK_SCALING,1.1);
	hbox(a,2,HG_BASE_HITPAUSE,18);
	hbox(a,2,HG_HITPAUSE_SCALING,1.0);
	hbox(a,2,HG_VISUAL_EFFECT,304);
	hbox(a,2,HG_VISUAL_EFFECT_Y_OFFSET,-10);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_burnconsume"));
}
else
{
	atk(a,AG_SPRITE,sprite_get("fstrong"));
	atk(a,AG_HURTBOX_SPRITE,sprite_get("fstrong_hurt"));
	atk(a,AG_NUM_WINDOWS,4);
	atk(a,AG_STRONG_CHARGE_WINDOW,1);
	
	win(a,1,AG_WINDOW_LENGTH,12);
	win(a,1,AG_WINDOW_ANIM_FRAMES,4);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_ori_energyhit_weak"));
	
	win(a,2,AG_WINDOW_LENGTH,4);
	win(a,2,AG_WINDOW_ANIM_FRAMES,2);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,4);
	win(a,2,AG_WINDOW_HAS_SFX,1);
	win(a,2,AG_WINDOW_SFX,asset_get("sfx_ori_charged_flame_release"));
	
	win(a,3,AG_WINDOW_LENGTH,4);
	win(a,3,AG_WINDOW_ANIM_FRAMES,2);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,6);
	
	win(a,4,AG_WINDOW_LENGTH,20);
	win(a,4,AG_WINDOW_ANIM_FRAMES,3);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,8);
	win(a,4,AG_WINDOW_HAS_WHIFFLAG,1);
	
	set_num_hitboxes(a,2);
	
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,3);
	hbox(a,1,HG_LIFETIME,4);
	hbox(a,1,HG_HITBOX_X,70);
	hbox(a,1,HG_HITBOX_Y,-40);
	hbox(a,1,HG_WIDTH,60);
	hbox(a,1,HG_HEIGHT,80);
	hbox(a,1,HG_PRIORITY,2);
	hbox(a,1,HG_DAMAGE,10);
	hbox(a,1,HG_ANGLE,40);
	hbox(a,1,HG_BASE_KNOCKBACK,8);
	hbox(a,1,HG_KNOCKBACK_SCALING,1);
	hbox(a,1,HG_BASE_HITPAUSE,12);
	hbox(a,1,HG_HITPAUSE_SCALING,0.9);
	hbox(a,1,HG_VISUAL_EFFECT,aurabig_effect);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_ori_energyhit_heavy"));
	
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,3);
	hbox(a,2,HG_LIFETIME,4);
	hbox(a,2,HG_HITBOX_X,40);
	hbox(a,2,HG_HITBOX_Y,-30);
	hbox(a,2,HG_WIDTH,50);
	hbox(a,2,HG_HEIGHT,20);
	hbox(a,2,HG_PRIORITY,1);
	hbox(a,2,HG_DAMAGE,10);
	hbox(a,2,HG_ANGLE,40);
	hbox(a,2,HG_BASE_KNOCKBACK,8);
	hbox(a,2,HG_KNOCKBACK_SCALING,1);
	hbox(a,2,HG_BASE_HITPAUSE,12);
	hbox(a,2,HG_HITPAUSE_SCALING,0.9);
	hbox(a,2,HG_VISUAL_EFFECT,aurabig_effect);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_ori_energyhit_heavy"));
}