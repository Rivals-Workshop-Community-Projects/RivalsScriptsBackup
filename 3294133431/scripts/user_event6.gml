
//---------------- UpdateTaunt

//reset stuff
set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_TAUNT_2, AG_LANDING_LAG, 0);
set_attack_value(AT_TAUNT_2, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(AT_TAUNT_2, AG_USES_CUSTOM_GRAVITY, 0);
for(var i = 1; i < 32; i++)
{
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_TYPE, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_LENGTH, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_ANIM_FRAMES, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_ANIM_FRAME_START, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_HSPEED, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_VSPEED, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_HSPEED_TYPE, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_VSPEED_TYPE, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_CUSTOM_GRAVITY, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_HAS_WHIFFLAG, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_INVINCIBILITY, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_HITPAUSE_FRAME, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_CANCEL_TYPE, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_CANCEL_FRAME, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_HAS_SFX, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_SFX, 0);
    set_window_value(AT_TAUNT_2, i, AG_WINDOW_SFX_FRAME, 0);
}

if(chars[charIndex] == "zet")
{
    set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
    //set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("zet_taunt"));
    
    set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);
    set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
    set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
    //set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
    
    set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
    set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 20);
    set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
    set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
    set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
    set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
    set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
    set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
    set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 10);
    set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
    set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 40);
    set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 10);
    set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
    set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
    set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
    set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
    set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
    set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_disappear"));
    set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 2);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "smoke")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("smoke_taunt"));
	
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
	
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 10);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 44);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 11);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_disappear"));
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 25);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "sword")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("smoke_taunt"));
	
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
	
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 10);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 44);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 11);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_disappear"));
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 25);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "moth")
{
	set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
	
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
	
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	//Thumbs up
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 30);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 7);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
	//set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
	//Thumbs down
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 30);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 7);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 10);
	//set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "bug")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("bug_taunt"));
	
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 0);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("bug_hurtbox"));
	
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 10);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 52);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 13);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_crunch"));
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 20);
	
	var temp_attack = AT_TAUNT_2;
	var temp_num = 1;
	
	set_num_hitboxes(temp_attack, 1);
	set_hitbox_value(temp_attack, temp_num, HG_PARENT_HITBOX, 1);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 1);
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 1);
	set_hitbox_value(temp_attack, temp_num, HG_WINDOW_CREATION_FRAME, 12);
	set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 3);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 26);
	set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -5);
	set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 20);
	set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 10);
	set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 1);
	set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 1);
	set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 2);
	set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 270);
	set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 3);
	set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, .3);
	set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, .25);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, 0);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
	set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 10);
	set_hitbox_value(temp_attack, temp_num, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
	
	global.zethit[temp_attack,temp_num+25] = 2;
	set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
}
else if(chars[charIndex] == "fer")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("fer_taunt"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 1);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("orca_hurtbox"));
	
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 68);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 17);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_plant_fat"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 2);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "wolf")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("wolf_taunt_spr"));
	
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 5);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 0);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 0);
	set_attack_value(AT_TAUNT_2, AG_LANDING_LAG, 0);
	//set_attack_value(AT_TAUNT_2, AG_AIR_SPRITE, 0);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("wolf_taunt_hurt"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 14);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 0);
	
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pillar"));
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 0);
	
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 2);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 24);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 8);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 13);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX, asset_get("sfx_syl_uspecial_travel_start"));
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX_FRAME, 0);
	
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 3);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 21);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_pillar"));
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX_FRAME, 10);
	
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 3);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 27);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_shatter"));
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_SFX_FRAME, 2);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "punch")
{
	set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 6);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("olym_hurtbox"));
	
	//Taunt A
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
	
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 2);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 4);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_icehit_weak1"));
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 3);
	
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 3);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 55);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 9);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX, asset_get("mfx_flashy_shing"));
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX_FRAME, 4);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_GOTO, 7);
	
	//Taunt B
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 3);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 19);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 14);
	
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 45);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 20);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_SFX, asset_get("mfx_star"));
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_TAUNT_2, 6, AG_WINDOW_TYPE, 2);
	set_window_value(AT_TAUNT_2, 6, AG_WINDOW_LENGTH, 15);
	set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_TAUNT_2, 6, AG_WINDOW_ANIM_FRAME_START, 25);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "orca")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("orca_taunt"));
	
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 0);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	set_attack_value(AT_TAUNT_2, AG_LANDING_LAG, 0);
	//set_attack_value(AT_TAUNT_2, AG_AIR_SPRITE, 0);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("orca_hurtbox"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 40);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 10);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_watergun_fire"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 8);
	
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 2);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 10);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HITPAUSE_FRAME, 2);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_orca_bite"));
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 0);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "bear")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("bear_taunt"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 0);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	set_attack_value(AT_TAUNT_2, AG_LANDING_LAG, 0);
	//set_attack_value(AT_TAUNT_2, AG_AIR_SPRITE, 0);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("bear_taunt_hurt"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 40);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 10);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_ice_sleep"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 9);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 52);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 13);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 10);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 5);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 23);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX, asset_get("sfx_ice_wake"));
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX_FRAME, 1);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "frog")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("frog_taunt_spr"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 5);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 0);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	set_attack_value(AT_TAUNT_2, AG_LANDING_LAG, 0);
	//set_attack_value(AT_TAUNT_2, AG_AIR_SPRITE, 0);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_frog_nspecial_cast"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 2);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 40);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 6);
	
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 2);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 20);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 2);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 40);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 8);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 15);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX, asset_get("sfx_swish_medium"));
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX_FRAME, 6);
	
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 5);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 8);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 23);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "stinky")
{
	set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("hodan_hurt_box"));
	
	// Startup
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 6);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 5);
	
	// Ass Wipe
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 48);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 12);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
	
	// Endlag
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 9);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 14);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "bird")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("bird_taunt"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 1);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 0);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	set_attack_value(AT_TAUNT_2, AG_LANDING_LAG, 0);
	//set_attack_value(AT_TAUNT_2, AG_AIR_SPRITE, 0);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 60);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 15);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 2);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "goat")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("goat_taunt"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 0);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	set_attack_value(AT_TAUNT_2, AG_LANDING_LAG, 0);
	//set_attack_value(AT_TAUNT_2, AG_AIR_SPRITE, 0);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 28);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_taunt"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 6);
	
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 2);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 28);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 5);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "mech")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("mech_taunt_spr"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 0);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("bear_hurtbox"));
	
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 21);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 7);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 6);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 0);
	
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 3);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 13);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "mouse")
{
	set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 4);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, sprite_get("idle_hurt"));
	
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
	
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 15);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
	
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 2);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 16);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
	
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 3);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 3);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);
	
	set_num_hitboxes(AT_TAUNT_2, 1);
	
	set_hitbox_value(AT_TAUNT_2, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW_CREATION_FRAME, 14);
	set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 999);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 32);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, -32);
	set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 25);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 25);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 3);
	set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 3);
	set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 70);
	set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING, .4);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, asset_get("mouse_mic_proj"));
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GRAVITY, .3);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
}
else if(chars[charIndex] == "cat")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("cat_taunt"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 5);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("cat_hurtbox"));
	
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 21);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_ori_taunt"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 1);
	
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 24);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_ori_taunt2"));
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 8);
	
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 2);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 13);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_SFX, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 30);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 15);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_SFX, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_SFX_FRAME, 2);
	
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 21);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_HAS_SFX, 0);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_SFX_FRAME, 2);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "gus")
{
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, 0);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("gus_taunt_spr"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 5);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 0);
	//set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
	
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 14);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 12);
	
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 18);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX, asset_get("sfx_chest_open"));//sfx_chester_appear"));
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_SFX_FRAME, 0);
	
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 28);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 13);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_LENGTH, 33);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAMES, 10);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_ANIM_FRAME_START, 32);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_TYPE, 3);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_LENGTH, 33);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAMES, 11);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_ANIM_FRAME_START, 21);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
	set_window_value(AT_TAUNT_2, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
	
	set_num_hitboxes(AT_TAUNT_2, 1);
	
	set_hitbox_value(AT_TAUNT_2, 1, HG_PARENT_HITBOX, 1);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_TYPE, 2);
	set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW, 2);
	set_hitbox_value(AT_TAUNT_2, 1, HG_WINDOW_CREATION_FRAME, 8);
	set_hitbox_value(AT_TAUNT_2, 1, HG_LIFETIME, 120);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_X, 8);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HITBOX_Y, 0);
	set_hitbox_value(AT_TAUNT_2, 1, HG_WIDTH, 25);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HEIGHT, 25);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PRIORITY, 3);
	set_hitbox_value(AT_TAUNT_2, 1, HG_DAMAGE, 2);
	set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE_FLIPPER, 3);
	set_hitbox_value(AT_TAUNT_2, 1, HG_ANGLE, 70);
	set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_KNOCKBACK, 4);
	set_hitbox_value(AT_TAUNT_2, 1, HG_KNOCKBACK_SCALING, .4);
	set_hitbox_value(AT_TAUNT_2, 1, HG_BASE_HITPAUSE, 4);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HITPAUSE_SCALING, .4);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_SPRITE, asset_get("chester_spr"));
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_MASK, -1);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GRAVITY, 0);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
	set_hitbox_value(AT_TAUNT_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
	set_hitbox_value(AT_TAUNT_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
}
else if(chars[charIndex] == "ex")
{
	set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt"));
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 3);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 3);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 1);
	set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));
	
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 21);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, asset_get("sfx_sand_yell"));
	set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 19);
	
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 2);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 10);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
	set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
	
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_TYPE, 3);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 21);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 7);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);
	set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);
	
	set_num_hitboxes(AT_TAUNT_2, 0);
}
else if(chars[charIndex] == "custom" && !disguisedAsSelf)
{
	set_num_hitboxes(AT_TAUNT_2, 0);
	//TODO: also save hitboxes
	
	//TODO: find better way to iterate over key value pairs
	
	var tauntAttackValues = playerTauntAttackValues[playerDisguise-1];
	set_attack_value(AT_TAUNT_2, AG_CATEGORY, tauntAttackValues[? AG_CATEGORY]);
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, tauntAttackValues[? AG_SPRITE]); //TODO: this might not work? need to use sprite id?
	//set_attack_value(AT_TAUNT_2, AG_SPRITE, asset_get("__newsprite"+string(tauntAttackValues[? AG_SPRITE])));
	set_attack_value(AT_TAUNT_2, AG_AIR_SPRITE, tauntAttackValues[? AG_AIR_SPRITE]);
	set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, tauntAttackValues[? AG_HURTBOX_SPRITE]);
	set_attack_value(AT_TAUNT_2, AG_HURTBOX_AIR_SPRITE, tauntAttackValues[? AG_HURTBOX_AIR_SPRITE]);
	set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, tauntAttackValues[? AG_NUM_WINDOWS]);
	set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, tauntAttackValues[? AG_HAS_LANDING_LAG]);
	set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, tauntAttackValues[? AG_OFF_LEDGE]);
	set_attack_value(AT_TAUNT_2, AG_LANDING_LAG, tauntAttackValues[? AG_LANDING_LAG]);
	set_attack_value(AT_TAUNT_2, AG_STRONG_CHARGE_WINDOW, tauntAttackValues[? AG_STRONG_CHARGE_WINDOW]);
	set_attack_value(AT_TAUNT_2, AG_USES_CUSTOM_GRAVITY, tauntAttackValues[? AG_USES_CUSTOM_GRAVITY]);

	for(var i = 1; i < get_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS); i++)
	{
		var tauntWindowValues = playerTauntWindowValues[playerDisguise-1][| i-1];
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_TYPE, tauntWindowValues[? AG_WINDOW_TYPE]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_LENGTH, tauntWindowValues[? AG_WINDOW_LENGTH]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_ANIM_FRAMES, tauntWindowValues[? AG_WINDOW_ANIM_FRAMES]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_ANIM_FRAME_START, tauntWindowValues[? AG_WINDOW_ANIM_FRAME_START]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_HSPEED, tauntWindowValues[? AG_WINDOW_HSPEED]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_VSPEED, tauntWindowValues[? AG_WINDOW_VSPEED]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_HSPEED_TYPE, tauntWindowValues[? AG_WINDOW_HSPEED_TYPE]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_VSPEED_TYPE, tauntWindowValues[? AG_WINDOW_VSPEED_TYPE]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_HAS_CUSTOM_FRICTION, tauntWindowValues[? AG_WINDOW_HAS_CUSTOM_FRICTION]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_CUSTOM_AIR_FRICTION, tauntWindowValues[? AG_WINDOW_CUSTOM_AIR_FRICTION]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_CUSTOM_GROUND_FRICTION, tauntWindowValues[? AG_WINDOW_CUSTOM_GROUND_FRICTION]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_CUSTOM_GRAVITY, tauntWindowValues[? AG_WINDOW_CUSTOM_GRAVITY]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_HAS_WHIFFLAG, tauntWindowValues[? AG_WINDOW_HAS_WHIFFLAG]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_INVINCIBILITY, tauntWindowValues[? AG_WINDOW_INVINCIBILITY]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_HITPAUSE_FRAME, tauntWindowValues[? AG_WINDOW_HITPAUSE_FRAME]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_CANCEL_TYPE, tauntWindowValues[? AG_WINDOW_CANCEL_TYPE]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_CANCEL_FRAME, tauntWindowValues[? AG_WINDOW_CANCEL_FRAME]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_HAS_SFX, tauntWindowValues[? AG_WINDOW_HAS_SFX]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_SFX, tauntWindowValues[? AG_WINDOW_SFX]);
		set_window_value(AT_TAUNT_2, i, AG_WINDOW_SFX_FRAME, tauntWindowValues[? AG_WINDOW_SFX_FRAME]);
	}
}
	
/*
zet 2207198367
smoke 2207200555
sword 2207204437
moth 1871989159
bug 2207200046
fer 2207201931
wolf 2207205821
punch 1943759600
orca 2207199024
bear 2207202923
frog 2207205213
stinky 2136440419
bird 2207199559
goat 2207202461
mech 2207207013
mouse 1913517643
cat 2207203712
gus 2207207676
ex 1865940669
custom ...
*/