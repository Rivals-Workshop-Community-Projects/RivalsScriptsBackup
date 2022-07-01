// - Baba Article -
sprite_index = sprite_get("blank");
mask_index = sprite_get("bkgd");

imageScale = 2;
scale = 1.5;

parX = 0.5;
parY = 0.5;

depth = 30;
if (is_aether_stage()) depth = 20;

drawX = 0;
drawY = 0;

toX = 0 * 32 * scale;
toY = -5 * 32 * scale;

jiggle = 0;

debug = "";

timeUntil = 0;
timeSince = 0;
timeIndex = 0;
anims = {
    rivalIs: [],
    rivalIsNone: [],
    skullOn: [],
    skullOff: [],
    wallOn: [],
    wallOff: [],
    hedgeOn: [],
    hedgeOff: []
};
nextAnim = "";
prevAnim = "";

dir = "down";
pose = 0;

if (!is_aether_stage()) {
    drawX = 0 * 32 * scale;
    drawY = 2 * 32 * scale;
    dir = "left";
    pose = 0;
    return;
}

for (var i = 0; i <= 20; i++) {anims.rivalIs[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.rivalIsNone[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.skullOn[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.skullOff[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.wallOn[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.wallOff[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.hedgeOn[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.hedgeOff[i] = "empty";}

for (var i = 0; i <= 20; i++) {anims.rivalIsReturn[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.rivalIsNoneReturn[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.skullOnReturn[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.skullOffReturn[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.wallOnReturn[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.wallOffReturn[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.hedgeOnReturn[i] = "empty";}
for (var i = 0; i <= 20; i++) {anims.hedgeOffReturn[i] = "empty";}

for (var i = 0; i <= 30; i++) {anims.babaIsStage[i] = "empty";} // Trailer Only
for (var i = 0; i <= 30; i++) {anims.babaIsStageReturn[i] = "empty";} // Trailer Only

// ANIMATIONS

// Rival Is

anims.rivalIs[0] = {x: -5, y: 3};
anims.rivalIs[1] = {x: -4, y: 3};
anims.rivalIs[2] = {x: -3, y: 3};
anims.rivalIs[3] = {x: -2, y: 3};
anims.rivalIs[4] = {x: -2, y: 2};
anims.rivalIs[5] = {x: -3, y: 2};
anims.rivalIs[6] = {x: -3, y: 1};
anims.rivalIs[7] = {x: -3, y: 0};
anims.rivalIs[8] = {x: -3, y: -1};
anims.rivalIs[9] = {x: -3, y: -2};
anims.rivalIs[10] = {x: -3, y: -3};
anims.rivalIs[11] = {x: -3, y: -4};

anims.rivalIsReturn[1] = {x: -5, y: 3};
anims.rivalIsReturn[2] = {x: -4, y: 3};
anims.rivalIsReturn[3] = {x: -3, y: 3};
anims.rivalIsReturn[4] = {x: -3, y: 2};
anims.rivalIsReturn[5] = {x: -3, y: 1};
anims.rivalIsReturn[6] = {x: -3, y: 0};
anims.rivalIsReturn[7] = {x: -3, y: -1};
anims.rivalIsReturn[8] = {x: -3, y: -2};
anims.rivalIsReturn[9] = {x: -3, y: -3};
anims.rivalIsReturn[10] = {x: -3, y: -4};

anims.rivalIsNone[0] = {x: -6, y: 3};
anims.rivalIsNone[1] = {x: -5, y: 3};
anims.rivalIsNone[2] = {x: -4, y: 3};
anims.rivalIsNone[3] = {x: -3, y: 3};
anims.rivalIsNone[4] = {x: -3, y: 2};
anims.rivalIsNone[5] = {x: -3, y: 1};
anims.rivalIsNone[6] = {x: -3, y: 0};
anims.rivalIsNone[7] = {x: -3, y: -1};
anims.rivalIsNone[8] = {x: -3, y: -2};
anims.rivalIsNone[9] = {x: -3, y: -3};
anims.rivalIsNone[10] = {x: -3, y: -4};

anims.rivalIsNoneReturn[1] = {x: -6, y: 3};
anims.rivalIsNoneReturn[2] = {x: -6, y: 4};
anims.rivalIsNoneReturn[3] = {x: -7, y: 4};
anims.rivalIsNoneReturn[4] = {x: -7, y: 3};
anims.rivalIsNoneReturn[5] = {x: -7, y: 2};
anims.rivalIsNoneReturn[6] = {x: -7, y: 1};
anims.rivalIsNoneReturn[7] = {x: -7, y: 0};
anims.rivalIsNoneReturn[8] = {x: -7, y: -1};
anims.rivalIsNoneReturn[9] = {x: -7, y: -2};
anims.rivalIsNoneReturn[10] = {x: -7, y: -3};
anims.rivalIsNoneReturn[11] = {x: -7, y: -4};


// Skull

anims.skullOn[0] = {x: 1, y: 3};
anims.skullOn[1] = {x: 1, y: 4};
anims.skullOn[2] = {x: 2, y: 4};
anims.skullOn[3] = {x: 2, y: 3};
anims.skullOn[4] = {x: 2, y: 2};
anims.skullOn[5] = {x: 2, y: 1};
anims.skullOn[6] = {x: 2, y: 0};
anims.skullOn[7] = {x: 2, y: -1};
anims.skullOn[8] = {x: 2, y: -2};
anims.skullOn[9] = {x: 2, y: -3};
anims.skullOn[10] = {x: 2, y: -4};

anims.skullOnReturn[1] = {x: 1, y: 3};
anims.skullOnReturn[2] = {x: 2, y: 3};
anims.skullOnReturn[3] = {x: 2, y: 2};
anims.skullOnReturn[4] = {x: 2, y: 1};
anims.skullOnReturn[5] = {x: 2, y: 0};
anims.skullOnReturn[6] = {x: 2, y: -1};
anims.skullOnReturn[7] = {x: 2, y: -2};
anims.skullOnReturn[8] = {x: 2, y: -3};
anims.skullOnReturn[9] = {x: 2, y: -4};

anims.skullOff[0] = {x: 1, y: 2};
anims.skullOff[2] = {x: 1, y: 1};
anims.skullOff[3] = {x: 2, y: 1};
anims.skullOff[4] = {x: 2, y: 0};
anims.skullOff[5] = {x: 2, y: -1};
anims.skullOff[6] = {x: 2, y: -2};
anims.skullOff[7] = {x: 2, y: -3};
anims.skullOff[8] = {x: 2, y: -4};

anims.skullOffReturn[1] = {x: 1, y: 2};
anims.skullOffReturn[2] = {x: 1, y: 1};
anims.skullOffReturn[3] = {x: 1, y: 0};
anims.skullOffReturn[4] = {x: 1, y: -1};
anims.skullOffReturn[5] = {x: 1, y: -2};
anims.skullOffReturn[6] = {x: 1, y: -3};
anims.skullOffReturn[7] = {x: 1, y: -4};

// Wall

anims.wallOn[0] = {x: 7, y: 1};
anims.wallOn[1] = {x: 8, y: 1};
anims.wallOn[2] = {x: 8, y: 0};
anims.wallOn[3] = {x: 7, y: 0};
anims.wallOn[4] = {x: 6, y: 0};
anims.wallOn[5] = {x: 5, y: 0};
anims.wallOn[6] = {x: 4, y: 0};
anims.wallOn[7] = {x: 4, y: -1};
anims.wallOn[8] = {x: 4, y: -2};
anims.wallOn[9] = {x: 4, y: -3};
anims.wallOn[10] = {x: 4, y: -4};

anims.wallOnReturn[1] = {x: 7, y: 1};
anims.wallOnReturn[2] = {x: 7, y: 0};
anims.wallOnReturn[3] = {x: 6, y: 0};
anims.wallOnReturn[4] = {x: 5, y: 0};
anims.wallOnReturn[5] = {x: 5, y: -1};
anims.wallOnReturn[6] = {x: 5, y: -2};
anims.wallOnReturn[7] = {x: 5, y: -3};
anims.wallOnReturn[8] = {x: 5, y: -4};

anims.wallOff[0] = {x: 6, y: 1};
anims.wallOff[1] = {x: 5, y: 1};
anims.wallOff[2] = {x: 4, y: 1};
anims.wallOff[3] = {x: 3, y: 1};
anims.wallOff[4] = {x: 3, y: 2};
anims.wallOff[5] = {x: 2, y: 2};
anims.wallOff[6] = {x: 2, y: 1};
anims.wallOff[7] = {x: 2, y: 0};
anims.wallOff[8] = {x: 2, y: -1};
anims.wallOff[9] = {x: 2, y: -2};
anims.wallOff[10] = {x: 2, y: -3};
anims.wallOff[11] = {x: 2, y: -4};

anims.wallOffReturn[1] = {x: 6, y: 1};
anims.wallOffReturn[2] = {x: 5, y: 1};
anims.wallOffReturn[3] = {x: 4, y: 1};
anims.wallOffReturn[4] = {x: 3, y: 1};
anims.wallOffReturn[5] = {x: 3, y: 0};
anims.wallOffReturn[6] = {x: 3, y: -1};
anims.wallOffReturn[7] = {x: 3, y: -2};
anims.wallOffReturn[8] = {x: 3, y: -3};
anims.wallOffReturn[9] = {x: 3, y: -4};

// Hedge

anims.hedgeOn[0] = {x: 4, y: 2};
anims.hedgeOn[2] = {x: 4, y: 1};
anims.hedgeOn[3] = {x: 3, y: 1};
anims.hedgeOn[4] = {x: 2, y: 1};
anims.hedgeOn[5] = {x: 1, y: 1};
anims.hedgeOn[6] = {x: 1, y: 0};
anims.hedgeOn[7] = {x: 1, y: -1};
anims.hedgeOn[8] = {x: 1, y: -2};
anims.hedgeOn[9] = {x: 1, y: -3};
anims.hedgeOn[10] = {x: 1, y: -4};

anims.hedgeOnReturn[1] = {x: 4, y: 2};
anims.hedgeOnReturn[2] = {x: 3, y: 2};
anims.hedgeOnReturn[3] = {x: 2, y: 2};
anims.hedgeOnReturn[4] = {x: 2, y: 1};
anims.hedgeOnReturn[5] = {x: 2, y: 0};
anims.hedgeOnReturn[6] = {x: 2, y: -1};
anims.hedgeOnReturn[7] = {x: 2, y: -2};
anims.hedgeOnReturn[8] = {x: 2, y: -3};
anims.hedgeOnReturn[9] = {x: 2, y: -4};

anims.hedgeOff[0] = {x: 4, y: 3};
anims.hedgeOff[1] = {x: 4, y: 4};
anims.hedgeOff[2] = {x: 3, y: 4};
anims.hedgeOff[3] = {x: 3, y: 3};
anims.hedgeOff[4] = {x: 3, y: 2};
anims.hedgeOff[5] = {x: 3, y: 1};
anims.hedgeOff[6] = {x: 3, y: 0};
anims.hedgeOff[7] = {x: 3, y: -1};
anims.hedgeOff[8] = {x: 3, y: -2};
anims.hedgeOff[9] = {x: 3, y: -3};
anims.hedgeOff[10] = {x: 3, y: -4};

anims.hedgeOffReturn[1] = {x: 4, y: 3};
anims.hedgeOffReturn[2] = {x: 3, y: 3};
anims.hedgeOffReturn[3] = {x: 3, y: 2};
anims.hedgeOffReturn[4] = {x: 3, y: 1};
anims.hedgeOffReturn[5] = {x: 3, y: 0};
anims.hedgeOffReturn[6] = {x: 3, y: -1};
anims.hedgeOffReturn[7] = {x: 3, y: -2};
anims.hedgeOffReturn[8] = {x: 3, y: -3};
anims.hedgeOffReturn[9] = {x: 3, y: -4};

// Trailer Only

anims.babaIsStage[0] = {x: 1, y: 1};
anims.babaIsStage[1] = {x: 1, y: 0};
anims.babaIsStage[2] = {x: 1, y: -1};
anims.babaIsStage[3] = {x: 1, y: -2};
anims.babaIsStage[4] = {x: 1, y: -3};
anims.babaIsStage[5] = {x: 1, y: -4};

anims.babaIsStage[8] = {x: 2, y: -4};
anims.babaIsStage[9] = {x: 2, y: -3};
anims.babaIsStage[10] = {x: 2, y: -2};
anims.babaIsStage[11] = {x: 2, y: -1};
anims.babaIsStage[12] = {x: 2, y: 0};
anims.babaIsStage[13] = {x: 2, y: 1};
anims.babaIsStage[14] = {x: 1, y: 1};
anims.babaIsStage[15] = {x: 0, y: 1};

anims.babaIsStage[17] = {x: -1, y: 1};
anims.babaIsStage[18] = {x: -1, y: 0};
anims.babaIsStage[19] = {x: -1, y: -1};
anims.babaIsStage[20] = {x: -1, y: -2};
anims.babaIsStage[21] = {x: -1, y: -3};
anims.babaIsStage[22] = {x: -1, y: -4};

anims.babaIsStageReturn[1] = {x: 1, y: 1};
anims.babaIsStageReturn[2] = {x: 2, y: 1};
anims.babaIsStageReturn[3] = {x: 3, y: 1};
anims.babaIsStageReturn[4] = {x: 3, y: 0};
anims.babaIsStageReturn[5] = {x: 3, y: -1};
anims.babaIsStageReturn[6] = {x: 3, y: -2};
anims.babaIsStageReturn[7] = {x: 3, y: -3};
anims.babaIsStageReturn[8] = {x: 3, y: -4};



