// - Text Article -
sprite_index = sprite_get("blank");
mask_index = sprite_get("bkgd");

word = "is";
adj = "float";
switch spawn_variables[0] {
    case 1: word = "rival"; break;
    case 2: word = "you"; break;
    case 3: word = "skull"; break;
    case 4: word = "defeat"; break;
    case 5: word = "wall"; break;
    case 6: word = "hedge"; break;
    case 7: word = "stop"; break;
    case 8: word = "adj"; break;
}

imageScale = 2;
scale = 1.5;

parX = 0.5;
parY = 0.5;

depth = 30;

drawX = 0;
drawY = 0;

toX = 0;
toY = 0;
if (word == "adj") toY = -8 * 32 * scale;

jiggle = 0;

debug = word;

rules = [];
timeUntil = 0;
timeSince = 0;
timeIndex = 0;
anims = {
    rivalIs: [],
    rivalIsNone: [],
    rivalIsNoneReturn: [],
    skullOn: [],
    skullOff: [],
    wallOn: [],
    wallOff: [],
    hedgeOn: [],
    hedgeOff: []
};
nextAnim = "";
prevAnim = "";


for (var i = 0; i <= 10; i++) {anims.rivalIs[i] = "empty";}
for (var i = 0; i <= 10; i++) {anims.rivalIsNone[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.rivalIsNoneReturn[i] = "empty";}
for (var i = 0; i <= 10; i++) {anims.skullOn[i] = "empty";}
for (var i = 0; i <= 10; i++) {anims.skullOff[i] = "empty";}
for (var i = 0; i <= 10; i++) {anims.wallOn[i] = "empty";}
for (var i = 0; i <= 10; i++) {anims.wallOff[i] = "empty";}
for (var i = 0; i <= 10; i++) {anims.hedgeOn[i] = "empty";}
for (var i = 0; i <= 10; i++) {anims.hedgeOff[i] = "empty";}
for (var i = 0; i <= 30; i++) {anims.babaIsStageBaba[i] = "empty";} // Trailer Only
for (var i = 0; i <= 30; i++) {anims.babaIsStageStage[i] = "empty";} // Trailer Only

anims.skullOn[0] = {x: 0, y: -1};
anims.skullOff[0] = {x: 0, y: 0};
anims.wallOn[0] = {x: 0, y: 0};
anims.wallOff[0] = {x: 1, y: 0};
anims.hedgeOn[0] = {x: 0, y: 0};
anims.hedgeOff[0] = {x: 0, y: -1};

anims.rivalIs[0] = {x: 0, y: 0};
anims.rivalIs[1] = {x: 1, y: 0};
anims.rivalIs[2] = {x: 2, y: 0};
anims.rivalIs[5] = {x: 3, y: 0};
anims.rivalIs[6] = {x: 3, y: -1};
anims.rivalIs[7] = {x: 3, y: -2};
anims.rivalIs[8] = {x: 3, y: -3};
anims.rivalIs[9] = {x: 3, y: -4};
anims.rivalIs[10] = {x: 3, y: -5};
anims.rivalIs[11] = {x: 3, y: -6};
anims.rivalIs[12] = {x: 3, y: -7};

anims.rivalIsNone[0] = {x: -1, y: 0};

anims.rivalIsNoneReturn[1] = {x: -1, y: 0};
anims.rivalIsNoneReturn[4] = {x: -1, y: -1};
anims.rivalIsNoneReturn[5] = {x: -1, y: -2};
anims.rivalIsNoneReturn[6] = {x: -1, y: -3};
anims.rivalIsNoneReturn[7] = {x: -1, y: -4};
anims.rivalIsNoneReturn[8] = {x: -1, y: -5};
anims.rivalIsNoneReturn[9] = {x: -1, y: -6};
anims.rivalIsNoneReturn[10] = {x: -1, y: -7};

// Trailer Only
anims.babaIsStageBaba[0] = {x: 0, y: 0};
anims.babaIsStageBaba[17] = {x: 0, y: 0};
anims.babaIsStageBaba[18] = {x: 0, y: -1};
anims.babaIsStageBaba[19] = {x: 0, y: -2};
anims.babaIsStageBaba[20] = {x: 0, y: -4};
anims.babaIsStageBaba[21] = {x: 0, y: -5};

anims.babaIsStageStage[0] = {x: 0, y: -1};
anims.babaIsStageStage[1] = {x: 0, y: -2};
anims.babaIsStageStage[2] = {x: 0, y: -4};
anims.babaIsStageStage[3] = {x: 0, y: -5};
anims.babaIsStageStage[4] = {x: 0, y: -6};



