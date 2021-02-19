//Draw hud script
shader_start();
if (variable_instance_exists(self, "hasYarnBall")) 
    if (hasYarnBall == true)
    {
        var temp_color = c_white;
        if (move_cooldown[AT_DSPECIAL] > 0) temp_color = c_gray;
        draw_sprite_ext(sprite_get("yarnball_icon"), 0, temp_x+186, temp_y-12, 2, 2, 0, temp_color, 1);
        //draw_sprite_ext(sprite_get("yarnball_icon"), 0, temp_x+122, temp_y-12, 2, 2, 0, temp_color, 1);
    }
    else
    {
        var temp_color2 = c_white;
        if (yarnDashCooldownTimer > 0) temp_color2 = c_gray;
        draw_sprite_ext(sprite_get("yarndash_icon"), 0, temp_x+176, temp_y-12, 2, 2, 0, temp_color2, 1);
    }
shader_end();

//Draw meter
//var temp_color3 = c_white;
if (variable_instance_exists(self, "totalDamageDealt")) 
{
    draw_sprite_ext(sprite_get("meter_hud"), floor(totalDamageDealt + 0.5), temp_x+0, temp_y-12, 2, 2, 0, c_white, 1);
    
    //Draw meter glow when full boost
    if (totalDamageDealt == totalDamageDealtCap)
    {
        if (totalDamageMeterGlowTimer < 20)
        {
            totalDamageMeterGlowAlpha = ease_sineOut(0, 1, totalDamageMeterGlowTimer, 20);
            totalDamageMeterGlowTimer++;
        }
        else if (totalDamageMeterGlowTimer <= 40 && totalDamageMeterGlowTimer >= 20)
        {
            totalDamageMeterGlowAlpha = ease_sineIn(1, 0, totalDamageMeterGlowTimer, 40);
            totalDamageMeterGlowTimer++;
        }
        else if (totalDamageMeterGlowTimer > 40)
            totalDamageMeterGlowTimer = 0;
        
        draw_sprite_ext(sprite_get("meter_hud_glow"), 1, temp_x-2, temp_y-14, 1, 1, 0, c_white, totalDamageMeterGlowAlpha);
    }
    
    if (chargeAttackReady)
        init_shader();



    if (infiniteMeter == true && inTraining == true)
        draw_debug_text( temp_x, temp_y - 40, string ("Infinite Meter On"));


    if (pacifistModeEnabled == true)
        draw_sprite_ext(sprite_get("pacifist_icon"), 0, temp_x+136, temp_y-26, 2, 2, 0, c_white, 1);
    
    
    if (get_gameplay_time() > 150 && inTraining && get_gameplay_time() <= 390)
        draw_debug_text( temp_x, temp_y - 60, string ("Taunt to open Tutorial Menu"));
        
    //Draw controller swapping
    if (get_gameplay_time() <= 150)
    {
        draw_sprite_ext(sprite_get("hud_control_switch_text"), 0, temp_x - 6, temp_y - 92, 2, 2, 0, c_white, 1); //108, 100
        
        if (keyboardSwappingAnimTimer <= 0)
            draw_sprite_ext(sprite_get("hud_control_option" + string(keyboardModeEnabled)), floor(get_gameplay_time() * 0.05), temp_x + 108, temp_y - 92, 2, 2, 0, c_white, 1);
        else
            draw_sprite_ext(sprite_get("hud_control_swapping"), 35 - keyboardSwappingAnimTimer, temp_x + 108, temp_y - 92, 2, 2, 0, c_white, 1);
    }
}


    



