#macro atk set_attack_value
#macro win set_window_value
#macro hbox set_hitbox_value
var a=AT_JAB;

if (get_synced_var(player) == 15005)
{
	atk(a,AG_SPRITE,sprite_get("jabAcc"));
	atk(a,AG_CATEGORY,0);
	atk(a,AG_NUM_WINDOWS,10);
	atk(a,AG_HURTBOX_SPRITE,sprite_get("jabAcc_hurt"));
	
	win(a,1,AG_WINDOW_LENGTH,3);
	win(a,1,AG_WINDOW_TYPE,0);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_weak2"));
	
	win(a,2,AG_WINDOW_LENGTH,3);
	win(a,2,AG_WINDOW_TYPE,0);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
	
	win(a,3,AG_WINDOW_LENGTH,12);
	win(a,3,AG_WINDOW_TYPE,0);
	win(a,3,AG_WINDOW_ANIM_FRAMES,1);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,2);
	win(a,3,AG_WINDOW_CANCEL_TYPE,1);
	win(a,3,AG_WINDOW_CANCEL_FRAME,6);
	win(a,3,AG_WINDOW_HAS_WHIFFLAG,1);
	
	win(a,4,AG_WINDOW_LENGTH,2);
	win(a,4,AG_WINDOW_TYPE,0);
	win(a,4,AG_WINDOW_ANIM_FRAMES,1);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,3);
	win(a,4,AG_WINDOW_HAS_SFX,1);
	win(a,4,AG_WINDOW_SFX,asset_get("sfx_swipe_weak2"));
	win(a,4,AG_WINDOW_HSPEED,3);
	
	win(a,5,AG_WINDOW_LENGTH,2);
	win(a,5,AG_WINDOW_TYPE,0);
	win(a,5,AG_WINDOW_ANIM_FRAMES,1);
	win(a,5,AG_WINDOW_ANIM_FRAME_START,4);
	win(a,5,AG_WINDOW_HAS_CUSTOM_FRICTION,1);
	win(a,5,AG_WINDOW_CUSTOM_GROUND_FRICTION,6);
	win(a,5,AG_WINDOW_HSPEED,10);
	
	win(a,6,AG_WINDOW_LENGTH,12);
	win(a,6,AG_WINDOW_TYPE,0);
	win(a,6,AG_WINDOW_ANIM_FRAMES,1);
	win(a,6,AG_WINDOW_ANIM_FRAME_START,5);
	win(a,6,AG_WINDOW_CANCEL_TYPE,1);
	win(a,6,AG_WINDOW_CANCEL_FRAME,5);
	win(a,6,AG_WINDOW_HAS_WHIFFLAG,1);
	
	win(a,7,AG_WINDOW_LENGTH,2);
	win(a,7,AG_WINDOW_TYPE,0);
	win(a,7,AG_WINDOW_ANIM_FRAMES,1);
	win(a,7,AG_WINDOW_ANIM_FRAME_START,6);
	
	win(a,8,AG_WINDOW_LENGTH,4);
	win(a,8,AG_WINDOW_TYPE,0);
	win(a,8,AG_WINDOW_ANIM_FRAMES,1);
	win(a,8,AG_WINDOW_ANIM_FRAME_START,7);
	win(a,8,AG_WINDOW_HAS_SFX,1);
	win(a,8,AG_WINDOW_SFX_FRAME,3);
	win(a,8,AG_WINDOW_SFX,sound_get("vc_lucario_attack03"));
	
	win(a,9,AG_WINDOW_LENGTH,16);
	win(a,9,AG_WINDOW_TYPE,0);
	win(a,9,AG_WINDOW_ANIM_FRAMES,1);
	win(a,9,AG_WINDOW_ANIM_FRAME_START,8);
	
	win(a,10,AG_WINDOW_LENGTH,2);
	win(a,10,AG_WINDOW_TYPE,0);
	win(a,10,AG_WINDOW_ANIM_FRAMES,1);
	win(a,10,AG_WINDOW_ANIM_FRAME_START,8);
	win(a,10,AG_WINDOW_HAS_WHIFFLAG,1);
	
	set_num_hitboxes(a,3);
	
	hbox(a,1,HG_HITBOX_GROUP,-1);
	hbox(a,1,HG_PARENT_HITBOX,0);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_SHAPE,2);
	hbox(a,1,HG_LIFETIME,4);
	hbox(a,1,HG_HITBOX_X,30);
	hbox(a,1,HG_HITBOX_Y,-35);
	hbox(a,1,HG_WIDTH,60);
	hbox(a,1,HG_HEIGHT,50);
	hbox(a,1,HG_PRIORITY,2);
	hbox(a,1,HG_DAMAGE,6);
	hbox(a,1,HG_ANGLE,0);
	hbox(a,1,HG_BASE_KNOCKBACK,3);
	hbox(a,1,HG_BASE_HITPAUSE,2);
	hbox(a,1,HG_EXTRA_CAMERA_SHAKE,-1);
	hbox(a,1,HG_VISUAL_EFFECT,1);
	hbox(a,1,HG_FORCE_FLINCH,1);
	hbox(a,1,HG_TECHABLE,1);
	hbox(a,1,HG_EXTRA_HITPAUSE,2);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_weak2"));
	
	hbox(a,2,HG_HITBOX_GROUP,-1);
	hbox(a,2,HG_PARENT_HITBOX,0);
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,5);
	hbox(a,2,HG_SHAPE,2);
	hbox(a,2,HG_LIFETIME,4);
	hbox(a,2,HG_HITBOX_X,22);
	hbox(a,2,HG_HITBOX_Y,-30);
	hbox(a,2,HG_WIDTH,50);
	hbox(a,2,HG_HEIGHT,35);
	hbox(a,2,HG_PRIORITY,2);
	hbox(a,2,HG_DAMAGE,8);
	hbox(a,2,HG_ANGLE,70);
	hbox(a,2,HG_BASE_KNOCKBACK,2);
	hbox(a,2,HG_BASE_HITPAUSE,4);
	hbox(a,2,HG_KNOCKBACK_SCALING,0.1);
	hbox(a,2,HG_EXTRA_CAMERA_SHAKE,-1);
	hbox(a,2,HG_VISUAL_EFFECT,1);
	hbox(a,2,HG_TECHABLE,1);
	hbox(a,2,HG_FORCE_FLINCH,1);
	hbox(a,2,HG_EXTRA_HITPAUSE,2);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_weak1"));
	
	hbox(a,3,HG_HITBOX_GROUP,-1);
	hbox(a,3,HG_PARENT_HITBOX,0);
	hbox(a,3,HG_HITBOX_TYPE,1);
	hbox(a,3,HG_WINDOW,9);
	hbox(a,3,HG_SHAPE,0);
	hbox(a,3,HG_LIFETIME,4);
	hbox(a,3,HG_HITBOX_X,40);
	hbox(a,3,HG_HITBOX_Y,-45);
	hbox(a,3,HG_WIDTH,40);
	hbox(a,3,HG_HEIGHT,80);
	hbox(a,3,HG_PRIORITY,2);
	hbox(a,3,HG_DAMAGE,12);
	hbox(a,3,HG_ANGLE,45);
	hbox(a,3,HG_BASE_KNOCKBACK,6);
	hbox(a,3,HG_BASE_HITPAUSE,15);
	hbox(a,3,HG_EXTRA_HITPAUSE,5);
	hbox(a,3,HG_HITSTUN_MULTIPLIER,0.4);
	hbox(a,3,HG_KNOCKBACK_SCALING,0.75);
	hbox(a,3,HG_VISUAL_EFFECT,303);
	hbox(a,3,HG_HIT_SFX,asset_get("sfx_blow_medium1"));
}
else
{
	atk(a,AG_NUM_WINDOWS,7);
	atk(a,AG_SPRITE,sprite_get("jab"));
	atk(a,AG_HURTBOX_SPRITE,sprite_get("jab_hurt"));
	
	win(a,1,AG_WINDOW_TYPE,1);
	win(a,1,AG_WINDOW_LENGTH,3);
	win(a,1,AG_WINDOW_ANIM_FRAMES,1);
	win(a,1,AG_WINDOW_HAS_SFX,1);
	win(a,1,AG_WINDOW_SFX,asset_get("sfx_swipe_weak1"));
	win(a,1,AG_WINDOW_SFX_FRAME,2);
	
	win(a,2,AG_WINDOW_TYPE,1);
	win(a,2,AG_WINDOW_LENGTH,3);
	win(a,2,AG_WINDOW_ANIM_FRAMES,1);
	win(a,2,AG_WINDOW_ANIM_FRAME_START,1);
	
	win(a,3,AG_WINDOW_TYPE,1);
	win(a,3,AG_WINDOW_LENGTH,13);
	win(a,3,AG_WINDOW_ANIM_FRAMES,2);
	win(a,3,AG_WINDOW_ANIM_FRAME_START,2);
	win(a,3,AG_WINDOW_CANCEL_TYPE,1);
	win(a,3,AG_WINDOW_CANCEL_FRAME,5);
	
	win(a,4,AG_WINDOW_TYPE,1);
	win(a,4,AG_WINDOW_LENGTH,3);
	win(a,4,AG_WINDOW_ANIM_FRAMES,1);
	win(a,4,AG_WINDOW_ANIM_FRAME_START,4);
	win(a,4,AG_WINDOW_HAS_SFX,1);
	win(a,4,AG_WINDOW_SFX,asset_get("sfx_swipe_weak2"));
	win(a,4,AG_WINDOW_SFX_FRAME,2);
	
	win(a,5,AG_WINDOW_TYPE,1);
	win(a,5,AG_WINDOW_LENGTH,3);
	win(a,5,AG_WINDOW_ANIM_FRAMES,1);
	win(a,5,AG_WINDOW_ANIM_FRAME_START,5);
	win(a,5,AG_WINDOW_CUSTOM_GROUND_FRICTION,1);
	win(a,5,27,.1);
	win(a,5,28,0);
	
	win(a,6,AG_WINDOW_TYPE,1);
	win(a,6,AG_WINDOW_LENGTH,11);
	win(a,6,AG_WINDOW_ANIM_FRAMES,2);
	win(a,6,AG_WINDOW_ANIM_FRAME_START,6);
	win(a,6,AG_WINDOW_CUSTOM_GROUND_FRICTION,6);
	win(a,6,AG_WINDOW_CANCEL_TYPE,1);
	win(a,6,AG_WINDOW_CANCEL_FRAME,5);
	
	win(a,7,AG_WINDOW_TYPE,1);
	win(a,7,AG_WINDOW_LENGTH,5);
	win(a,7,AG_WINDOW_ANIM_FRAMES,1);
	win(a,7,AG_WINDOW_ANIM_FRAME_START,7);
	win(a,7,AG_WINDOW_CUSTOM_GROUND_FRICTION,6);
	
	set_num_hitboxes(a,2);
	
	hbox(a,1,HG_PARENT_HITBOX,1);
	hbox(a,1,HG_HITBOX_TYPE,1);
	hbox(a,1,HG_WINDOW,2);
	hbox(a,1,HG_LIFETIME,2);
	hbox(a,1,HG_HITBOX_X,35);
	hbox(a,1,HG_HITBOX_Y,-30);
	hbox(a,1,HG_WIDTH,70);
	hbox(a,1,HG_HEIGHT,55);
	hbox(a,1,HG_PRIORITY,2);
	hbox(a,1,HG_DAMAGE,3);
	hbox(a,1,HG_ANGLE,361);
	hbox(a,1,HG_BASE_KNOCKBACK,4);
	hbox(a,1,HG_BASE_HITPAUSE,4);
	hbox(a,1,HG_VISUAL_EFFECT_X_OFFSET,20);
	hbox(a,1,HG_HIT_SFX,asset_get("sfx_blow_weak1"));
	hbox(a,1,HG_ANGLE_FLIPPER,6);
	hbox(a,1,HG_HITBOX_GROUP,-1);
	hbox(a,1,HG_FORCE_FLINCH,1);
	
	hbox(a,2,HG_PARENT_HITBOX,2);
	hbox(a,2,HG_HITBOX_TYPE,1);
	hbox(a,2,HG_WINDOW,5);
	hbox(a,2,HG_LIFETIME,2);
	hbox(a,2,HG_HITBOX_X,35);
	hbox(a,2,HG_HITBOX_Y,-30);
	hbox(a,2,HG_WIDTH,70);
	hbox(a,2,HG_HEIGHT,55);
	hbox(a,2,HG_PRIORITY,1);
	hbox(a,2,HG_DAMAGE,3);
	hbox(a,2,HG_ANGLE,361);
	hbox(a,2,HG_BASE_KNOCKBACK,5);
	hbox(a,2,HG_BASE_HITPAUSE,5);
	hbox(a,2,HG_VISUAL_EFFECT_X_OFFSET,20);
	hbox(a,2,HG_HIT_SFX,asset_get("sfx_blow_weak2"));
	hbox(a,2,HG_ANGLE_FLIPPER,6);
	hbox(a,2,HG_HITBOX_GROUP,-1);
}