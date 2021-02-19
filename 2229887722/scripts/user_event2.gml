//This event is for workshop compatibility interactions

//First make sure they are compatible to begin with
if ("amber_herObj" in targetPlayerHugID)
{
    targetPlayerHugID.amber_herObj = self;
    
    
    amberHugSprite = targetPlayerHugID.amber_herHugSprite;
    targetPlayerHugID.oPlayerHugAmberSprite = targetPlayerHugID.amber_thisHugSprite;
    amberHugCanExitTimer = targetPlayerHugID.amber_hugExitTimer;
    amberHugExitWindow = targetPlayerHugID.amber_hugExitWindow;
    
    if (targetPlayerHugID.amber_autoTurnToHer)
    {
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
    }
    with(targetPlayerHugID)
    {
        
        oPlayerHugAmberState = 2;
        
        oPlayerInitHugPos[0] = x;
        oPlayerInitHugPos[1] = y;
        
        oPlayerHugStartPos[0] = other.x + amber_hugStartPos[0] * (other.spr_dir * amber_useSprDirOffset);
        oPlayerHugStartPos[1] = other.y + amber_hugExitPos[1];
        
        oPlayerHugExitPos[0] = other.x + amber_hugExitPos[0] * (other.spr_dir * amber_useSprDirOffset);
        oPlayerHugExitPos[1] = other.y + amber_hugExitPos[1];
        oPlayerAmberID = other;
        
        oPlayerHugAmberSpriteLayer = amber_thisSpriteInFront;
        
        oPlayerTargetEaseTime = 10;
        oPlayerEaseTime = 0;
        
        //state = PS_WALK;
    }
    set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("another_pixel"));
    set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, sprite_get("another_pixel"));
    targetPlayerHugID.amber_startHug = true;
}