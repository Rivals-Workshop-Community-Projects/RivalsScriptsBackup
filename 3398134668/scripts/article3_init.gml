
origOwner = player_id;
var azulaID = player_id;
// vars we need
speed_ = 0;
gravity_ = 0;
gravityMax = 16;
bounciness_ = 0;
slide_ = 0;
lifetime_ = 9999;
saveSpeed = [hsp, vsp];
groundSaveSpeed = [hsp, vsp];
bounceOnHit = false;
destroyOnWall = false;
can_be_grounded = true;
itemState = 0;
playSound = true;
assignedHitbox = noone;
stopThreshold = 2.2;
sodaProj = 3;
sodaUses = 4;
throwTimer = 0;
throwType = 0;
throwAngle = 0;
rotationAnimation = 0;
maxHits = 10;
itemNumber = 0;

ignores_walls = false;

sprite_index = sprite_get("azula_itemselect");
itemTypeOBJ = azulaID.itemType;
itemTypeIndex = azulaID.itemIndex;

// define the things
switch azulaID.itemType{
    
    case "ionball":
    itemNumber = 1;
    speed_ = 20;
    gravity_ = 0.6;
    bounciness_ = 0;
    slide_ = 0;
    bounceOnHit = false;
    destroyOnWall = true;
    maxHits = 1;
    break;
    case "snowball":
    itemNumber = 4;
    speed_ = 16;
    gravity_ = 0.6;
    bounciness_ = 0;
    slide_ = 0;
    bounceOnHit = false;
    destroyOnWall = true;
    maxHits = 1;
    break;
    case "rainbowball":
    itemNumber = 0;
    speed_ = 15;
    gravity_ = 0.5;
    bounciness_ = 0.85;
    slide_ = 0.9;
    bounceOnHit = true;
    destroyOnWall = false;
    maxHits = 25;
    break;
    case "bowlingball":
    itemNumber = 2;
    speed_ = 16;
    gravity_ = 0.85;
    bounciness_ = 0.25;
    slide_ = 0.98;
    bounceOnHit = false;
    destroyOnWall = false;
    maxHits = 10;
    break;
    case "soda":
    itemNumber = 3;
    speed_ = 15;
    gravity_ = 0.6;
    bounciness_ = 0.5;
    slide_ = 0.95;
    bounceOnHit = true;
    destroyOnWall = false;
    maxHits = 100;
    break;
    case "health":
    itemNumber = 10;
    maxHits = 100;
    break;
    case "armor":
    itemNumber = 11;
    maxHits = 100;
    break;
    
}
image_index = itemNumber;

if itemNumber < 6{
    var globalIndex = image_index;
    azulaID.ownItemOut[globalIndex] = self;
    with azulaID.globalItemSolver{
        globalItemOut[globalIndex+(azulaID.player*6)] = other;
    }
}
else{
    ignores_walls = true;
    can_be_grounded = false;
    sound_play(sound_get("item_pickup"), false, noone, 1, 1);
    azulaID.abyssItem = self;
}