#region//Scroll Menu HUD
if (attack == AT_TAUNT && tauntType == 10 && tutCurrentMenuCategory == 2 && state == PS_ATTACK_GROUND)
{
    #region //Draw the Scroll Menu
        //Main Scroll
        draw_sprite_ext( sprite_get("menu_main_scroll_edges"), 0, 244, 20, 2, 2, 0, c_white, 1);
        draw_sprite_ext( sprite_get("menu_main_scroll_body"), 0, 244, 20, 2, 2, 0, c_white, 1);
        
        //Side Scroll
        draw_sprite_ext( sprite_get("menu_side_scroll_edges"), 0, 8, 28, 2, 2, 0, c_white, 1);
        draw_sprite_ext( sprite_get("menu_side_scroll_body"), 0, 8, 28, 2, 2, 0, c_white, 1);
        
        //Main Scroll Static Texts
        //Headline
        draw_sprite_ext( sprite_get("menu_text_moveset"), 0, 370, 76, 2, 2, 0, c_white, 1);
        //Move Name
        draw_sprite_ext( sprite_get("menu_text_move_names"), tutScrollCurrentMove, 324, 144, 2, 2, 0, c_white, 1);
        //Icon BG
        draw_sprite_ext( sprite_get("menu_moveset_icon_bg"), 0, 702, 64, 2, 2, 0, c_white, 1);
        //Move Icon Frame
        drawMoveIcon();
        
        
        
        #region//Side Scroll Elements
            if (tutScrollCurrentMoveCategory < tutScrollMoveMaxCategory) //Show down arrow
                draw_sprite_ext( sprite_get("menu_side_scroll_big_arrow"), 0, 78, 374, 2, -2, 0, c_white, 1);
            if (tutScrollCurrentMoveCategory > 0) //Show up arrow
                draw_sprite_ext( sprite_get("menu_side_scroll_big_arrow"), 0, 78, 108, 2, 2, 0, c_white, 1);
            if (tutScrollCurrentMoveCategory == 0)
                draw_sprite_ext( sprite_get("menu_side_scroll_u_arrow"), 0, 100, 140, 2, -2, 0, c_white, 1);
            if (tutScrollCurrentMoveCategory == tutScrollMoveMaxCategory)
                draw_sprite_ext( sprite_get("menu_side_scroll_u_arrow"), 0, 100, 342, 2, 2, 0, c_white, 1);
                
            #region//Show the list of moves based on current category
                switch (tutScrollCurrentMoveCategory)
                {
                    case 0: //Grounded Normals
                        for (loopI = 0; loopI < 5; loopI += 1){
                            draw_sprite_ext( sprite_get("menu_text_move_index"), loopI, 48, 144 + (textMoveListSpacing * loopI), 2, 2, 0, c_white, 1);
                        }
                        drawSideScrollCursor(0);
                    break;
                    case 1: //Aerials
                        for (loopI = 5; loopI < 10; loopI += 1){
                            draw_sprite_ext( sprite_get("menu_text_move_index"), loopI, 48, 144 + (textMoveListSpacing * (loopI - 5)), 2, 2, 0, c_white, 1);
                        }
                        drawSideScrollCursor(5);
                    break;
                    case 2: //Strongs
                        for (loopI = 10; loopI < 13; loopI += 1){
                            draw_sprite_ext( sprite_get("menu_text_move_index"), loopI, 48, 144 + (textMoveListSpacing * (loopI - 10)), 2, 2, 0, c_white, 1);
                        }
                        drawSideScrollCursor(10);
                    break;
                    case 3: //Specials
                        for (loopI = 13; loopI < 18; loopI += 1){
                            draw_sprite_ext( sprite_get("menu_text_move_index"), loopI, 48, 144 + (textMoveListSpacing * (loopI - 13)), 2, 2, 0, c_white, 1);
                        }
                        drawSideScrollCursor(13);
                    break;
                    case 4: //Empowered Specials
                        for (loopI = 18; loopI < 23; loopI += 1){
                            draw_sprite_ext( sprite_get("menu_text_move_index"), loopI, 48, 144 + (textMoveListSpacing * (loopI - 18)), 2, 2, 0, c_white, 1);
                        }
                        drawSideScrollCursor(18);
                    break;
                }
                        
            #endregion
        #endregion
        #region //Main Scroll Elements
        //Info Headline
        draw_sprite_ext( sprite_get("menu_text_info_headline"), tutScrollCurrentInfoCategory, 326, 216, 2, 2, 0, c_white, 1);
        drawComingSoon();
        //Info Categories
        drawInfoCategories();
        
        //Draw Scroll Line
        draw_sprite_ext( sprite_get("a_pixel"), 0, 634, 266, 2, 146, 0, c_white, 1);
        //Draw Scroll Bar and Arrows
        drawInfoScrollBar();
        
        //Description
        drawMoveDescription();
        drawInfoCursor();
        
        
        #endregion
    #endregion
}
#endregion

if (debugDrawEnabled)
{
    draw_debug_text(20, 20, "FPS: " + string(fps));
    draw_debug_text(20, 40, "Real FPS: " + string(fps_real));
}



