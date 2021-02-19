//Upon death, reset charge variables and wall jumping
isCharging = false; //A bool state if the player is charging or not
isCharged = false; //Used for neutral special
//currentChargeTime = 0 + (runeB * 50);
chargeTimeLength = 84; //How long it takes for Amber to be fully charged. Measured in frames
isChargedAnimTimer = 0; //Used for updating the charged status VFX animation
wallJumpCount = 0; //Used for allowing Amber to wall jump 2 times
hasWallJumped = false; //Used to prevent the update from repeatedly increasing the wall jump count
totalDamageDealt = 0;
smokeBombCooldownTimer = 0;
yarnDashCooldownTimer = 0;
empoweredCooldownTimer = 1;
move_cooldown[AT_DSPECIAL] = 0;
chargeAttackReady = false;

attack = 0;

//Stop playing charge sfx 
sound_stop( asset_get( "sfx_ori_charged_flame_charge2" ) );
sound_stop(asset_get( "sfx_ori_bash_hit" ));


//Destroy the yarn ball
if (instance_exists(yarnBallObject))
{
    if (yarnBallObject.yBallIsProjectile == false)
        instance_destroy(yarnBallObject);
    else
        yarnBallObject.destroyed = true;
}
hasYarnBall = true;
isHoldingYarnBall = false;
yarnBallAimingPower = 0; //0 means not aiming. 1 is weak. 2 is medium. 3 is strong
yarnBallThrowPower = 0; //Velocity speed in which the yarn ball will be thrown
yarnBallThrowAngle = 0; //The angle/direction the yarn ball will be thrown
yarnBallObject = noone;
yarnDashPrevYPos = 0; //Used to fix the stuck on dropdown platforms
yarnDashSpeed = 15; //Changes between 10 and 15 if the yarnball is sitting on stage or not
yarnBallFollowedEnemy = noone;
yarnDashFrontHitbox = noone;
yarnDashAngleDirection = 0; //Used to rotate the sprite of Amber towards the yarn ball while dashing
yarnDashHitboxDirection = 0; //Since the hitbox pivot is in center instead of the feet, we need a seperate direction variable

//Yarn unmark enemies
with (asset_get("oPlayer")) 
{
    if (self != other)
    {
        if (enemyTouchingYarnBall == true)
        {
            enemyTouchingYarnBall = false;
            //sound_play(asset_get("sfx_blow_medium3"));
        }
    }
}