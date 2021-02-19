//Yarn Ball Update
//Physics

if (yarnType == 0)
{
    //Modified from Djent's Targma code
    can_be_grounded = true;
    //free = false;
    //If somehow this yarnball ends up in the air (such as the platform below it disappearing)
    //Return it back to hitbox yarnball state
    //if (free)
    //vsp = 1;
    
    
    if (free == true)
    {
        if (y == yBallPrevYPos)
        {
            var oldYarnBallObj = player_id.yarnBallObject;
            player_id.yarnBallObject = create_hitbox( AT_DSPECIAL, 1, oldYarnBallObj.x, oldYarnBallObj.y);
            instance_destroy();
            exit;
        }
        if (vsp == 0)
            yBallPrevYPos = y;
    }
    
    
    //Destroy this article if it's offstage
    if (y > get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_Y_POS)
    || x < get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE)
    || x > room_width + get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE))
    {
        //instance_destroy();
        despawnYarnBall();
        exit;
    }
    
    //Clarien's No Fun Zone
    if (position_meeting(x, y, asset_get("plasma_field_obj"))) 
    {
    	despawnYarnBall();
    	sound_play(asset_get("sfx_clairen_hit_med"));
    	spawn_hit_fx(x,y,hit_fx_create(sprite_get("sparkfx1"), 10));
    }
    
    if (player_id.hasYarnBall == true)
    {
        instance_destroy();
        exit;
    }
    
    
    if (yBallIsTouchingEnemy == false)
    {
        //yarnUnmarkEnemies();
    }
    
    //Hitbox interaction (modified from Targma code)
    with (asset_get("pHitBox")) 
    {
        if (place_meeting(x,y,other) 
        && player != 0 )
        {
            
        	//switch(attack)
        	//{
    			//default:
    	        	//other.hsp = lengthdir_x(1*kb_value, get_hitbox_angle(id));
    	        	//other.vsp = lengthdir_y(1*kb_value, get_hitbox_angle(id));
    				//break;
        	//}
            
            //other.speed_kb = kb_value*2;
            //other.free = true;
            
            
            if (player_id != other.player_id)
    		{
    		    player_id.enemyTouchingYarnBall[player - 1] = false;
    		    other.yBallWasHitByEnemy = true;
    		}
    		else if (other.yBallWasHitByEnemy == true)
    		    other.yBallWasHitByEnemy = false;
    		    
    		//Ori Bash check. This article can't be bash hit if Amber is close to the yarn ball (to prevent bugs)
    		if (player_id.url == CH_ORI && attack == 17 && hbox_num == 1)
    		{
    		    /*
    		    var amberCloseToYarn = false;
    		    var amberCloseToOri = false;
    		    with (other.player_id)
    		    {
    		    amberCloseToYarn = (distance_to_object( yarnBallObject ) < 18);
    		    amberCloseToOri = (distance_to_object( other.player_id ) < 28);
    		    }
    		    
    		    if (amberCloseToYarn == false)
    		    {
        		    launchYarnBall(player_id, 8 * other.yBallKnockbackAdj, get_hitbox_angle(id), player, self);
        		    player_id.window = 1;
        		    player_id.window_timer = 1;
    		    }
    		    */
    		}
            //Prevent Amber from knocking back the yarnball from the yarn dash hitbox
            //Also don't launch the yarn ball if the kb value is too low
    		else if (!(player_id == other.player_id && hbox_num == 4 && attack == AT_DSPECIAL) &&
    			!(player_id == other.player_id && hbox_num == 2 && attack == AT_DSPECIAL)
    			&& kb_value > 0.1 && !(kb_value < 2 && lengthdir_x(kb_value, get_hitbox_angle(id)) == 0 ))
    		{
    		    with(player_id){
    		        has_hit = true;
    		    }
                launchYarnBall(player_id, kb_value * other.yBallKnockbackAdj, get_hitbox_angle(id), player, self);
                exit;
    		}
    		
    		
            
            //break;
        }
    }
    /*
    if (variable_instance_exists(self, "oriExists"))
    {
        if (oriExists == true)
        {
            with (asset_get("oPlayer"))
            {
                if (url == CH_ORI)
                {
                    if (attack == AT_DSPECIAL && (window == 1 && window_timer >= 7 || window == 2 && window_timer < 10) && (distance_to_object( other ) < 28))
                    {
                        bashYarnBall(other.x, other.y);
                    }
                }
            }
        }
    }
    */
    
    if (getting_bashed == true)
    {
        with (bashed_id)
        {
            window = 1;
            window_timer = 6;
        }
        newBashYarnBall(x,y);
        exit;
    }
    
}
else if (yarnType == 2)
{
    if (instance_exists(yBallTrackingArticle) && getting_bashed == false)
    {
        if (x != yBallTrackingArticle.x)
            x = yBallTrackingArticle.x;
        if (y != yBallTrackingArticle.y)
            y = yBallTrackingArticle.y;
            
        //hurtbox interaction
        with (asset_get("pHurtBox")) 
        {
            if (instance_exists(other))
            {
                if (place_meeting(x,y,other) 
                && player != other.player_id.player)
                {
                    
                    //other.yBallTrackingArticle.yBallIsTouchingEnemy = true;
                    other.player_id.yarnBallMarkedEnemies[player - 1] = true;
                    yarnMarkEnemy(other.player_id.player, player);
                    //sound_play(asset_get("sfx_infinidagger"));
                    /*
                    if (enemyTouchingYarnBall == false)
                    {
                        enemyTouchingYarnBall = true;
                        sound_play(asset_get("sfx_infinidagger"));
                    }
                    */
                }
                else if (!place_meeting(x,y,other) && player != other.player_id.player )
                {
                    /*
                    if (other.yBallTrackingArticle.yBallMarkedEnemies[0] == false &&
                        other.yBallTrackingArticle.yBallMarkedEnemies[1] == false &&
                        other.yBallTrackingArticle.yBallMarkedEnemies[2] == false &&
                        other.yBallTrackingArticle.yBallMarkedEnemies[3] == false)
                        {
                            other.yBallTrackingArticle.yBallMarkedEnemies[player - 1] = false;
                            //other.yBallTrackingArticle.yBallIsTouchingEnemy = false;
                            yarnUnmarkEnemy(player);
                        }
                        */
                        other.player_id.yarnBallMarkedEnemies[player - 1] = false;
                        //other.yBallTrackingArticle.yBallIsTouchingEnemy = false;
                        //Check the other Amber to make sure their yarn ball is not touching the enemy either
                        
                        yarnUnmarkEnemy(other.player_id.player, player);
                }
            }
        }
    }
    else
    {
        instance_destroy();
        exit;
    }
}


