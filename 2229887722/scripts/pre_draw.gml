//var aImageColor = make_colour_rgb(0, 93, 122);

// FlagPart(c_red, 1/6, 0);
// FlagPart(c_orange, 1/6, 1/6);
// FlagPart(c_yellow, 1/6, 2/6);
// FlagPart(c_green, 1/6, 3/6);
// FlagPart(c_blue, 1/6, 4/6);
// FlagPart(c_purple, 1/6, 5/6);
// gpu_set_fog(0, c_white, 0, 0);


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

if(attack == AT_DSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window >= 10 && window <= 11){
    drawToYarn();
}


if(get_player_color(player) == 15){
    for (var i = 0; i < array_length_1d(afterimage_array); ++i)
    {
        var obj = afterimage_array[i];
        FlagPart(afterimage_array[i], c_red, 1/6, 0);
        FlagPart(obj, c_orange, 1/6, 1/6);
        FlagPart(obj, c_yellow, 1/6, 2/6);
        FlagPart(obj, c_green, 1/6, 3/6);
        FlagPart(obj, c_blue, 1/6, 4/6);
        FlagPart(obj, c_purple, 1/6, 5/6);
        // draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
    }
    gpu_set_fog(0, c_white, 0, 0);
}

switch (attack)
{
    //Laser Pointer Sprite for D-Strong
    case AT_DSTRONG:
        if (window >= 4 && window <= 14)
            draw_sprite_ext( dStrongLaserSprite, image_index, dStrongLaserSpawnX, y, spr_dir, 1, 0, c_white, 1);
        //draw_sprite(dStrongLaserSprite,image_index,dStrongLaserSpawnX,y);
        
        if (window == 13)
        {
            draw_sprite_ext( questionMarkEmoteSprite, 1, x + ( -7 * spr_dir), y - 39, 1, 1, 0, c_white, 1);
        }
    break;
    #region //Plushie Drawing
    case AT_TAUNT:
        if (tauntType == 2 && state == PS_ATTACK_GROUND && window == 1)
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
    break;
    #endregion
    case AT_EXTRA_3:
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
    break;
}

//Rune K projectile immunity sprite draw
if(runeK && totalDamageDealt == 50){
    draw_sprite_ext( sprite_get("shuriken_large_vfx"), shurikenSpriteIndex, x + 6 * spr_dir, y, spr_dir, image_yscale, image_angle, image_blend, image_alpha);
}

//Krispy: i got this from bar who got it from one of karu's characters i think
if(chargeAttackReady){
    var col_light = 6;
    var aura_offset = 2;
    
    var color = make_colour_rgb(95, 200, 228);
    
    gpu_set_fog(1, color, 0, 1);
    //set X's and set Y's
    for (var i_x = -aura_offset; i_x <= aura_offset; i_x += aura_offset) for (var i_y = -aura_offset; i_y <= aura_offset; i_y += aura_offset)
    {  
    	//don't draw in the center cuz bar is there
    	if (i_y != 0 && i_x != 0) draw_sprite_ext(sprite_index, image_index, x + i_x, y - i_y, 1*spr_dir, 1, spr_angle, c_white, 1);
    }
    gpu_set_fog(0, c_white, 0, 0);
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

#define FlagPart(_obj, _colour, _heightRatio, _xOffsetRatio)
{
	gpu_set_fog(1, _colour, 0, 1);
//	draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
	draw_sprite_part_ext(_obj.sprite_index, _obj.image_index, 0, _obj.sprite_height*_xOffsetRatio, _obj.sprite_width*_obj.spr_dir, _obj.sprite_height*_heightRatio, _obj.x+0*2+draw_x-_obj.sprite_xoffset*(1+small_sprites), _obj.y+(draw_y-_obj.sprite_yoffset+_obj.sprite_height*_xOffsetRatio)*(1+small_sprites), _obj.spr_dir*(1+small_sprites), 1+small_sprites, c_white, 1-_obj.timer/_obj.timerMax);
}

#define drawToYarn
if(instance_exists(yarnBallObject)){
    var distance_from_yarn = point_distance(yarnBallObject.x, yarnBallObject.y, x, y);
    var segment_length = 8;
    var num_segments = floor(distance_from_yarn/segment_length);
    var char_y = y-char_height/2;
    var col_r = get_color_profile_slot_r( get_player_color(player), 4);
	var col_g = get_color_profile_slot_g( get_player_color(player), 4);
	var col_b = get_color_profile_slot_b( get_player_color(player), 4);
	
	var _col = make_colour_rgb(col_r, col_g, col_b);
    
    if(yarnDashIsEmpowered){
    	_col = make_colour_rgb(95, 200, 228)
    }
    
    for(var i = 0; i < num_segments; i+=2){
        var _x = ease_linear(yarnBallObject.x, x, i, num_segments);
        var _y = ease_linear(yarnBallObject.y, y-char_height/2, i, num_segments);
        var _xx = ease_linear(yarnBallObject.x, x, i+1, num_segments);
        var _yy = ease_linear(yarnBallObject.y, y-char_height/2, i+1, num_segments);
        draw_line_width_colour(_x, _y, _xx, _yy, 4, _col, _col);
    }
    // draw_line_width_colour(x, y-char_height/2, yarnBallObject.x, yarnBallObject.y, 4, c_white, c_white);
}