//

//sprite_index = sprite_get("mirrorMask");
sprite_index = asset_get("empty_sprite");

maskId = 0;
overlayId = 0;
overlayAlpha = 0.5;
reflectAlpha = 1;
reflectColor = c_white;

xCenter = 430;
yCenter = 0;

sprFlip = true;
xPosFlip = true;
yPosFlip = true;
xDistort = 0.8;
yDistort = 0.9;
xPosOff = 64;
yPosOff = 0;
xPosScale = 0.75;
yPosScale = 1;

xDistortDynamic = 0;
yDistortDynamic = 0;

depth = 15; //behind stuff like krags wall & forsburn

inBackground = false;
backgroundIndex = 1; //default is last bg
orgX = x;
orgY = y;
orgViewX = view_get_xview();
orgViewY = view_get_yview();

dimX = 100;
dimY = 100;

dimXh = 50;
dimYh = 50;
bboxL = 0;
bboxR = 0;
bboxT = 0;
bboxB = 0;

time = 0;