//Used for overwriting the AT_TAUNT info to match the taunt that Amber is going to do
//based on the input pressed

switch(tauntType)
{
    //Jump Wave
    case 1:
        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
        set_attack_value(AT_TAUNT, AG_AIR_SPRITE, sprite_get("taunt"));
        set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
        set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
        //set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
        //set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
        set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
        
        //Pre jump
        set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 12);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 0);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
        
        //Jump
        set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
        set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 8);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED, -5);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED_TYPE, 2);
        
        //Wave
        set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 24);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 8);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 0);
        
        //Fall
        set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 15);
        
        //Fall Loop
        set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 8);
        set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 3);
        set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 16);
        
        //Land
        set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 5);
        set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 17);
    break;
    
    //Hug Plush
    case 2:
        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_hug_plush"));
        set_attack_value(AT_TAUNT, AG_AIR_SPRITE, sprite_get("taunt_hug_plush"));
        set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
        set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
        set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
        
        //Pre jump
        set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 20);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 5);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
        set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 14);
        
        set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 60);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 5);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 20);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 0);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED_TYPE, 0);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED, 0);
        //set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
        //set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 1);
        
    break;
    
    case 3: //Ready to Hug
        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_hug_ready"));
        set_attack_value(AT_TAUNT, AG_AIR_SPRITE, sprite_get("taunt_hug_ready"));
        set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);
        set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
        set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
        
        //Loop
        set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 9);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 60);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 0);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 20);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 0);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_VSPEED_TYPE, 0);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_VSPEED, 0);
        
        //Cancel startup
        set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 20);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 0);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED_TYPE, 0);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("mfx_back"));
        set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 2);
        
        //Cancel pause endlag
        set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 18);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 21);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 0);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_VSPEED_TYPE, 0);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_VSPEED, 0);
        
        //Cancel to idle
        set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 3);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 22);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 0);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_VSPEED_TYPE, 0);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_VSPEED, 0);
        
        //Play the sfx the moment this taunt gets activated, so that the sfx
        //doesn't play during the loop in window 1
        sound_play(asset_get("mfx_forward"), false, false, 1, 1.1);
    break;
    
    case 10:
        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt_thinking"));
        set_attack_value(AT_TAUNT, AG_AIR_SPRITE, sprite_get("taunt_thinking"));
        set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
        //set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
        //set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
        set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
        
        //Startup
        set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 5);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("mfx_forward"));
        set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
        
        //Loop
        set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 60);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 20);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 0);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED_TYPE, 0);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED, 0);
        
        //End
        set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 23);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 1);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("mfx_back"));
    break;
    
    //Default Jump Wave
    default:
        set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
        set_attack_value(AT_TAUNT, AG_AIR_SPRITE, sprite_get("taunt"));
        set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 6);
        set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
        //set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
        //set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
        set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
        
        //Pre jump
        set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 12);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 0);
        
        //Jump
        set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
        set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 8);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED, -5);
        set_window_value(AT_TAUNT, 2, AG_WINDOW_VSPEED_TYPE, 2);
        
        //Wave
        set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 24);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 8);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_TAUNT, 3, AG_WINDOW_VSPEED_TYPE, 1);
        
        //Fall
        set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 6);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 15);
        
        //Fall Loop
        set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 8);
        set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 3);
        set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
        set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 16);
        
        //Land
        set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
        set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 5);
        set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 17);
        #endregion 
    break;
}
