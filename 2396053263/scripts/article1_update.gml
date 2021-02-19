//HEARTBREAK FUNCTIONALITY (ARTICLE1_UPDATE)
//By: Delta Parallax

//The following code is basically the backend for the animation, movement, and hitbox creation.
heartArticleUpdate();

#define heartArticleUpdate

//Check to see if the heart is broken.
if heartBroken
{
    //If so, unlink the player and clear the sprite
    sprite_index = asset_get("empty_sprite");
    
    //Next frame!
    heartBreakTimer++
    
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
            var shakex, shakey, detected, close;
            shakex = ((-heartBreakTimer + random_func(heartChainsPos+10,2*heartBreakTimer,true))/300)*heartShakeMult
            shakey = ((-heartBreakTimer + random_func(heartChainsPos+13,2*heartBreakTimer,true))/300)*heartShakeMult
            heartShake = [shakex, shakey]
            
            //Look for the nearest player.
            detected = heartBreakDetectSelf ? instance_nearest(x,y,asset_get("oPlayer")) : chainedPlayer;
            close = false;
            //Make sure the detected object exists.
            if (instance_exists(detected))
            {
                var xx, yy, diff;
                xx = clamp(x, detected.bbox_left, detected.bbox_right);
                yy = clamp(y, detected.bbox_top, detected.bbox_bottom);
                diff = sqrt(sqr(xx-x) + sqr(yy-y))
                
                close = (diff <= heartBreakRadius)
                //print_debug(string(diff) + " <= " + string(heartBreakRadius) + " : " + (close ? "YES":"NO") )
            }
            
            //Close if time is up or the heart needs to close
            if (heartBreakTimer == heartBreakDelay or close)
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
                destroy_self()
            }
        break;
    
    }
}
else
{
    //Check to see if the chained player actually exists.
    if instance_exists(chainedPlayer)
    {
        //Have they died? Unlink them and destroy the heart.
        if chainedPlayer.state == PS_RESPAWN
        {
            chainedPlayer.heartChainPlayer = noone;
            destroy_self()
            exit;
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

#define destroy_self

//Helper function for article1_update.
player_id.heartBreakInProgress = false;
chainedPlayer.heartChainPlayer = noone;
player_id.heartChains[heartChainsPos] = noone;
instance_destroy()