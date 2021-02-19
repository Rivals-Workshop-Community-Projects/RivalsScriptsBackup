//draw_debug_text( x, y + 80, string( gravity_speed));
//draw_debug_text( x, y + 80, string(y));
//draw_debug_text( x, y + 60, string( get_stage_data( SD_Y_POS) - y));
//draw_debug_text( x, y + 40, string( get_stage_data( SD_TOP_BLASTZONE)));
/*
draw_debug_text( x, y + 20, string( state));
draw_debug_text(x,y + 40 ,string(invince_time));
draw_debug_text(x,y + 60 ,string(invincible));
draw_debug_text(x,y + 80 ,string(wasPrePauseDodge));
*/
//draw_debug_text( x, y + 40, string( get_player_damage(player)));
//draw_debug_text( x, y + 80, string( tUtil_eLastHitboxHit.player));
//draw_debug_text( x, y + 60, string( tUtil_eLastAttackHit));
//draw_debug_text( x, y + 80, string( tUtil_eLastHitboxHit));
//draw_debug_text( x, y + 100, string( tUtil_eLastHitPlayer));
//draw_sprite(sprite_get("training_menu-main"), 1, x, y);

//draw_debug_text( x, y + 20, string( enemyDecimalDamage));
//draw_debug_text( x, y + 40, string( enemyTouchingYarnBall));
/*
draw_debug_text( x, y + 20, string( attack));
draw_debug_text( x, y + 40, string( window));
draw_debug_text( x, y + 60, string( window_timer));
*/

if (enemyIsYarnDizzy == true)
{
    draw_sprite(other_player_id.dizzyVfxSprite, enemyDizzyTimer, x, y - char_height - 16);
}


/*
if (oPlayerHugAmberState > 2)
{
    shader_start();
    draw_sprite_ext( oPlayerHugAmberSprite, oPlayerHugAmberIndex, oPlayerAmberID.x,oPlayerAmberID.y, 1, 1, 0, c_white, 1);
    shader_end();
}
*/
if (instance_exists(other_player_id))
if ("debugDrawEnabled" in other_player_id)
if (other_player_id.debugDrawEnabled && "thisIsAmber" not in self)
{
    /*
    draw_debug_text( x - 40, y + 20, "Marked by:" + string( enemyTouchingYarnBall[0]));
    draw_debug_text( x - 40, y + 40, "Marked by:" + string( enemyTouchingYarnBall[1]));
    draw_debug_text( x - 40, y + 60, "Marked by:" + string( enemyTouchingYarnBall[2]));
    draw_debug_text( x - 40, y + 80, "Marked by:" + string( enemyTouchingYarnBall[3]));
    */
    
    draw_debug_text( x - 40, y + 20, "Player #" + string(player));
    draw_debug_text( x - 40, y + 40, "Player KB" + string(orig_knock));
}
