//This event is for removing yarn mark status from enemies and clearing yarn marked enemies. Called from Amber player object
//Clear our yarn marked enemies list
for (i = 0; i < 3; i++)
{
    yarnBallMarkedEnemies[i] = false;
}

if (clonedAmberExists == true)
{
    //Remove mark status from enemies
    for (i = 0; i < 3; i++)
    {
        //Check to make sure other Ambers don't have their yarn ball touching the enemy either
        with (clonedEnemyAmber[i])
        {
            var originalAmberID = other;
            for (ii = 0; ii < 3; ii++)
            {
                if (yarnBallMarkedEnemies[ii] == false)
                {
                    //Remove yarn marked status on enemy
                    with (asset_get("oPlayer")) 
                    {
                        if (player == other.ii + 1)
                        {
                            if (enemyTouchingYarnBall[originalAmberID.player - 1] == true)
                            {
                                enemyTouchingYarnBall[originalAmberID.player - 1] = false;
                            }
                        }
                    }
                }
            }
        }
    }
}
else
{
    //Remove yarn marked status on enemy
    with (asset_get("oPlayer")) 
    {
        if (self != other)
        {
            if (enemyTouchingYarnBall[other.player - 1] == true)
            {
                enemyTouchingYarnBall[other.player - 1] = false;
                //sound_play(asset_get("sfx_blow_medium3"));
            }
        }
    }
}

