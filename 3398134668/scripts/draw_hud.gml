// draw_hud will draw things on the hud.
var meter50Draw = clamp(meter, 0, 50);
if has_rune("M") meter50Draw = clamp(meter/2, 0, 50);
shader_start();
draw_sprite_ext(spr_gauge_bar[0],0,temp_x+50,temp_y-12-abyssUIOffset,(meter50Draw)*max_bar_width,1,0,c_white,1);
draw_sprite_ext(spr_gauge,sub_gauge,temp_x+194,temp_y+12-abyssUIOffset,1,1,0,-1,1);
shader_end();

if inEndlessAbyss = 1 || has_rune("L"){
    
    draw_sprite_ext(sprite_get("abyss_meteradd"), 0, temp_x+194, temp_y-16-abyssUIOffset, 2, 2, 0, c_white, 1);
    draw_debug_text(temp_x+201, temp_y-12-abyssUIOffset, string(azulaArmor));
    
}
if has_rune("O"){
    
    var itemOffset = 0;
    var xPos = temp_x + 54;
    var yPos = temp_y - 34;
    for (var i = 0; i < itemAmount-1; i++){
        var alpha = 1 - (instance_exists(ownItemOut[i])/1.5);
        draw_sprite_ext(sprite_get("azula_itemsmall"), i, xPos+itemOffset, yPos-abyssUIOffset, 2, 2, 0, c_white, alpha);
        itemOffset = itemOffset + 16;
    }
    
}
if has_rune("L"){
    var countString = string(comboCount);
    var countPosX = temp_x + 94 + comboPulseXY[0] + random_func(0, floor(comboLevel/2), true);
    var countPosY = temp_y - 64 + comboPulseXY[1] + random_func_2(0, floor(comboLevel/2), true) - abyssUIOffset;
    var countColour = afterImageCols[comboLevel];
    var countSpacing = 24;
    var shadowOffset = 2;
    var hitsOffset = 82;
    var comboMaxOffset = 12;
    
    var countMaxPosX = temp_x + 166;
    var countMaxPosY = temp_y - 44 - abyssUIOffset;
    if comboCount == comboPB{
        countMaxPosX = countMaxPosX + comboPulseXY[0];
        countMaxPosY = countMaxPosY + comboPulseXY[1];
    }
    
    if comboPB >= 1{
       var comboPBLevel = clamp(floor(((comboPB)/10)), 0, 5);
       var countColMax = afterImageCols[comboPBLevel];
       draw_set_font(asset_get("fName"));
       draw_text_color(countMaxPosX+(shadowOffset), countMaxPosY+(shadowOffset)+comboMaxOffset, "BEST " + string(comboPB), c_black, c_black, c_black, c_black, 1);
       draw_text_color(countMaxPosX, countMaxPosY+comboMaxOffset, "BEST " + string(comboPB), countColMax, countColMax, countColMax, countColMax, 1); 
    }
    
    
    if comboTimeout >= 0{
        
        var alpha = comboTimeout/20;
        
        draw_sprite_ext(sprite_get("combo_hits"), 0, countPosX+shadowOffset-hitsOffset, countPosY+shadowOffset, 2, 2, 0, c_black, alpha);
        draw_sprite_ext(sprite_get("combo_hits"), 0, countPosX-hitsOffset, countPosY, 2, 2, 0, countColour, alpha);
            
            
        for (var c = 1; c <= string_length(countString); c++){
            var countDigit = real(string_char_at(countString, c));
            draw_sprite_ext(sprite_get("combo_font"), countDigit, countPosX+shadowOffset, countPosY+shadowOffset, 2, 2, 0, c_black, alpha);
            draw_sprite_ext(sprite_get("combo_font"), countDigit, countPosX, countPosY, 2, 2, 0, countColour, alpha);
            countPosX += countSpacing;
        }
    }
    
    if levelupEffectTimer > 0{
        
        var posX = temp_x + 80;
        var posY = temp_y - 40 - abyssUIOffset;
        var index = floor(30-(levelupEffectTimer/5));
        
        draw_sprite_ext(levelupEffects[clamp(comboLevel-1, 0, 4)], index, posX, posY, 1, 1, 0, c_white, 1);
        
        
    }
    
    if comboTimeout > comboTimeoutAmount{
        var textPosX = temp_x + 86 + random_func(0, 2, true);
        var textPosY = temp_y - 78 + random_func_2(0, 2, true) - abyssUIOffset;
        draw_set_font(asset_get("fName"));
        draw_text_color(textPosX+shadowOffset, textPosY+shadowOffset, "EXTENDED", c_black, c_black, c_black, c_black, 1);
        draw_text_color(textPosX, textPosY, "EXTENDED", countColour, countColour, countColour, countColour, 1);
        
    }
}

