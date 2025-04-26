#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_DSTRONG;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_SPRITE,sprite_get("dstrongAcc"));
	atk(a,AG_NUM_WINDOWS,4);
	atk(a,AG_STRONG_CHARGE_WINDOW,1);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("dstrongAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,4);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,4);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
	win(a,2,AG_WINDOW_HAS_SFX,1);
	win(a,2,AG_WINDOW_SFX,sound_get("vc_lucario_attack07"));
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,8);
	win(a,3,AG_WINDOW_ANIM_FRAMES,3);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,2);
	
	set_num_hitboxes(a,1);
	
	hbox(a,1,HG_PARENT_HITBOX,1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,3);
	hbox(a,1,HG_LIFETIME,12);
	hbox(a,1,HG_HITBOX_X,5);
	hbox(a,1,HG_HITBOX_Y,-15);
	hbox(a,1,HG_WIDTH,160);
	hbox(a,1,HG_HEIGHT,30);
	hbox(a,1,HG_SHAPE,2);
	hbox(a,1,HG_PRIORITY,2);
	hbox(a,1,HG_DAMAGE,11);
	hbox(a,1,HG_ANGLE,30);
	hbox(a,1,HG_BASE_KNOCKBACK,8);
	hbox(a,1,HG_KNOCKBACK_SCALING,1.3);
	hbox(a,1,HG_BASE_HITPAUSE,7);
	hbox(a,1,HG_HITPAUSE_SCALING,.9);
	hbox(a,1,HG_VISUAL_EFFECT,13);
	hbox(a,1,HG_VISUAL_EFFECT_X_OFFSET,10);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_heavy1"));
	hbox(a,1,HG_ANGLE_FLIPPER,3);
	hbox(a,1,HG_HITSTUN_MULTIPLIER,1.0);
}
else
{
	atk(a,AG_SPRITE,sprite_get("dstrong"));
	atk(a,AG_HURTBOX_SPRITE,sprite_get("dstrong_hurt"));
	atk(a,AG_NUM_WINDOWS,4);
	atk(a,AG_STRONG_CHARGE_WINDOW,1);

	win(a,1,AG_WINDOW_LENGTH,14);
	win(a,1,AG_WINDOW_ANIM_FRAMES,4);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_ori_energyhit_weak"));

	win(a,2,AG_WINDOW_LENGTH,4);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,4);
	win(a,2,AG_WINDOW_HAS_SFX,1);
	win(a,2,AG_WINDOW_SFX,asset_get("sfx_ori_charged_flame_release"));

	win(a,3,AG_WINDOW_LENGTH,4);
	win(a,3,AG_WINDOW_ANIM_FRAMES,2);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,5);

	win(a,4,AG_WINDOW_LENGTH,20);
	win(a,4,AG_WINDOW_ANIM_FRAMES,3);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,7);
	win(a,4,AG_WINDOW_HAS_WHIFFLAG,1);

	set_num_hitboxes(a,2);

	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,3);
	hbox(a,1,HG_LIFETIME,4);
	hbox(a,1,HG_HITBOX_X,-56);
	hbox(a,1,HG_HITBOX_Y,-26);
	hbox(a,1,HG_WIDTH,100);
	hbox(a,1,HG_HEIGHT,38);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,9);
	hbox(a,1,HG_ANGLE,135);
	hbox(a,1,HG_BASE_KNOCKBACK,8.5);
	hbox(a,1,HG_KNOCKBACK_SCALING,0.85);
	hbox(a,1,HG_BASE_HITPAUSE,12);
	hbox(a,1,HG_HITPAUSE_SCALING,0.85);
	hbox(a,1,HG_VISUAL_EFFECT,aurabig_effect);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_ori_energyhit_heavy"));
	hbox(a,1,HG_ANGLE_FLIPPER,6);

	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,3);
	hbox(a,2,HG_LIFETIME,4);
	hbox(a,2,HG_HITBOX_X,52);
	hbox(a,2,HG_HITBOX_Y,-26);
	hbox(a,2,HG_WIDTH,100);
	hbox(a,2,HG_HEIGHT,38);
	hbox(a,2,HG_PRIORITY,1);
	hbox(a,2,HG_DAMAGE,9);
	hbox(a,2,HG_ANGLE,45);
	hbox(a,2,HG_BASE_KNOCKBACK,8.5);
	hbox(a,2,HG_KNOCKBACK_SCALING,0.85);
	hbox(a,2,HG_BASE_HITPAUSE,12);
	hbox(a,2,HG_HITPAUSE_SCALING,0.85);
	hbox(a,2,HG_VISUAL_EFFECT,aurabig_effect);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_ori_energyhit_heavy"));
	hbox(a,2,HG_ANGLE_FLIPPER,6);
}