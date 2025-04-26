#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_NAIR;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_CATEGORY,1);
	atk(a,AG_SPRITE,sprite_get("jumpAcc"));
	atk(a,AG_NUM_WINDOWS,3);
	atk(a,AG_HAS_LANDING_LAG,1);
	atk(a,AG_LANDING_LAG,0);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("jumpAcc_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,4);
	win(a,1,AG_WINDOW_ANIM_FRAMES,2);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,sound_get("vc_lucario_attack02"));
	win(a,1,AG_WINDOW_SFX_FRAME,2);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,15);
	win(a,2,AG_WINDOW_ANIM_FRAMES,5);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,2);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,7);
	win(a,3,AG_WINDOW_ANIM_FRAMES,2);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,8);
	win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);
	
	set_num_hitboxes(a,3);
	
	hbox(a,1,HG_PARENT_HITBOX,1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,3);
	hbox(a,1,HG_HITBOX_Y,-40);
	hbox(a,1,HG_WIDTH,95);
	hbox(a,1,HG_HEIGHT,95);
	hbox(a,1,HG_PRIORITY,1);
	hbox(a,1,HG_DAMAGE,2);
	hbox(a,1,HG_ANGLE,45);
	hbox(a,1,HG_BASE_KNOCKBACK,6);
	hbox(a,1,HG_BASE_HITPAUSE,5);
	hbox(a,1,HG_VISUAL_EFFECT,302);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_weak2"));
	
	hbox(a,2,HG_PARENT_HITBOX,1);
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,2);
	hbox(a,2,HG_WINDOW_CREATION_FRAME,6);
	hbox(a,2,HG_LIFETIME,3);
	hbox(a,2,HG_HITBOX_Y,-40);
	hbox(a,2,HG_HITBOX_GROUP,1);
	
	hbox(a,3,HG_PARENT_HITBOX,3);
	hbox(a,3,HG_HITBOX_TYPE,1);
	hbox(a,3,HG_WINDOW,2);
	hbox(a,3,HG_WINDOW_CREATION_FRAME,12);
	hbox(a,3,HG_LIFETIME,3);
	hbox(a,3,HG_HITBOX_Y,-40);
	hbox(a,3,HG_WIDTH,100);
	hbox(a,3,HG_HEIGHT,100);
	hbox(a,3,HG_PRIORITY,1);
	hbox(a,3,HG_DAMAGE,5);
	hbox(a,3,HG_ANGLE,70);
	hbox(a,3,HG_BASE_KNOCKBACK,7);
	hbox(a,3,HG_KNOCKBACK_SCALING,.2);
	hbox(a,3,HG_BASE_HITPAUSE,7);
	hbox(a,3,HG_HITPAUSE_SCALING,.2);
	hbox(a,3,HG_VISUAL_EFFECT_X_OFFSET,20);
	hbox(a,3,HG_VISUAL_EFFECT_Y_OFFSET,-20);
	hbox(a,3,HG_HIT_SFX,asset_get("sfx_blow_medium2"));
	hbox(a,3,HG_HITBOX_GROUP,2);
}
else
{
	atk(a,AG_CATEGORY,1);
	atk(a,AG_SPRITE,sprite_get("nair"));
	atk(a,AG_NUM_WINDOWS,5);
	atk(a,AG_HAS_LANDING_LAG,1);
	atk(a,AG_LANDING_LAG,6);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("nair_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,6);
	win(a,1,AG_WINDOW_ANIM_FRAMES,3);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_weak1"));
	win(a,1,AG_WINDOW_SFX_FRAME,4);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,4);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,3);
	win(a,2,AG_WINDOW_HAS_SFX,1);
	win(a,2,AG_WINDOW_SFX,asset_get("sfx_swipe_weak2"));
	win(a,2,AG_WINDOW_SFX_FRAME,2);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,4);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,4);
	win(a,3,AG_WINDOW_HAS_SFX,1);
	win(a,3,AG_WINDOW_SFX,asset_get("sfx_swipe_medium1"));
	win(a,3,AG_WINDOW_SFX_FRAME,2);
	
	win(a,4,AG_WINDOW_TYPE,1);
	win(a,4,AG_WINDOW_LENGTH,3);
	win(a,4,AG_WINDOW_ANIM_FRAMES,1);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,5);
	
	win(a,5,AG_WINDOW_TYPE,1);
	win(a,5,AG_WINDOW_LENGTH,13);
	win(a,5,AG_WINDOW_ANIM_FRAMES,3);
	win(a,5,AG_WINDOW_ANIM_FRAME_START,6);
	win(a,5,AG_WINDOW_HAS_WHIFFLAG,6);
	
	set_num_hitboxes(a,4);
	
	hbox(a,1,HG_PARENT_HITBOX,1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,2);
	hbox(a,1,HG_HITBOX_X,26);
	hbox(a,1,HG_HITBOX_Y,-16);
	hbox(a,1,HG_WIDTH,65);
	hbox(a,1,HG_HEIGHT,55);
	hbox(a,1,HG_PRIORITY,2);
	hbox(a,1,HG_DAMAGE,2);
	hbox(a,1,HG_ANGLE,135);
	hbox(a,1,HG_BASE_KNOCKBACK,7);
	hbox(a,1,HG_KNOCKBACK_SCALING,.25);
	hbox(a,1,HG_BASE_HITPAUSE,5);
	hbox(a,1,HG_VISUAL_EFFECT,302);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_weak1"));
	hbox(a,1,HG_HITSTUN_MULTIPLIER,.6);
	
	hbox(a,2,HG_PARENT_HITBOX,2);
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,2);
	hbox(a,2,HG_LIFETIME,3);
	hbox(a,2,HG_HITBOX_X,53);
	hbox(a,2,HG_HITBOX_Y,-12);
	hbox(a,2,HG_WIDTH,58);
	hbox(a,2,HG_HEIGHT,42);
	hbox(a,2,HG_PRIORITY,1);
	hbox(a,2,HG_DAMAGE,3);
	hbox(a,2,HG_ANGLE,50);
	hbox(a,2,HG_BASE_KNOCKBACK,8);
	hbox(a,2,HG_KNOCKBACK_SCALING,.2);
	hbox(a,2,HG_BASE_HITPAUSE,5);
	hbox(a,2,HG_VISUAL_EFFECT,302);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_weak1"));
	hbox(a,2,HG_HITSTUN_MULTIPLIER,.5);
	
	hbox(a,3,HG_PARENT_HITBOX,3);
	hbox(a,3,HG_HITBOX_TYPE,1);
	hbox(a,3,HG_WINDOW,3);
	hbox(a,3,HG_LIFETIME,2);
	hbox(a,3,HG_HITBOX_X,-24);
	hbox(a,3,HG_HITBOX_Y,-41);
	hbox(a,3,HG_WIDTH,80);
	hbox(a,3,HG_HEIGHT,64);
	hbox(a,3,HG_PRIORITY,1);
	hbox(a,3,HG_DAMAGE,2);
	hbox(a,3,HG_ANGLE,10);
	hbox(a,3,HG_BASE_KNOCKBACK,7);
	hbox(a,3,HG_KNOCKBACK_SCALING,.25);
	hbox(a,3,HG_BASE_HITPAUSE,5);
	hbox(a,3,HG_VISUAL_EFFECT,302);
	hbox(a,3,HG_HIT_SFX,asset_get("sfx_blow_weak2"));
	hbox(a,3,HG_HITBOX_GROUP,1);
	hbox(a,3,HG_HITSTUN_MULTIPLIER,.6);
	
	hbox(a,4,HG_PARENT_HITBOX,4);
	hbox(a,4,HG_HITBOX_TYPE,1);
	hbox(a,4,HG_WINDOW,4);
	hbox(a,4,HG_LIFETIME,4);
	hbox(a,4,HG_HITBOX_X,26);
	hbox(a,4,HG_HITBOX_Y,-27);
	hbox(a,4,HG_WIDTH,70);
	hbox(a,4,HG_HEIGHT,60);
	hbox(a,4,HG_PRIORITY,1);
	hbox(a,4,HG_DAMAGE,4);
	hbox(a,4,HG_ANGLE,361);
	hbox(a,4,HG_BASE_KNOCKBACK,6);
	hbox(a,4,HG_KNOCKBACK_SCALING,.5);
	hbox(a,4,HG_BASE_HITPAUSE,7);
	hbox(a,4,HG_HITPAUSE_SCALING,.2);
	hbox(a,4,HG_VISUAL_EFFECT,0);
	hbox(a,4,HG_VISUAL_EFFECT_X_OFFSET,20);
	hbox(a,4,HG_VISUAL_EFFECT_Y_OFFSET,-20);
	hbox(a,4,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
	hbox(a,4,HG_HITBOX_GROUP,2);
}