//post-draw

shader_start();

if ((state == PS_ATTACK_GROUND) || (state == PS_ATTACK_AIR)) && (attack == AT_NSPECIAL) {
    draw_sprite_ext(sprite_get("nspecial_bow"), window - 1, x - (10 * spr_dir), y - 28, spr_dir, 1, arrowAngle, c_white, 1);
}

//intro anim
var introTime = get_gameplay_time();
var introHeight = y;
if (introTime > fallStart) {
    if (introTime <= fallStart + fallTime) {
        var yCoord = ((introTime - fallStart)/fallTime)*introHeight;
        draw_sprite_ext(sprite_get("pratfall"), 0, x, yCoord, spr_dir, 1, 0, c_white, 1);
    } else if (introTime <= fallStart + fallTime + 4) {
        draw_sprite_ext(sprite_get("pratland"), 0, x, y, spr_dir, 1, 0, c_white, 1);
    } else if (introTime <= fallStart + fallTime + splatTime){
        draw_sprite_ext(sprite_get("pratland"), 1, x, y, spr_dir, 1, 0, c_white, 1);
    }
}

if (introTime == fallStart + fallTime) {
    sound_play(sound_get("splat"));
}

shader_end();

if (stasisID != undefined) {
    if (stasisID.hitStasis) {
        stasisArrowFrameAdvance = true;
    }
    
    if (stasisArrowFrameAdvance) && (stasisArrowFrame < stasisArrowFrameMax) {
        stasisArrowFrame += 1;
    }
    
    switch (stasisID.stasisHitCounter) {
        case 1:
        stasisArrowFrameMax = 4;
        break;
        
        case 2:
        stasisArrowFrameMax = 7;
        break;
        
        case 3:
        stasisArrowFrameMax = 10;
        break;
        
        case 4:
        stasisArrowFrameMax = 13;
        break;
        
        case 5:
        stasisArrowFrameMax = 16;
        break;
        
        case 6:
        stasisArrowFrameMax = 19;
        break;
        
        case 7:
        stasisArrowFrameMax = 22;
        break;
        
        case 8:
        stasisArrowFrameMax = 25;
        break;
        
        case 9:
        stasisArrowFrameMax = 28;
        break;
        
        case 10:
        stasisArrowFrame = 26;
        break;
    }
    var drawX = stasisID.x;
    if (stasisType == "box") {
        var drawY = stasisID.y + 32;
    } else {
        var drawY = stasisID.y - 16;
    }
    
    if (stasisID.stasisHitCounter >= 1) {
        draw_sprite_ext(sprite_get("dspecial_arrow"), stasisArrowFrame, drawX, drawY, 1, 1, stasisAngle - 45, c_white, 1);
    }
} else {
    stasisArrowFrameAdvance = false;
    stasisArrowFrame = 0;
    stasisArrowFrameMax = 0;
}

if (drawDtiltExplosion) {
    var frame = floor(drawDtiltExplosionVar/1.4);
    if !(attack == AT_DTILT && state == PS_ATTACK_GROUND) {
        drawDtiltExplosion = false;
    } else {
        draw_sprite(sprite_get("stock_explosion"), frame, x + (42*spr_dir), y-22);
    }
    
    if (frame >= 15) {
        drawDtiltExplosion = false;
        drawDtiltExplosionVar = 0;
    }
}