#define despawnYarnBall
{
    for (i = 0; i < 3; i++){
        other.player_id.yarnBallMarkedEnemies[i] = false;
    }
    player_id.hasYarnBall = true;
    instance_destroy();
}

#define launchYarnBall
//Arguments (playerOwnerId, hitBoxKnockback, hitBoxAngle, hBoxOwner, hitboxObj)
with (other.player_id)
{
    var oldYarnBallObj = yarnBallObject;
    sound_play(asset_get("sfx_blow_weak1"));
    set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
    yarnBallObject = create_hitbox( AT_DSPECIAL, 1, oldYarnBallObj.x, oldYarnBallObj.y);
    //yarnBallObject.player_id = argument[0];
    yarnBallObject.player = argument[0].player;
    
    yarnBallObject.hsp = lengthdir_x(argument[1], argument[2]);
    yarnBallObject.vsp = lengthdir_y(argument[1], argument[2]);
    yarnBallObject.yBallWasHitByEnemy = oldYarnBallObj.yBallWasHitByEnemy;
    
    switch (argument[4].hit_flipper)
    {
    case 3:
        //sound_play(asset_get("sfx_infinidagger"));
    	yarnBallObject.hsp = lengthdir_x(argument[1], argument[2]);
        yarnBallObject.vsp = lengthdir_y(argument[1], argument[2]);
    	
    	yarnBallObject.hsp *= sign( x - argument[4].x);
    	//yarnBallObject.hsp = -yarnBallObject.hsp;
    break;
    case 4:
        //sound_play(asset_get("sfx_infinidagger"));
    	yarnBallObject.hsp = lengthdir_x(argument[1], argument[2]);
        yarnBallObject.vsp = lengthdir_y(argument[1], argument[2]);
    	
    	yarnBallObject.hsp *= sign( argument[4].x - x);
    	//yarnBallObject.hsp = -yarnBallObject.hsp;
    break;
    default:
        yarnBallObject.hsp = lengthdir_x(argument[1], argument[2]);
        yarnBallObject.vsp = lengthdir_y(argument[1], argument[2]);
    break;
    }
    //yarnBallObject.yBallIsTouchingEnemy = oldYarnBallObj.yBallIsTouchingEnemy;
    //yarnBallObject.player = argument[3];
    spawn_hit_fx( yarnBallObject.x, yarnBallObject.y, 301 );
    
}
instance_destroy();
exit;

