//HEARTBREAK FUNCTIONALITY (ARTICLE1_UPDATE)
//By: Delta Parallax

#macro HEART_ENTRANCE articleSprites[4]
#macro HEART_NORMAL articleSprites[0]

//The following code is basically the backend for the animation, movement, and hitbox creation.
heartArticleUpdate();

#define heartArticleUpdate

depth = player_id.heartDebug ? player_id.depth - 3 : 0;

//Check to see if the heart is broken.
if heartBroken
{
    //If so, unlink the player and clear the sprite
    sprite_index = asset_get("empty_sprite");
    
    //Next frame!
    heartBreakTimer++
    
    if (heartShouldClose and heartBreakState != 0 and instance_exists(heartDetectedPlayer) and array_find_index(doNotTrigger, heartDetectedPlayer.state) == -1 and heartDetectedPlayer.state_cat == SC_HITSTUN)
    {
        //Momentum dampening
        heartDetectedPlayer.hsp *= 0.9;
        heartDetectedPlayer.vsp *= 0.9;
        
        //Gravity field
        heartDetectedPlayer.x = lerp(heartDetectedPlayer.x,x,.04);
        heartDetectedPlayer.y = heartDetectedPlayer.free ? lerp(heartDetectedPlayer.y,y,.04) : heartDetectedPlayer.y;
    }
    
    //Check where in the animation you are.
    switch (heartBreakState)
    {
        case 0:
            //Outwards momentum + switching states
            heartBreakSplitX[1] = ease_quintOut(0, heartBreakRadius, heartBreakTimer, heartBreakMaxTimer[0])
            
            if (heartBreakTimer == heartBreakMaxTimer[0])
            {
                heartBreakTimer = 0
                heartBreakState = 1
            }
        break;
        case 1:
            //Shaking + switching states
            if heartBreakTimer > heartBreakDelay-120
            {
                var shakex, shakey;
                shakex = ((-heartBreakTimer + random_func(heartChainsPos+10,2*heartBreakTimer,true))/300)*heartShakeMult
                shakey = ((-heartBreakTimer + random_func(heartChainsPos+13,2*heartBreakTimer,true))/300)*heartShakeMult
                heartShake = [shakex, shakey]
            }
            //Look for the nearest player.
            heartDetectedPlayer = heartBreakDetectSelf ? instance_nearest(x,y,asset_get("oPlayer")) : chainedPlayer;
            //Make sure the detected object exists.
            if (instance_exists(heartDetectedPlayer) and array_find_index(doNotClose, heartDetectedPlayer.state) == -1)
            {
                var heart_threshold, xx, yy, heartx, hearty;
                xx = clamp(x, heartDetectedPlayer.bbox_left, heartDetectedPlayer.bbox_right);
                yy = clamp(y, heartDetectedPlayer.bbox_top, heartDetectedPlayer.bbox_bottom);
                // diff = sqrt(sqr(xx-x) + sqr(yy-y))
                
                //val = [heartDetectedPlayer.x, heartDetectedPlayer.y - (heartDetectedPlayer.char_height * .5) ]
                //threshold = [10, 10];
                heart_threshold = [heartBreakRadius+10, 30];
                // xx = clamp(x, val[0] - threshold[0], val[0] + threshold[0])
                // yy = clamp(y, val[1] - threshold[1], val[1] + threshold[1])
                
                heartx = [x - heart_threshold[0], x + heart_threshold[0]]
                hearty = [y - heart_threshold[1], y + heart_threshold[1]]
                
                heartShouldClose = findPoint(xx,yy,heartx[0],hearty[0],heartx[1],hearty[1]);
                //print_debug(string(diff) + " <= " + string(heartBreakRadius) + " : " + (close ? "YES":"NO") )
            }
            
            //Close if time is up or the heart needs to close
            if (heartBreakTimer == heartBreakDelay or heartShouldClose)
            {
                heartBreakTimer = 0
                heartBreakState = 2
            }
        break;
        case 2:
            //Reset the shake + inwards momentum + switching states
            heartShake = [0,0]
            heartBreakSplitX[1] = ease_quintIn(heartBreakRadius, 0, heartBreakTimer, heartBreakMaxTimer[1])
            
            if (heartBreakTimer == heartBreakMaxTimer[1])
            {
                heartBreakTimer = 0
                heartBreakState = 3
            }
        break;
        case 3:
            //Play a sound and create a hitbox right after the heart closes.
            //The heart destroys itself after a certain time.
            if (heartBreakTimer == 1)
            {
                var h = spawn_hit_fx(x, y-4, hit_heartflash);
                h.depth -= 9;
                sound_play(player_id.heartSounds[1]);
                create_hitbox(AT_EXTRA_1, 1, x, y-4);
            }
            else if (heartBreakTimer == heartReassembleDelay)
            {
                heartShouldDie = true;
            }
        break;
    
    }
}
else
{
    if sprite_index == HEART_ENTRANCE
    {
        maxframes = sprite_get_number(HEART_ENTRANCE)
        frame = min(frame+.25, maxframes);
        //print_debug(string(frame))
        image_index = floor(frame);
        if frame == maxframes sprite_index = HEART_NORMAL
    }
    else if sprite_index == HEART_NORMAL
    {
        image_index += (useCompatibility) ? chainedPlayer.heartAnimSpeed : 0;
    }
    
    
    
    //Check to see if the chained player actually exists.
    if instance_exists(chainedPlayer)
    {
        // muno blastzone code
        var blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
        var blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
        var blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
        var blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
        
        var died_h = chainedPlayer.x != clamp(chainedPlayer.x,blastzone_l,blastzone_r)
        var died_v = chainedPlayer.y != clamp(chainedPlayer.y,blastzone_t,blastzone_b)
        
        //Have they died? Unlink them and destroy the heart.
        if ( (chainedPlayer.state == PS_RESPAWN or chainedPlayer.state == PS_DEAD) or ((died_h or died_v) and chainedPlayer.state_cat = SC_HITSTUN))
        {
            if player_id.heartDebug print("P"+string(player_id.player)+"'s PC was destroyed.")
            
            chainedPlayer.heartChainPlayer = noone;
            heartShouldDie = true;
        }
        
        //Determine key points.
        var center, xx, yy;
        center = [ chainedPlayer.x, chainedPlayer.y - (chainedPlayer.char_height * .5) ];
        xx = x - center[0]
        yy = y - center[1]
        
        //Check if the distance is bigger than the threshold.
        if ( abs(xx) + abs(yy) > heartDistanceThreshold )
        {
            //If so, follow the player.
            hsp = lerp(hsp, -(xx * heartTension), heartLerpVal)  
            vsp = lerp(vsp, -(yy * heartTension), heartLerpVal)  
        }
        else
        {
            //If not, slow down.
            hsp *= heartFriction;
            vsp *= heartFriction;
        }
    }
}

with player_id
{
    if instance_exists(hit_player_obj) and hit_player_obj.activated_kill_effect
    {
         with other heartShouldDie = true;
    }
}

if heartShouldDie destroy_self()

#define findPoint(xa, ya, x1, y1, x2, y2) 
//online code at geeks for geeks
if (xa > x1 and xa < x2 and ya > y1 and ya < y2) 
    return true; 
    
return false; 

#define destroy_self

//Helper function for article1_update.
player_id.heartBreakInProgress = false;
chainedPlayer.heartChainPlayer = noone;
player_id.heartChains[heartChainsPos] = noone;
chainedPlayer.heartPosition = -1;
instance_destroy()