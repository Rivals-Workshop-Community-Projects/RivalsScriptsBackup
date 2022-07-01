// Baba Update

if (!is_aether_stage()) return;

drawX = lerp(drawX, toX, 0.25);
drawY = lerp(drawY, toY, 0.25);

if (ceil(timeUntil/60) <= 15 || nextAnim == "babaIsStage"){
    
    timeIndex = timeUntil;
    
    if (nextAnim == "rivalIs"&& anims.rivalIs[ceil(timeIndex/60)] != "empty") {
        toX = anims.rivalIs[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.rivalIs[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "rivalIsNone" && anims.rivalIsNone[ceil(timeIndex/60)] != "empty") {
        toX = anims.rivalIsNone[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.rivalIsNone[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "skullOn" && anims.skullOn[ceil(timeIndex/60)] != "empty") {
        toX = anims.skullOn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.skullOn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "skullOff" && anims.skullOff[ceil(timeIndex/60)] != "empty") {
        toX = anims.skullOff[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.skullOff[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "wallOn" && anims.wallOn[ceil(timeIndex/60)] != "empty") {
        toX = anims.wallOn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.wallOn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "wallOff" && anims.wallOff[ceil(timeIndex/60)] != "empty") {
        toX = anims.wallOff[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.wallOff[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "hedgeOn" && anims.hedgeOn[ceil(timeIndex/60)] != "empty") {
        toX = anims.hedgeOn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.hedgeOn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "hedgeOff" && anims.hedgeOff[ceil(timeIndex/60)] != "empty") {
        toX = anims.hedgeOff[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.hedgeOff[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (nextAnim == "babaIsStage" && anims.babaIsStage[ceil(timeIndex/60)] != "empty") { // Trailer Only
        toX = anims.babaIsStage[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.babaIsStage[ceil(timeIndex / 60)].y * 32 * scale;
    }
} else {
    timeIndex = timeSince;
    
    if (prevAnim == "rivalIs"&& anims.rivalIsReturn[ceil(timeIndex/60)] != "empty") {
        toX = anims.rivalIsReturn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.rivalIsReturn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (prevAnim == "rivalIsNone" && anims.rivalIsNoneReturn[ceil(timeIndex/60)] != "empty") {
        toX = anims.rivalIsNoneReturn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.rivalIsNoneReturn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (prevAnim == "skullOn" && anims.skullOnReturn[ceil(timeIndex/60)] != "empty") {
        toX = anims.skullOnReturn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.skullOnReturn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (prevAnim == "skullOff" && anims.skullOffReturn[ceil(timeIndex/60)] != "empty") {
        toX = anims.skullOffReturn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.skullOffReturn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (prevAnim == "wallOn" && anims.wallOnReturn[ceil(timeIndex/60)] != "empty") {
        toX = anims.wallOnReturn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.wallOnReturn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (prevAnim == "wallOff" && anims.wallOffReturn[ceil(timeIndex/60)] != "empty") {
        toX = anims.wallOffReturn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.wallOffReturn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (prevAnim == "hedgeOn" && anims.hedgeOnReturn[ceil(timeIndex/60)] != "empty") {
        toX = anims.hedgeOnReturn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.hedgeOnReturn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (prevAnim == "hedgeOff" && anims.hedgeOffReturn[ceil(timeIndex/60)] != "empty") {
        toX = anims.hedgeOffReturn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.hedgeOffReturn[ceil(timeIndex / 60)].y * 32 * scale;
    }
    
    if (prevAnim == "babaIsStage" && anims.babaIsStageReturn[ceil(timeIndex/60)] != "empty") { // Trailer Only
        toX = anims.babaIsStageReturn[ceil(timeIndex / 60)].x * 32 * scale;
        toY = anims.babaIsStageReturn[ceil(timeIndex / 60)].y * 32 * scale;
    }
}

var moved = false;
var vol = clamp((drawY/32 + 3)/5, 0, 1);
if (abs(drawY - toY) < 0.75 && toX > drawX + 0.1) {dir = "right"; moved = true;}
if (abs(drawY - toY) < 0.75 && toX < drawX - 0.1) {dir = "left"; moved = true;}
if (abs(drawX - toX) < 0.75 && toY > drawY + 0.1) {dir = "down"; moved = true;}
if (abs(drawX - toX) < 0.75 && toY < drawY - 0.1) {dir = "up"; moved = true;}
if (timeUntil mod 60 == 0 && moved) {
    pose = (pose + 1) mod 4;
    spawnPart(x, y, drawX, drawY, dir);
    sound_play(asset_get("sfx_land_light"), false, noone, vol);
}


#define spawnPart(x, y, drawX, drawY, dir)
var part = instance_create(x + 16 * scale, y + 16 * scale, "obj_stage_article", 5);
switch dir {
    case "right": part.hsp = part.partspeed * -1; break;
    case "left": part.hsp = part.partspeed; break;
    case "down": part.vsp = part.partspeed * -1; break;
    case "up": part.vsp = part.partspeed; break;
}
part.drawX = drawX;
part.drawY = drawY;
