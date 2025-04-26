#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_FSPECIAL;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_CATEGORY,2);
	atk(a,AG_SPRITE,sprite_get("fstrongAcc"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("fstrongAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,6);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,4);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
	
	win(a,3,AG_WINDOW_HAS_SFX,1);
	win(a,3,AG_WINDOW_SFX,sound_get("se_lucario_special_S02_s"));
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,8);
	win(a,3,AG_WINDOW_ANIM_FRAMES,3);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,2);
	
	set_num_hitboxes(a,3);
	
	hbox(a,1,HG_PARENT_HITBOX,0);
	hbox(a,1,HG_HITBOX_GROUP,-1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,4);
	hbox(a,1,HG_HITBOX_X,88);
	hbox(a,1,HG_HITBOX_Y,-31);
	hbox(a,1,HG_WIDTH,94);
	hbox(a,1,HG_HEIGHT,70);
	hbox(a,1,HG_PRIORITY,5);
	hbox(a,1,HG_DAMAGE,0);
	hbox(a,1,HG_BASE_KNOCKBACK,1);
	hbox(a,1,HG_EXTRA_HITPAUSE,28);
	
	hbox(a,2,HG_PARENT_HITBOX,0);
	hbox(a,2,HG_HITBOX_GROUP,1);
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,3);
	hbox(a,2,HG_WINDOW_CREATION_FRAME,1);
	hbox(a,2,HG_LIFETIME,3);
	hbox(a,2,HG_HITBOX_X,88);
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
	
	hbox(a,3,HG_PARENT_HITBOX,0);
	hbox(a,3,HG_HITBOX_GROUP,1);
	hbox(a,3,HG_HITBOX_TYPE,1);
	hbox(a,3,HG_WINDOW,3);
	hbox(a,3,HG_WINDOW_CREATION_FRAME,3);
	hbox(a,3,HG_LIFETIME,5);
	hbox(a,3,HG_HITBOX_X,128);
	hbox(a,3,HG_HITBOX_Y,-31);
	hbox(a,3,HG_WIDTH,94);
	hbox(a,3,HG_HEIGHT,70);
	hbox(a,3,HG_PRIORITY,3);
	hbox(a,3,HG_DAMAGE,10);
	hbox(a,3,HG_ANGLE,45);
	hbox(a,3,HG_BASE_KNOCKBACK,9);
	hbox(a,3,HG_KNOCKBACK_SCALING,1.1);
	hbox(a,3,HG_BASE_HITPAUSE,18);
	hbox(a,3,HG_HITPAUSE_SCALING,1.0);
	hbox(a,3,HG_VISUAL_EFFECT,304);
	hbox(a,3,HG_VISUAL_EFFECT_Y_OFFSET,-10);
	hbox(a,3,HG_HIT_SFX,asset_get("sfx_burnconsume"));
}
else
{
	atk(a,AG_CATEGORY,2);
	atk(a,AG_SPRITE,sprite_get("fspecial_boneless"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("fspecial_boneless_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,20);
	win(a,1,AG_WINDOW_ANIM_FRAMES,6);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,sound_get("se_lucario_special_S02_s"));
	win(a,1,AG_WINDOW_SFX_FRAME,18);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,6);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,6);
	win(a,2,AG_WINDOW_HSPEED,3);
	win(a,2,AG_WINDOW_HSPEED_TYPE,2);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,16);
	win(a,3,AG_WINDOW_ANIM_FRAMES,4);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,7);
	win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);
	
	set_num_hitboxes(a,4);
	
	hbox(a,1,HG_PARENT_HITBOX,0);
	hbox(a,1,HG_HITBOX_GROUP,-1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,1);
	hbox(a,1,HG_WINDOW_CREATION_FRAME,10);
	hbox(a,1,HG_LIFETIME,3);
	hbox(a,1,HG_HITBOX_X,28);
	hbox(a,1,HG_HITBOX_Y,-32);
	hbox(a,1,HG_WIDTH,60);
	hbox(a,1,HG_HEIGHT,60);
	hbox(a,1,HG_PRIORITY,5);
	hbox(a,1,HG_DAMAGE,1);
	hbox(a,1,HG_BASE_KNOCKBACK,1);
	hbox(a,1,HG_BASE_HITPAUSE,6);
	hbox(a,1,HG_EXTRA_HITPAUSE,28);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_weak1"));
	
	hbox(a,2,HG_PARENT_HITBOX,0);
	hbox(a,2,HG_HITBOX_GROUP,1);
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,2);
	hbox(a,2,HG_LIFETIME,4);
	hbox(a,2,HG_HITBOX_X,58);
	hbox(a,2,HG_HITBOX_Y,-32);
	hbox(a,2,HG_WIDTH,60);
	hbox(a,2,HG_HEIGHT,60);
	hbox(a,2,HG_PRIORITY,3);
	hbox(a,2,HG_DAMAGE,8);
	hbox(a,2,HG_ANGLE,45);
	hbox(a,2,HG_BASE_KNOCKBACK,8);
	hbox(a,2,HG_KNOCKBACK_SCALING,0.8);
	hbox(a,2,HG_BASE_HITPAUSE,8);
	hbox(a,2,HG_EXTRA_HITPAUSE,10);
	hbox(a,2,HG_HITPAUSE_SCALING,1.0);
	hbox(a,2,HG_VISUAL_EFFECT,aurabig_effect);
	hbox(a,2,HG_VISUAL_EFFECT_Y_OFFSET,-10);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_ori_energyhit_weak"));
	
	hbox(a,3,HG_PARENT_HITBOX,0);
	hbox(a,3,HG_HITBOX_GROUP,1);
	hbox(a,3,HG_HITBOX_TYPE,1);
	hbox(a,3,HG_WINDOW,2);
	hbox(a,3,HG_LIFETIME,4);
	hbox(a,3,HG_HITBOX_X,84);
	hbox(a,3,HG_HITBOX_Y,-32);
	hbox(a,3,HG_WIDTH,96);
	hbox(a,3,HG_HEIGHT,68);
	hbox(a,3,HG_PRIORITY,2);
	hbox(a,3,HG_DAMAGE,6);
	hbox(a,3,HG_ANGLE,45);
	hbox(a,3,HG_BASE_KNOCKBACK,6);
	hbox(a,3,HG_KNOCKBACK_SCALING,0.6);
	hbox(a,3,HG_BASE_HITPAUSE,6);
	hbox(a,3,HG_HITPAUSE_SCALING,0.6);
	hbox(a,3,HG_VISUAL_EFFECT,aurabig_effect);
	hbox(a,3,HG_VISUAL_EFFECT_Y_OFFSET,-10);
	hbox(a,3,HG_HIT_SFX,asset_get("sfx_ori_energyhit_weak"));
	
	hbox(a,4,HG_PARENT_HITBOX,0);
	hbox(a,4,HG_HITBOX_GROUP,1);
	hbox(a,4,HG_HITBOX_TYPE,1);
	hbox(a,4,HG_WINDOW,2);
	hbox(a,4,HG_LIFETIME,4);
	hbox(a,4,HG_HITBOX_X,104);
	hbox(a,4,HG_HITBOX_Y,-32);
	hbox(a,4,HG_WIDTH,140);
	hbox(a,4,HG_HEIGHT,68);
	hbox(a,4,HG_PRIORITY,1);
	hbox(a,4,HG_DAMAGE,4);
	hbox(a,4,HG_ANGLE,45);
	hbox(a,4,HG_BASE_KNOCKBACK,4);
	hbox(a,4,HG_KNOCKBACK_SCALING,0.4);
	hbox(a,4,HG_BASE_HITPAUSE,4);
	hbox(a,4,HG_HITPAUSE_SCALING,0.4);
	hbox(a,4,HG_VISUAL_EFFECT,aura_effect);
	hbox(a,4,HG_VISUAL_EFFECT_Y_OFFSET,-10);
	hbox(a,4,HG_HIT_SFX,asset_get("sfx_ori_energyhit_weak"));
}