#define drawSideScrollCursor(indexOffset)
draw_sprite_ext( sprite_get("menu_scroll_cursor"), 0, 28 + ((sin(get_gameplay_time()/5))*3 * (tutScrollCurrentCursorCategory == 0)), 144 + (textMoveListSpacing * (tutScrollCurrentMove - argument[0])), 2, 2, 0, c_white, 0.5 + (tutScrollCurrentCursorCategory == 0));
//Debug drawing
//=====================

//if (debugYBallHitboxNum != 0)
//{
    //draw_debug_text(x,y+20,string(debugYBallHitboxAttack));
    //draw_debug_text(x,y+40,string(debugYBallHitboxNum));
//}

//draw_debug_text(x,y+20,string(initial_dash_speed));
//draw_debug_text(x,y+40,string(shurikatCurrentLoopCount));
//draw_debug_text(x,y+60,string(window));
//draw_debug_text(x,y+80,string(window_timer));

#define drawMoveIcon()
shader_start();
switch(tutScrollCurrentMove)
{
    //The fun part!!!!!!!
    case 0: //Jab
        draw_sprite_ext( sprite_get("jab"), 2, 764, 154, 1, 1, 0, c_white, 1);
    break;
    case 1: //Dash Attack
        draw_sprite_ext( sprite_get("dattack"), 3, 764, 164, 1, 1, 0, c_white, 1);
    break;
    case 2: //F-Tilt
        draw_sprite_ext( sprite_get("fstrong"), 2+7, 764, 154, 1, 1, 0, c_white, 1);
    break;
    case 3: //U-Tilt
        draw_sprite_ext( sprite_get("utilt"), 2, 764, 174, 1, 1, 0, c_white, 1);
    break;
    case 4: //D-Tilt
        draw_sprite_ext( sprite_get("dtilt"), 2, 774, 158, 1, 1, 0, c_white, 1);
    break;
    case 5: //N-Air
        draw_sprite_ext( sprite_get("nair"), 1, 764, 158, 1, 1, 0, c_white, 1);
    break;
    case 6: //U-Air
        draw_sprite_ext( sprite_get("uair"), 2, 764, 158, 1, 1, 0, c_white, 1);
    break;
    case 7: //F-Air
        draw_sprite_ext( sprite_get("fstrong"), 2+7, 764, 154, 1, 1, 0, c_white, 1);
    break;
    case 8: //D-Air
        draw_sprite_ext( sprite_get("dair"), 2, 768, 150, 1, 1, 0, c_white, 1);
    break;
    case 9: //B-Air
        draw_sprite_ext( sprite_get("bair"), 2, 764, 150, 1, 1, 0, c_white, 1);
    break;
    case 10: //U-Strong
        draw_sprite_ext( sprite_get("ustrong"), 10, 766, 164, 1, 1, 0, c_white, 1);
    break;
    case 11: //F-Strong
        draw_sprite_ext( sprite_get("fstrong"), 6, 782, 164, 1, 1, 0, c_white, 1);
    break;
    case 12: //D-Strong
        draw_sprite_ext( sprite_get("dstrong_icon"), 0, 708, 74, 2, 2, 0, c_white, 1);
    break;
    case 13: //N-Special
        draw_sprite_ext( sprite_get("nspecial"), 0, 768, 150, 1, 1, 0, c_white, 1);
        //draw_sprite_ext( charge_sprite, 52, 768 - 76, 152 - 86, 2, 2, 0, c_white, 1);
        draw_sprite_ext( sprite_get("chargeready_vfx"), 9, 768 - 66, 152 - 90, 2, 2, 0, c_white, 1);
    break;
    case 14: //U-Special
        draw_sprite_ext( sprite_get("uspecial"), 4, 764, 164, 1, 1, 0, c_white, 1);
    break;
    case 15: //F-Special
        draw_sprite_ext( sprite_get("fspecial"), 2, 766, 158, 1, 1, 0, c_white, 1);
    break;
    case 16: //D-Special 1
        draw_sprite_ext( sprite_get("dspecial"), 3, 770, 160, 1, 1, 0, c_white, 1);
    break;
    case 17: //D-Special 2
        draw_sprite_ext( sprite_get("yarnball"), 0, 814, 140, 1, 1, 0, c_white, 1);
        draw_sprite_ext( sprite_get("dspecial_dash"), 0, 754, 140, 1, 1, 0, c_white, 1);
    break;
    case 18: //N-Special 2
        draw_sprite_ext( sprite_get("nthrow"), 2, 768, 158, 1, 1, 0, c_white, 1);
    break;
    case 19: //U-Special 2
        draw_sprite_ext( sprite_get("uspecial2"), 4, 754, 166, 1, 1, 0, c_white, 1);
    break;
    case 20: //F-Special 2
        draw_sprite_ext( sprite_get("fspecial_spin"), 0, 766, 156, 1, 1, 0, c_white, 1);
        draw_sprite_ext( sprite_get("shuriken_large_vfx"), 0, 772, 158, 1, 1, 0, c_white, 1);
    break;
    case 21: //D-Special 3
        draw_sprite_ext( sprite_get("dspecial2_icon"), 0, 708, 74, 2, 2, 0, c_white, 1);
    break;
    case 22: //D-Special 4
        draw_sprite_ext( sprite_get("dspecial2_dash"), 0, 778, 140, 1, 1, 0, c_white, 1);
    break;
    case 23:
    
    break;
    case 24:
    
    break;
}
shader_end();
#define drawInfoCategories()
for (loopI = 0; loopI <= tutScrollMaxInfoCategory; loopI++) {
    if (loopI == tutScrollCurrentInfoCategory) {
        draw_sprite_ext( sprite_get("menu_text_info_category"), loopI, 650, 254 + (42 * loopI), 2, 2, 0, tutScrollSelectedInfoCategoryColor, 1);
    }
    else{
        draw_sprite_ext( sprite_get("menu_text_info_category"), loopI, 650, 254 + (42 * loopI), 2, 2, 0, c_black, 1);
    }
}