#define bashYarnBall
//Arguments (x position of yarn, y position of yarn)
//With original owner (Amber)
with (other.player_id)
{
    var oldYarnBallObj = yarnBallObject;
    yarnBallObject = create_hitbox( AT_DSPECIAL, 1, argument[0], argument[1] - 2);
    //yarnBallObject.player_id = argument[0];
    yarnBallObject.player = other.player;
}
//window = 1;
//window_timer = 1;
instance_destroy();

#define newBashYarnBall
with (player_id)
{
var oldYarnBallObj = yarnBallObject;
yarnBallObject = create_hitbox( AT_DSPECIAL, 1, argument[0], argument[1] - 2);
//yarnBallObject.player_id = argument[0];

}
player_id.yarnBallObject.player = bashed_id.player;

//window = 1;
//window_timer = 1;
instance_destroy();


#define yarnMarkEnemy(playerNum, enemyPlayerNum)
//Arguments (playerNum)
with (asset_get("oPlayer")) 
{
    if (player == argument[1])
    {
        //sound_play(asset_get("sfx_infinidagger"));
        if (enemyTouchingYarnBall[argument[0] - 1] == false)
        {
            enemyTouchingYarnBall[argument[0] - 1] = true;
            //sound_play(asset_get("sfx_infinidagger"));
        }
    }
}
if (other.yBallTrackingArticle.yBallIsTouchingEnemy == false)
    other.yBallTrackingArticle.yBallIsTouchingEnemy = true;

#define yarnUnmarkEnemy(playerNum, enemyPlayerNum)
//Loop through other Ambers that exist. Make sure their yarn ball isn't touching the enemy either before unmarking enemies
if (other.player_id.clonedAmberExists == true)
{
    //var playerObjID = other.player_id;
    for (i = 0; i < 3; i++)
    {
        with (other.player_id.clonedEnemyAmber[i])
        {
            if (yarnBallMarkedEnemies[argument[0] - 1] == false)
            {
                //Remove yarn marked status on enemy
                with (asset_get("oPlayer")) 
                {
                    if (player == argument[1])
                    {
                        //sound_play(asset_get("sfx_infinidagger"));
                        if (enemyTouchingYarnBall[argument[0] - 1] == true)
                        {
                            enemyTouchingYarnBall[argument[0] - 1] = false;
                            //sound_play(asset_get("sfx_infinidagger"));
                        }
                    }
                }
            }
        }
        
    }
}
else if (other.player_id.thisIsAmber)
{
    //Remove yarn marked status on enemy
    with (asset_get("oPlayer")) 
    {
        if (player == argument[1])
        {
            //sound_play(asset_get("sfx_infinidagger"));
            if (enemyTouchingYarnBall[argument[0] - 1] == true)
            {
                enemyTouchingYarnBall[argument[0] - 1] = false;
                //sound_play(asset_get("sfx_infinidagger"));
            }
        }
    }
    for (i = 0; i < 3; i++) //Loop through our players list of marked enemies
    {
        //The moment we detect another marked player, set the yarnball touching enemy to true and leave this loop
        if (other.player_id.yarnBallMarkedEnemies[i] == true)
        {
            other.yBallTrackingArticle.yBallIsTouchingEnemy = true;
            break;
        }
        else if (other.yBallTrackingArticle.yBallIsTouchingEnemy == true)
            other.yBallTrackingArticle.yBallIsTouchingEnemy = false;
    }
    
}


#define yarnUnmarkEnemies
with (asset_get("oPlayer")) 
{
    if (self != other.player_id)
    {
        if (enemyTouchingYarnBall == true)
        {
            enemyTouchingYarnBall = false;
            //sound_play(asset_get("sfx_blow_medium3"));
        }
    }
}