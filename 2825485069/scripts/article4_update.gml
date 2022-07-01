// Text Update

drawX = lerp(drawX, toX, 0.25);
drawY = lerp(drawY, toY, 0.25);

if (ceil(timeUntil/60) <= 15 || nextAnim == "babaIsStage"){
    
    timeIndex = timeUntil;

    if (nextAnim == "rivalIs" && word == "adj" && anims.rivalIs[ceil(timeIndex/60)] != "empty") {
        toX = anims.rivalIs[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.rivalIs[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "rivalIsNone" && word == "adj" && anims.rivalIsNone[ceil(timeIndex/60)] != "empty") {
        toX = anims.rivalIsNone[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.rivalIsNone[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "skullOn" && word == "defeat" && anims.skullOn[ceil(timeIndex/60)] != "empty") {
        toX = anims.skullOn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.skullOn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "skullOff" && word == "defeat" && anims.skullOff[ceil(timeIndex/60)] != "empty") {
        toX = anims.skullOff[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.skullOff[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "wallOn" && word == "wall" && anims.wallOn[ceil(timeIndex/60)] != "empty") {
        toX = anims.wallOn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.wallOn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "wallOff" && word == "wall" && anims.wallOff[ceil(timeIndex/60)] != "empty") {
        toX = anims.wallOff[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.wallOff[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "hedgeOn" && word == "hedge" && anims.hedgeOn[ceil(timeIndex/60)] != "empty") {
        toX = anims.hedgeOn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.hedgeOn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "hedgeOff" && word == "hedge" && anims.hedgeOff[ceil(timeIndex/60)] != "empty") {
        toX = anims.hedgeOff[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.hedgeOff[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "babaIsStage" && word == "baba" && anims.babaIsStageBaba[ceil(timeIndex/60)] != "empty") { // Trailer Only
        toX = anims.babaIsStageBaba[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.babaIsStageBaba[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "babaIsStage" && word == "stage" && anims.babaIsStageStage[ceil(timeIndex/60)] != "empty") { // Trailer Only
        toX = anims.babaIsStageStage[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.babaIsStageStage[ceil(timeIndex / 60)].y * 32 * scale;
    }
} else {
    timeIndex = timeSince;
    
    if (prevAnim == "rivalIsNone" && word == "adj" && anims.rivalIsNoneReturn[ceil(timeIndex/60)] != "empty") {
        toX = anims.rivalIsNoneReturn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.rivalIsNoneReturn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
}

// Trailer Only
if ((nextAnim == "babaIsStage" || prevAnim == "babaIsStage") && get_gameplay_time() <= 2) {
    if (word == "skull") word = "baba";
    if (word == "defeat") word = "stage";
    if (word == "baba" || word == "stage") toY = -8 * 32 * scale;
}