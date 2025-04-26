#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_UAIR;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_CATEGORY,1);
	atk(a,AG_SPRITE,sprite_get("uairAcc"));
	atk(a,AG_NUM_WINDOWS,2);
	atk(a,AG_HAS_LANDING_LAG,1);
	atk(a,AG_LANDING_LAG,0);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("uairAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,1);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,sound_get("vc_lucario_attack02"));
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,7);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_VSPEED,-2);
	
	set_num_hitboxes(a,1);
	
	hbox(a,1,HG_PARENT_HITBOX,1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,7);
	hbox(a,1,HG_HITBOX_Y,-60);
	hbox(a,1,HG_WIDTH,74);
	hbox(a,1,HG_HEIGHT,74);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,9);
	hbox(a,1,HG_ANGLE,90);
	hbox(a,1,HG_BASE_KNOCKBACK,7);
	hbox(a,1,HG_KNOCKBACK_SCALING,1);
	hbox(a,1,HG_BASE_HITPAUSE,7);
	hbox(a,1,HG_HITPAUSE_SCALING,1);
	hbox(a,1,HG_VISUAL_EFFECT_Y_OFFSET,-16);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
	hbox(a,1,HG_ANGLE_FLIPPER,6);
}
else
{
	atk(a,AG_CATEGORY,1);
	atk(a,AG_SPRITE,sprite_get("uair"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_HAS_LANDING_LAG,1);
	atk(a,AG_LANDING_LAG,8);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("uair_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,18);
	win(a,1,AG_WINDOW_ANIM_FRAMES,3);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_charge_blade_swing"));
	win(a,1,AG_WINDOW_SFX_FRAME,14);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,4);
	win(a,2,AG_WINDOW_ANIM_FRAMES,2);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,3);
	win(a,2,AG_WINDOW_VSPEED,-1);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,16);
	win(a,3,AG_WINDOW_ANIM_FRAMES,4);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,5);
	win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);
	
	set_num_hitboxes(a,3);
	
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_HITBOX_GROUP,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,2);
	hbox(a,1,HG_HITBOX_Y,-84);
	hbox(a,1,HG_WIDTH,120);
	hbox(a,1,HG_HEIGHT,70);
	hbox(a,1,HG_PRIORITY,2);
	hbox(a,1,HG_DAMAGE,9);
	hbox(a,1,HG_ANGLE,90);
	hbox(a,1,HG_BASE_KNOCKBACK,8.5);
	hbox(a,1,HG_KNOCKBACK_SCALING,0.7);
	hbox(a,1,HG_HITSTUN_MULTIPLIER,0.75);
	hbox(a,1,HG_BASE_HITPAUSE,10);
	hbox(a,1,HG_HITPAUSE_SCALING,0.8);
	hbox(a,1,HG_VISUAL_EFFECT_Y_OFFSET,-16);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_heavy2"));
	hbox(a,1,HG_ANGLE_FLIPPER,6);
	hbox(a,1,HG_VISUAL_EFFECT,304);
	
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_HITBOX_GROUP,1);
	hbox(a,2,HG_WINDOW,2);
	hbox(a,2,HG_LIFETIME,2);
	hbox(a,2,HG_HITBOX_X,58);
	hbox(a,2,HG_HITBOX_Y,-40);
	hbox(a,2,HG_WIDTH,50);
	hbox(a,2,HG_HEIGHT,90);
	hbox(a,2,HG_PRIORITY,1);
	hbox(a,2,HG_DAMAGE,6);
	hbox(a,2,HG_ANGLE,70);
	hbox(a,2,HG_BASE_KNOCKBACK,6);
	hbox(a,2,HG_KNOCKBACK_SCALING,0.5);
	hbox(a,2,HG_BASE_HITPAUSE,7);
	hbox(a,2,HG_HITPAUSE_SCALING,0.5);
	hbox(a,2,HG_VISUAL_EFFECT_Y_OFFSET,-16);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
	hbox(a,2,HG_VISUAL_EFFECT,302);
	
	hbox(a,3,HG_HITBOX_TYPE,1);
	hbox(a,3,HG_HITBOX_GROUP,1);
	hbox(a,3,HG_WINDOW,2);
	hbox(a,3,HG_LIFETIME,4);
	hbox(a,3,HG_HITBOX_X,-58);
	hbox(a,3,HG_HITBOX_Y,-40);
	hbox(a,3,HG_WIDTH,50);
	hbox(a,3,HG_HEIGHT,90);
	hbox(a,3,HG_PRIORITY,1);
	hbox(a,3,HG_DAMAGE,6);
	hbox(a,3,HG_ANGLE,110);
	hbox(a,3,HG_BASE_KNOCKBACK,6);
	hbox(a,3,HG_KNOCKBACK_SCALING,0.5);
	hbox(a,3,HG_BASE_HITPAUSE,7);
	hbox(a,3,HG_HITPAUSE_SCALING,0.5);
	hbox(a,3,HG_VISUAL_EFFECT_Y_OFFSET,-16);
	hbox(a,3,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
	hbox(a,3,HG_VISUAL_EFFECT,302);
}