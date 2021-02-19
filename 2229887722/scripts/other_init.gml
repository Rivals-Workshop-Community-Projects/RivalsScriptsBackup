//This is the script for initializing variables on other players while Amber
//is in play
enemyYarnFinished = false;
enemyTempSprite = sprite_index;
enemyTempImgIndex = image_index;
enemyTempX = 0;
enemyTempY = 0;

enemyHitByDStrong = false;

for (i = 0; i <= 3; i++){
    enemyTouchingYarnBall[i] = false; //The array index represents the player number they got marked by
}

enemyDecimalDamage = 0; //When this reaches 1 or higher, extra damage is applied to their real damage value

enemyTestVar = 0;

enemyIsYarnDizzy = false;
enemyDizzyTimer = 0;

/*
//If this is a duplicate Amber player
if (real(url) == 1994508755)
{
    for (i = 0; i < 3; i++)
    {
        if (other_player_id.clonedEnemyAmber[i] == noone)
        {
            other_player_id.clonedEnemyAmber[0] = self;
            break;
        }
    }
}
*/
//Only initialize these variables if this character is from the base cast. Workshop characters will use their own compatible hug variables
//if (real(url) < 16) 
//{
    oPlayerHugAmberState = 0; //0 is neutral. 2 is ready to hug Amber, 3 is the actual hug, 4 is exiting. 1 is skipped for the sake of matching with Amber's state
    //otherPlayerHuggingAmber = false; //Becomes true once they Side + Taunt when Amber wants to hug them, or if the character is on CPU_STAND
    oPlayerAmberID = noone;
    oPlayerHugAmberSprite = noone; //Assigned from Amber/Player's script when Amber initiates hug or from the workshop character's end 
    oPlayerHugAmberIndex = 0; //Modified from Amber's scripts. Only for base casts
    oPlayerInitHugPos[1] = 0; //The position the player started at when accepting Amber's hug
    
    oPlayerHugStartPos[1] = 0; //The target point where the player should hug Amber at. Modified from user_event1.
    oPlayerHugExitPos[1] = 0; //The target point where the  player stands at when exiting hug state. Modified from user_event1.
    
    oPlayerEaseTime = 0;
    oPlayerTargetEaseTime = 0;
    oPlayerHugAmberSpriteLayer = 1; //0 is behind Amber. 1 is in front of her
//}