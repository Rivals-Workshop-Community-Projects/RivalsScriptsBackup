//This event is for A2Z special animation
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("another_pixel"));
set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, sprite_get("another_pixel"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, asset_get("hurtbox"));

//Enter
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 69);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 23);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, asset_get("sfx_diamond_collect")); 
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX_FRAME, 24);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 0);

//Loop
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 0);
//set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss")); 
//set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 0);

//Exit
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 0);

var targetPlayerUrl = real(targetPlayerHugID.url);
switch(targetPlayerUrl)
{
    case 2108764588: //Zerra
        startHugs(55, 0, 110, 0, true, 30, 3);
    break;
    case 1904437331: //Astra
        startHugs(23, 0, 46, 0, true, 30, 3);
    break;
    default:
        targetPlayerHugID.oPlayerHugAmberState = 0; 
    break;
}

var targetPlayerUrlTwo = real(targetPlayerHugIDTwo.url);
switch(targetPlayerUrlTwo)
{
    case 2108764588: //Zerra
        startHugs(55, 0, 110, 0, true, 30, 3);
    break;
    case 1904437331: //Astra
        startHugs(23, 0, 46, 0, true, 30, 3);
    break;
    default:
        targetPlayerHugIDTwo.oPlayerHugAmberState = 0; 
    break;
}

targetPlayerHugID.spr_dir = 1;

#define startHugs(startXOffset, startYOffset, endXOffset, endYOffset, renderInFrontOfAmber, exitTimer, exitWindow)
amberHugState = 2;
amberHugExitWindow = exitWindow;
print_debug("Starting hugs");
/*
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
*/
with(targetPlayerHugID){
    
    oPlayerHugAmberState = 2;
    oPlayerHugAmberSpriteLayer = renderInFrontOfAmber;
    
    
    oPlayerInitHugPos[0] = x;
    oPlayerInitHugPos[1] = y;
    
    oPlayerHugStartPos[0] = other.x + (startXOffset);
    oPlayerHugStartPos[1] = other.y + startYOffset;
    
    oPlayerHugExitPos[0] = other.x + (endXOffset);
    oPlayerHugExitPos[1] = other.y;
    oPlayerAmberID = other;
    
    oPlayerTargetEaseTime = 10;
    oPlayerEaseTime = 0;
    
    //state = PS_WALK;
}
with(targetPlayerHugIDTwo){
    
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