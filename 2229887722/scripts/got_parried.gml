//This is a got parried script

if (my_hitboxID.attack == AT_JAB)
{
    if (my_hitboxID.hbox_num >= 2 && my_hitboxID.hbox_num != 7)
        state = PS_PRATFALL;
}

if (my_hitboxID.attack == AT_USPECIAL)
{
	hsp *= 0.5;
	air_accel = 0.1;
}

if (my_hitboxID.attack == AT_BAIR)
{
	hsp = 0;
	//air_accel = 0.1;
}

if (my_hitboxID.attack == AT_FSPECIAL)
{
	state = PS_PRATFALL;
}

if (my_hitboxID.attack == AT_DSPECIAL)
{
	//If the enemy parries the yarn projectile
	if (my_hitboxID.hbox_num == 1 && my_hitboxID.player == my_hitboxID.orig_player)
	{
	    hasYarnBall = true;
	    sound_play( asset_get("mfx_coin") );
	    if (yarnBallObject.yBallFollowingEnemy != noone)
	    {
	    	yarnBallObject.yBallFollowEnemyTimer = 0;
	    	yarnBallObject.yBallFollowingEnemy.enemyTouchingYarnBall = false;
	    	yarnBallObject.yBallFollowingEnemy = noone;
	    }
	    yarnBallObject.destroyed = true;
	    move_cooldown[AT_DSPECIAL] = yarnBallPunishCooldown;
		sound_play( asset_get("sfx_clairen_dspecial_counter_success") );
	}
}

if (my_hitboxID.attack == AT_DSTRONG)
{
	if (my_hitboxID.hbox_num == 1)
	{
		state = PS_PRATFALL;
	}
}

if (my_hitboxID.attack == AT_DTILT)
{
	if (my_hitboxID.hbox_num == 1)
	{
		state = PS_PRATFALL;
	}
}
