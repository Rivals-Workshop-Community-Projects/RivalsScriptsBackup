//Debug drawing
//=====================
//with (pHitBox) draw_debug_text(x, y, `attack: ${attack}, hbox_num: ${hbox_num}`);
if (debugDrawEnabled)
{
    //if (debugYBallHitboxNum != 0)
    //{
        //draw_debug_text(x,y+20,string(debugYBallHitboxAttack));
        //draw_debug_text(x,y+40,string(debugYBallHitboxNum));
    //}
    /*
    var currWinLength = get_window_value( attack, window, AG_WINDOW_LENGTH);
    var whiffLagAdd = floor( ( (currWinLength * 1.5) - currWinLength ) * (get_window_value( attack, window, AG_WINDOW_HAS_WHIFFLAG)) + 0.5);
    var whiffLagCalc = currWinLength + whiffLagAdd - (whiffLagAdd * has_hit_player);
    
    draw_debug_text(x,y+20,string(currWinLength));
    draw_debug_text(x,y+40,string(whiffLagCalc) );
    //draw_debug_text(x,y+60,string(window));
    draw_debug_text(x,y+80,string(window_timer));
    */
    
    //draw_debug_text(x,y+20,string(amberHugA2ZReady));
    //draw_debug_text(x,y+40,string(targetPlayerHugID));
    //draw_debug_text(x,y+60,string(targetPlayerHugIDTwo));
    if (instance_exists(yarnBallObject))
    {
    draw_debug_text(yarnBallObject.x - 60,yarnBallObject.y+20, "Yarn Touching Enemy : " + string(yarnBallObject.yBallIsTouchingEnemy));
    }
    
    
    draw_debug_text(x,y+20, "Was Aiming Right Stick: " + string(yarnBallWasAimingRightStick));
    draw_debug_text(x,y+40, "Joy Idle : " + string(joy_pad_idle));
    //draw_debug_text(x,y+20, "State: " + string(state));
    //draw_debug_text(x,y+40, "State Timer: " + string(state_timer));
    //draw_debug_text(x,y+60,string(window));
    //draw_debug_text(x,y+80,string(window_timer));
    //draw_debug_text(x,y+40, "Wall Jumped: " + string(hasWallJumped));
    
    /*
    if (instance_exists(yarnBallObject))
    {
        if ("yBallMarkedEnemies" in yarnBallObject)
        {
            draw_debug_text(yarnBallObject.x,yarnBallObject.y+20, "1: " + string(yarnBallObject.yBallMarkedEnemies[0]));
            draw_debug_text(yarnBallObject.x,yarnBallObject.y+40, "2: " + string(yarnBallObject.yBallMarkedEnemies[1]));
            draw_debug_text(yarnBallObject.x,yarnBallObject.y+60, "3: " + string(yarnBallObject.yBallMarkedEnemies[2]));
            draw_debug_text(yarnBallObject.x,yarnBallObject.y+80, "4: " + string(yarnBallObject.yBallMarkedEnemies[3]));
        }
    }
    */
    /*
    draw_debug_text(x,y+20, "1: " + string(yarnBallMarkedEnemies[0]));
    draw_debug_text(x,y+40, "2: " + string(yarnBallMarkedEnemies[1]));
    draw_debug_text(x,y+60, "3: " + string(yarnBallMarkedEnemies[2]));
    draw_debug_text(x,y+80, "4: " + string(yarnBallMarkedEnemies[3]));
    
    
    draw_debug_text(x,y-20 - floor(char_height), "1: " + string(clonedEnemyAmber[0]));
    draw_debug_text(x,y-40 - floor(char_height), "2: " + string(clonedEnemyAmber[1]));
    draw_debug_text(x,y-60 - floor(char_height), "3: " + string(clonedEnemyAmber[2]));
    draw_debug_text(x,y-80 - floor(char_height), "4: " + string(clonedEnemyAmber[3]));
    draw_debug_text(x,y-100 - floor(char_height), "Cloned Amber Exists: " + string(clonedAmberExists));
    */
}
