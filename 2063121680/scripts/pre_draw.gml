// pre-draw

//stasis chains
shader_start();
if (stasisActive) && (stasisTimer <= 50) && (stasisTimer > 1) {
    var numChains = 3;
    while (numChains > 0) {
        var angle1 = stasisChainAngle1;
        var angle2 = stasisChainAngle2;
        var angle3 = stasisChainAngle3;
        var angle4 = stasisChainAngle4;
        
        if (numChains == 4) {
            var angle = angle1;
        } else if (numChains == 3) {
            var angle = angle2;
        } else if (numChains == 2) {
            var angle = angle3;
        } else if (numChains == 1) {
            var angle = angle4;
        }
        
        var intervalDist = 32;
        var intervalNum = 50;
        var lifetime = 20;
        
        var objX = stasisID.x;
        if (stasisType == "box") {
            var objY = stasisID.y + 32 + 16;
        } else {
            var objY = stasisID.y;
        }
        
        var intervalX = intervalDist*dcos(angle);
        var intervalY = intervalDist*dsin(angle);
        var intervalDistExtra = 200 - (stasisTimer*30);
        
        if (intervalDistExtra < 0) {
            intervalDistExtra = 0;
        }
        
        var intervalExtraX = intervalDistExtra*dcos(angle);
        var intervalExtraY = intervalDistExtra*dsin(angle);
        
        if (stasisTimer >= 20) {
            stasisChainTransparencyVar += 0.2;
        }
        
        while (intervalNum > 0) {
            draw_sprite_ext(sprite_get("dspecial_chain"), 0, objX + intervalExtraX, objY + intervalExtraY - 20, 1, 1, -angle, c_white, 1 - stasisChainTransparencyVar/lifetime);
            intervalNum -= 1;
            objX += intervalX;
            objY += intervalY;
        }
        numChains -= 1;
    }
}

//cryonis pillar
if (ustrongWarningDraw) {
    var maxHeight = 200;
    var heightMod = 6;
    if (ustrongWarningHeight * heightMod > maxHeight) {
        ustrongDrawHeight = maxHeight;
    } else {
        ustrongDrawHeight = ustrongWarningHeight * heightMod;
    }
    
    var alpha = (abs((ustrongWarningHeight mod 50) - 25)/25)*0.7 + 0.3;
    draw_sprite_part_ext(sprite_get("ustrong_pillar_warning"), 0, 0, 0, 104, ustrongDrawHeight, ustrongXVar, ustrongYVar - ustrongDrawHeight, 1, 1, c_white, alpha);
}

if (ustrongPillarDraw) {
    draw_sprite_part(sprite_get("ustrong_pillar"), 0, 0, 0, 104, ustrongLiveHeight, ustrongXVar, ustrongYVar - ustrongLiveHeight);
}

//magnesis
if (magnesisReticleDraw) {
    var numPoints = floor(retDist/20) + 4;
    var beamDif = 20;
    var prevBeamX = 0;
    var prevBeamY = 0;
    /*
    if (!magnesisSearch) {
        draw_sprite(sprite_get("magnesis_point"), 0, reticleX + beamDif, reticleY);
        draw_sprite(sprite_get("magnesis_point"), 0, reticleX - 6, reticleY);
    }
    */
    for (var j = 0; j < 2; j += 1) {
        for (var i = 0; i < numPoints; i += 1) {
            var accMod = 8 * dsin(180*(i/numPoints));
            var xMod = 20*dcos(retAngle);
            var yMod = 20*dsin(retAngle);
            var beamX = (reticleX - x - xMod + ((j*beamDif) - 5))*i/numPoints + (retXAcc*accMod) + xMod + ((j*beamDif) - 5)/3;
            var beamY = (reticleY - y + 16 - yMod)*i/numPoints - 16 + (retYAcc*accMod) + yMod;
            
            var xDif = beamX - prevBeamX;
            var yDif = beamY - prevBeamY;
            var beamAngle = darctan2(yDif, xDif);
            
            var beamLength = 0.6 + (beamDif/40) + abs(retXAcc/12) + abs(retYAcc/12);
            
            if (i != 0) {
                draw_sprite_ext(sprite_get("magnesis_beam"), 0, x + beamX, y + beamY, beamLength, 1, -beamAngle, c_white, 1);
            }
            
            prevBeamX = beamX;
            prevBeamY = beamY;
        }
    }
}

//box stasis
if (stasisType == "box") {
    with obj_article_platform {
        if (player_id == other.id) {
            if (inStasis) {
                draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, 0, c_yellow, 1 - (timerSoundVar/30));
                if (timerSoundVar < 100) {
                    timerSoundVar += 1;
                }
            }
        }
    }
}

//box arrow
/*
with obj_article_platform {
    if (player_id == other.id) {
        draw_sprite(sprite_get("box_arrow"), 0, x, y - 14);
    }
}
*/

shader_end();