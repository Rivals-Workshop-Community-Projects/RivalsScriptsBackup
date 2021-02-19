//This event gets called when the other player has successfully Taunted near Amber when
//she was in amberWantsToHug state. This is for base characters. Check the character ID
//then play the animation appropriately
var targetPlayerUrl = real(targetPlayerHugID.url);
switch(targetPlayerUrl)
{
    case 10: //Ori
        set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("another_pixel"));
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, sprite_get("another_pixel"));
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
        
        //Enter
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect")); 
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);
        
        //Loop
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 30);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 10);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
        //set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss")); 
        //set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 8);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);
        
        //Exit
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 14);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);
        
        amberHugSprite = sprite_get("amber_hug_ori");
        targetPlayerHugID.oPlayerHugAmberSprite = sprite_get("ori_hug_amber");
        startHugs(30, 0, 30, 0, true, 30, 3);
    break;
    case 1865940669: //Sandbert
        set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("another_pixel"));
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, sprite_get("another_pixel"));
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
        set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));
        
        //Enter
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect")); 
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 8);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);
        
        //Loop
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 30);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 10);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 3);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
        //set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss")); 
        //set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 8);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);
        
        //Exit
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 9);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 14);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);
        
        amberHugSprite = sprite_get("amber_hug_ori");
        targetPlayerHugID.oPlayerHugAmberSprite = sprite_get("sandbert_hug");
        startHugs(30, 0, 30, 0, true, 30, 3);
    break;
    default:
        //Disable hugging if there was no compatible player somehow
        //amberHugState = 0;
        targetPlayerHugID.oPlayerHugAmberState = 0; 
    break;
}

#define startHugs(startXOffset, startYOffset, endXOffset, endYOffset, renderInFrontOfAmber, exitTimer, exitWindow)
amberHugState = 2;
amberHugExitWindow = exitWindow;
if (targetPlayerHugID.x < x)
{
    targetPlayerHugID.spr_dir = 1;
    spr_dir = -1;
}
else
{
    targetPlayerHugID.spr_dir = -1;
    spr_dir = 1;
}
with(targetPlayerHugID){
    
    oPlayerHugAmberState = 2;
    oPlayerHugAmberSpriteLayer = renderInFrontOfAmber;
    
    
    oPlayerInitHugPos[0] = x;
    oPlayerInitHugPos[1] = y;
    
    oPlayerHugStartPos[0] = other.x + (startXOffset * other.spr_dir);
    oPlayerHugStartPos[1] = other.y + startYOffset;
    
    oPlayerHugExitPos[0] = other.x + (endXOffset * other.spr_dir);
    oPlayerHugExitPos[1] = other.y;
    oPlayerAmberID = other;
    
    oPlayerTargetEaseTime = 10;
    oPlayerEaseTime = 0;
    
    //state = PS_WALK;
}

//set_attack(AT_EXTRA_3);

//Controlling the other player
