//var aImageColor = make_colour_rgb(0, 93, 122);

//===============================================
//VFX Drawing
//===============================================
//if (drawChargeVfx == true)
//{
    //Draw charged status VFX if in charged state
    if (totalDamageDealt >= totalDamageDealtCap)
    {
        if (isChargedAnimTimer <= 29)
            draw_sprite_ext( charged_sprite_back, isChargedAnimTimer, x-34, y-112, 2, 2, 0, c_white, 0.75);
    }
//}

//Laser Pointer Sprite for D-Strong
if (attack == AT_DSTRONG)
{
    if (window >= 4 && window <= 14)
        draw_sprite_ext( dStrongLaserSprite, image_index, dStrongLaserSpawnX, y, spr_dir, 1, 0, c_white, 1);
    //draw_sprite(dStrongLaserSprite,image_index,dStrongLaserSpawnX,y);
    
    if (window == 13)
    {
        draw_sprite_ext( questionMarkEmoteSprite, 1, x + ( -7 * spr_dir), y - 39, 1, 1, 0, c_white, 1);
    }
}


shader_start();
//Afterimage effect
for (i = 0; i < afterImageMaxCount; i++)
{
    if (afterImageAlpha[i] > 0 && (attack != AT_DSPECIAL_2 || attack == AT_DSPECIAL_2 && window > 3))
    {
        draw_sprite_ext( afterImageSprIndex[i], afterImageImgIndex[i], afterImageXPos[i], afterImageYPos[i], afterImageSprDir[i], 1, afterImageRot[i], afterImageColor, afterImageAlpha[i]);
    }
}
shader_end();


#region //Plushie Drawing
if (attack == AT_TAUNT && tauntType == 2 && state == PS_ATTACK_GROUND && window == 1)
{
    switch(image_index)
    {
        case 2:
            draw_sprite_ext( targetPlushSprite, targetPlushIndex, x - (26 * spr_dir), y - 24, spr_dir * 2, 2, 0, c_white, 1);
        break;
        case 3:
            draw_sprite_ext( targetPlushSprite, targetPlushIndex, x - (6 * spr_dir), y - 24, spr_dir * 2, 2, 0, c_white, 1);
        break;
    }
}

#endregion

if (attack == AT_EXTRA_3)
{
    if (amberHugState > 2)
    {
        //Draw team outline around them if on same team. A heart!
        
        if (get_match_setting(SET_TEAMS) == true)
        {
            var amberHeartXOffset = 0;
            if (spr_dir == 1)
                amberHeartXOffset = -60;
                
            if (get_player_team(player) == 1)
                draw_sprite_ext( sprite_get("heart_team_outline"), spr_dir == -1, x + (6 * spr_dir) + amberHeartXOffset,y, 2, 2, 0, teamRedColor, 1);
            else if (get_player_team(player) == 2)
                draw_sprite_ext( sprite_get("heart_team_outline"), spr_dir == -1, x + (6 * spr_dir) + amberHeartXOffset,y, 2, 2, 0, teamBlueColor, 1);
            
            
            var targetPlayerHeartXOffset = 0;
            if (targetPlayerHugID.spr_dir == 1)
                targetPlayerHeartXOffset = -60;
            
            if (get_player_team(targetPlayerHugID.player) == 1)
                draw_sprite_ext( sprite_get("heart_team_outline"), targetPlayerHugID.spr_dir == -1, x + (6 * spr_dir) + targetPlayerHeartXOffset,y, 2, 2, 0, teamRedColor, 1);
            else if (get_player_team(targetPlayerHugID.player) == 2)
                draw_sprite_ext( sprite_get("heart_team_outline"), targetPlayerHugID.spr_dir == -1, x + (6 * spr_dir) + targetPlayerHeartXOffset,y, 2, 2, 0, teamBlueColor, 1);
        }
    }
}

//Respawn Platform Drawing
if (state == PS_RESPAWN)
{
    //draw_sprite(respawnPlatBehindSprite,floor(respawnPlatAnimTimer),x,y);
}


/*
gpu_set_fog(true, color, 1, 1);
\\\draw stuff here
gpu_set_fog(false, color, 1, 1);
*/