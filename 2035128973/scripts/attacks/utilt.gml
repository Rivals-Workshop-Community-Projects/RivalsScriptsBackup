#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_UTILT;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_SPRITE,sprite_get("utiltAcc"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("utiltAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,4);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,sound_get("vc_lucario_attack04"));
	win(a,1,AG_WINDOW_SFX_FRAME,2);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,9);
	win(a,2,AG_WINDOW_ANIM_FRAMES,3);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,4);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,4);
	
	set_num_hitboxes(a,3);
	
	hbox(a,1,HG_PARENT_HITBOX,0);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,3);
	hbox(a,1,HG_HITBOX_X,-20);
	hbox(a,1,HG_HITBOX_Y,-40);
	hbox(a,1,HG_WIDTH,50);
	hbox(a,1,HG_HEIGHT,50);
	hbox(a,1,HG_PRIORITY,2);
	hbox(a,1,HG_DAMAGE,8);
	hbox(a,1,HG_ANGLE,90);
	hbox(a,1,HG_BASE_KNOCKBACK,6);
	hbox(a,1,HG_KNOCKBACK_SCALING,.45);
	hbox(a,1,HG_BASE_HITPAUSE,8);
	hbox(a,1,HG_HITPAUSE_SCALING,.35);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_weak2"));
	
	hbox(a,2,HG_PARENT_HITBOX,0);
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,2);
	hbox(a,2,HG_WINDOW_CREATION_FRAME,3);
	hbox(a,2,HG_LIFETIME,3);
	hbox(a,2,HG_HITBOX_Y,-80);
	hbox(a,2,HG_WIDTH,50);
	hbox(a,2,HG_HEIGHT,50);
	hbox(a,2,HG_PRIORITY,2);
	hbox(a,2,HG_DAMAGE,10);
	hbox(a,2,HG_ANGLE,90);
	hbox(a,2,HG_BASE_KNOCKBACK,9);
	hbox(a,2,HG_KNOCKBACK_SCALING,.45);
	hbox(a,2,HG_BASE_HITPAUSE,8);
	hbox(a,2,HG_HITPAUSE_SCALING,.35);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
	
	hbox(a,3,HG_PARENT_HITBOX,0);
	hbox(a,3,HG_HITBOX_TYPE,1);
	hbox(a,3,HG_WINDOW,2);
	hbox(a,3,HG_WINDOW_CREATION_FRAME,6);
	hbox(a,3,HG_LIFETIME,3);
	hbox(a,3,HG_HITBOX_X,50);
	hbox(a,3,HG_HITBOX_Y,-40);
	hbox(a,3,HG_WIDTH,50);
	hbox(a,3,HG_HEIGHT,50);
	hbox(a,3,HG_PRIORITY,2);
	hbox(a,3,HG_DAMAGE,9);
	hbox(a,3,HG_ANGLE,270);
	hbox(a,3,HG_BASE_KNOCKBACK,9);
	hbox(a,3,HG_KNOCKBACK_SCALING,.45);
	hbox(a,3,HG_BASE_HITPAUSE,8);
	hbox(a,3,HG_HITPAUSE_SCALING,.35);
	hbox(a,3,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
}
else
{
	atk(a,AG_NUM_WINDOWS,5);
	atk(a,AG_SPRITE,sprite_get("utilt_boneless"));
	atk(a,AG_HURTBOX_SPRITE,sprite_get("utilt_boneless_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,7);
	win(a,1,AG_WINDOW_ANIM_FRAMES,2);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_medium2"));
	win(a,1,AG_WINDOW_SFX_FRAME,5);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,2);
	win(a,2,AG_WINDOW_ANIM_FRAMES,2);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,2);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,1);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,4);
	
	win(a,4,AG_WINDOW_TYPE,1);
	win(a,4,AG_WINDOW_LENGTH,6);
	win(a,4,AG_WINDOW_ANIM_FRAMES,3);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,5);
	
	win(a,5,AG_WINDOW_TYPE,1);
	win(a,5,AG_WINDOW_LENGTH,7);
	win(a,5,AG_WINDOW_ANIM_FRAMES,2);
	win(a,5,AG_WINDOW_ANIM_FRAME_START,8);
	win(a,5,AG_WINDOW_HAS_WHIFFLAG,1);
	
	set_num_hitboxes(a,3);
	
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,2);
	hbox(a,1,HG_HITBOX_X,-20);
	hbox(a,1,HG_HITBOX_Y,-40);
	hbox(a,1,HG_WIDTH,44);
	hbox(a,1,HG_HEIGHT,80);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,7);
	hbox(a,1,HG_ANGLE,85);
	hbox(a,1,HG_BASE_KNOCKBACK,7);
	hbox(a,1,HG_KNOCKBACK_SCALING,0.5);
	hbox(a,1,HG_BASE_HITPAUSE,7);
	hbox(a,1,HG_HITPAUSE_SCALING,0.5);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
	hbox(a,1,HG_HITSTUN_MULTIPLIER,1);
	
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,3);
	hbox(a,2,HG_LIFETIME,3);
	hbox(a,2,HG_HITBOX_X,10);
	hbox(a,2,HG_HITBOX_Y,-85);
	hbox(a,2,HG_WIDTH,80);
	hbox(a,2,HG_HEIGHT,34);
	hbox(a,2,HG_PRIORITY,1);
	hbox(a,2,HG_DAMAGE,6);
	hbox(a,2,HG_ANGLE,90);
	hbox(a,2,HG_BASE_KNOCKBACK,7);
	hbox(a,2,HG_KNOCKBACK_SCALING,0.5);
	hbox(a,2,HG_BASE_HITPAUSE,7);
	hbox(a,2,HG_HITPAUSE_SCALING,0.5);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
	hbox(a,2,HG_HITSTUN_MULTIPLIER,1);
	
	hbox(a,3,HG_HITBOX_TYPE,1);
	hbox(a,3,HG_WINDOW,4);
	hbox(a,3,HG_WINDOW_CREATION_FRAME,2);
	hbox(a,3,HG_LIFETIME,2);
	hbox(a,3,HG_HITBOX_X,34);
	hbox(a,3,HG_HITBOX_Y,-44);
	hbox(a,3,HG_WIDTH,52);
	hbox(a,3,HG_HEIGHT,84);
	hbox(a,3,HG_PRIORITY,1);
	hbox(a,3,HG_DAMAGE,9);
	hbox(a,3,HG_ANGLE,270);
	hbox(a,3,HG_BASE_KNOCKBACK,7);
	hbox(a,3,HG_KNOCKBACK_SCALING,0.5);
	hbox(a,3,HG_BASE_HITPAUSE,8);
	hbox(a,3,HG_HITPAUSE_SCALING,.5);
	hbox(a,3,HG_HIT_SFX,asset_get("sfx_blow_heavy1"));
	hbox(a,3,HG_HITSTUN_MULTIPLIER,1);
	hbox(a,3,HG_VISUAL_EFFECT,305);
}