#define drawInfoScrollBar()
//Don't divide by 0. 
if (tutScrollInfoScrollCurrentIndex == 0)
{
    tutScrollInfoScrollBarYPos = 266;
    draw_sprite_ext( sprite_get("menu_scroll_bar"), 0, 630, tutScrollInfoScrollBarYPos, 2, 2, 0, c_white, 0.5 + (tutScrollCurrentCursorCategory == 1));
}
else
{
    tutScrollInfoScrollBarYPos = 266 + floor((122 * ( tutScrollInfoScrollCurrentIndex / ((tutScrollMaxDescIndex[tutScrollCurrentMove]) - 1)) ) + 0.5); //Range 122 Pixels
    draw_sprite_ext( sprite_get("menu_scroll_bar"), 0, 630, tutScrollInfoScrollBarYPos, 2, 2, 0, c_white, 0.5 + (tutScrollCurrentCursorCategory == 1)); 
}

//Draw the arrows
//Up Arrow
if (tutScrollInfoScrollCurrentIndex > 0)
{
    draw_sprite_ext( sprite_get("menu_scroll_bar_arrow"), 0, 
                    630, tutScrollInfoScrollBarYPos - 18 - (sin(get_gameplay_time()/5)*2*(tutScrollCurrentCursorCategory == 1)),
                    2, 2, 0, c_white, 0.5 + (tutScrollCurrentCursorCategory == 1));
}
//Bottom arrow
if (tutScrollInfoScrollCurrentIndex < tutScrollMaxDescIndex[tutScrollCurrentMove] - 1 && tutScrollMaxDescIndex[tutScrollCurrentMove] > 1)
{
    draw_sprite_ext( sprite_get("menu_scroll_bar_arrow"), 0, 
                    630, tutScrollInfoScrollBarYPos + 42 + (sin(get_gameplay_time()/5)*2*(tutScrollCurrentCursorCategory == 1)),
                    2, -2, 0, c_white, 0.5 + (tutScrollCurrentCursorCategory == 1));
}
#define drawInfoCursor()
draw_sprite_ext( sprite_get("menu_scroll_cursor"), 0,
                849 - ((sin(get_gameplay_time()/5))*3 * (tutScrollCurrentCursorCategory == 2)), 256  + (42 * tutScrollCurrentInfoCategory) , -2, 2, 0, c_white, 0.5 + (tutScrollCurrentCursorCategory == 2));
#define drawMoveDescription()
if (tutScrollCurrentInfoCategory == 0)
{
    draw_sprite_ext( sprite_get("move-desc-" + string(tutScrollCurrentMove + 1)), tutScrollInfoScrollCurrentIndex, 326, 264, 2, 2, 0, c_white, 1);
}

#define drawComingSoon()
if (tutScrollCurrentInfoCategory > 0)
{
    draw_sprite_ext( sprite_get("menu_text_info_headline_comingsoon"), 0, 340, 310, 2, 2, 0, c_white, 1);
}