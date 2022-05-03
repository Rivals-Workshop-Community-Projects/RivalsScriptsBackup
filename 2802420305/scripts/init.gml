
hasSpawned = false;


itemSpawnTimer = 0
itemSpawnCD = 60 * 4

tetrominoZtest = ds_list_create();
tetrominos = ds_list_create();


ticks = 0;

moveTickCounter = 0;
moveTickLength = 10;

/*
//gridcells = [10, 50];
gridcellsW = 10;
gridcellsH = 50;

for(var i = 0; i < gridcellsW; i++)
    for(var j = 0; j < gridcellsH; j ++)
        gridcells[i, j] = 0;
*/

currentFalling = noone;

moveIndex = 0;
fallCounter = 0;

inputQue = ds_list_create();

currentTetromino = 0;


right_down = 0;
left_down = 0;
up_down = 0;
down_down = 0;
attack_down = 0;
special_down = 0;
jump_down = 0;
shield_down = 0;
taunt_down = 0;
right_down_last = 0;
left_down_last = 0;
up_down_last = 0;
down_down_last = 0;
attack_down_last = 0;
special_down_last = 0;
jump_down_last = 0;
shield_down_last = 0;
taunt_down_last = 0;


horInputTimerR = 0;
horInputTimerL = 0;
vertInputTimer = 0;
horInputDelay = 5;//4; //6;
horInputDelayConsecutive = 2;
vertInputDelayConsecutive = 2;

fallDelay = 60;
lockDelay = 30;
lockTimer = 0;
fallTimer = 0;

level = 1;
score = 0;

fullScreenAnim = false;
fullScreenTimer = 0;
fullScreenSprite = sprite_get("gameOver");
fullScreenAnimMoveWithCamera = false;

linesCleared = 0;
lastDropCleared = false;
lastClearDifficult = false;
combo = 0;
lastPieceY = 0;

canSwap = true;

height = 20;// 8;
width = 10;
spawnX = 3;
spawnY = 0;
/*field = array_create(height, [0]);

for (var i = 0; i < height; i++)
{
    new_line = array_create(width, [0]);
    field[i] = new_line;
}*/
field = [];
for(var i = 0; i < width; i++)
    for(var j = 0; j < height; j ++)
        field[i, j] = 0;

pieceQueue = ds_list_create();
pieceBag = ds_list_create();

startDelay = 60 * 2.5; //not less delay, otherwise starting bag might not be random

pieceCurr = noone;
ghostCurr = noone;
pieceHeld = noone;
currentPiecesOnBoard = 0;

//pieces in a 4x4 grid https://tetris.fandom.com/wiki/SRS
pieces = [
        [[4, 5, 6, 7], [2, 6, 10, 14], [8, 9, 10, 11], [1, 5, 9, 13]],//I
        [[0, 1, 5, 6], [2, 5, 6, 9], [4, 5, 9, 10], [1, 4, 5, 8]],//Z
        [[1, 2, 4, 5], [1, 5, 6, 10], [5, 6, 8, 9], [0, 4, 5, 9]],//S
        [[0, 4, 5, 6], [1, 2, 5, 9], [4, 5, 6, 10], [1, 5, 8, 9]],//J
        [[2, 4, 5, 6], [1, 5, 9, 10], [4, 5, 6, 8], [0, 1, 5, 9]],//L
        [[1, 4, 5, 6], [1, 5, 6, 9], [4, 5, 6, 9], [1, 4, 5, 9]],//T
        [[1, 2, 5, 6], [1, 2, 5, 6], [1, 2, 5, 6], [1, 2, 5, 6]],//O
        //TODO: get rid of O duplicates
    ];
    
pieceColorValues = [$f1f101, $0102f0, $01f007, $ff6200, $0e8ffe, $f000c8, $01f0f0];

//SRS
rotations = [
        [[0, 0], [-1, 0], [-1, 1], [0, -2], [-1, -2]],//0>>1
        [[0, 0], [1, 0], [1, -1], [0, 2], [1, 2]],//1>>0
        [[0, 0], [1, 0], [1, -1], [0, 2], [1, 2]],//1>>2
        [[0, 0], [-1, 0], [-1, 1], [0, -2], [-1, -2]],//2>>1
        [[0, 0], [1, 0], [1, 1], [0, -2], [1, -2]],//2>>3
        [[0, 0], [-1, 0], [-1, -1], [0, 2], [-1, 2]],//3>>2
        [[0, 0], [-1, 0], [-1, -1], [0, 2], [-1, 2]],//3>>0
        [[0, 0], [1, 0], [1, 1], [0, -2], [1, -2]],//0>>3
    ];
rotationsI = [
        [[0, 0], [-2, 0], [1, 0], [-2, -1], [1, 2]],//0>>1
        [[0, 0], [2, 0], [-1, 0], [2, 1], [-1, -2]],//1>>0
        [[0, 0], [-1, 0], [2, 0], [-1, 2], [2, -1]],//1>>2
        [[0, 0], [1, 0], [-2, 0], [1, -2], [-2, 1]],//2>>1
        [[0, 0], [2, 0], [-1, 0], [2, 1], [-1, -2]],//2>>3
        [[0, 0], [-2, 0], [1, 0], [-2, -1], [1, 2]],//3>>2
        [[0, 0], [1, 0], [-2, 0], [1, -2], [-2, 1]],//3>>0
        [[0, 0], [-1, 0], [2, 0], [-1, 2], [2, -1]],//0>>3
    ];
    
debugX = [];
debugY = [];
debugString = [];
doDrawDebug = false;

playerControlled = false;
didPlayerInit = false;

hudBoardX = 79;//258;
hudBoardY = 184;//492;
hudSpacing = 9;
hudSpacingMinus1 = hudSpacing-1;
hudSpacingMinus2 = hudSpacing-2;
hudBoardOriginX = hudBoardX - 44;
hudBoardOriginY = hudBoardY - 179;
hudBoardPreviewX = hudBoardOriginX + 92;
hudBoardPreviewY = hudBoardOriginY - 3;
hudPreviewSpacing = 7;
hudBoardHeldX = hudBoardOriginX-29;
hudBoardHeldY = hudBoardOriginY+8;
hudBoardAlphaMax = 0.8;
hudBoardAlpha = hudBoardAlphaMax;
hudTextAlphaMax = 0.6;
hudTextAlpha = hudTextAlphaMax;
hudTextDurationStart = 10;
hudTextDurationDelay = 60;
hudTextDurationEnd = 20;
hudTextDurationTotal = hudTextDurationStart + hudTextDurationDelay + hudTextDurationEnd;
hudTextDurationStartAndDelay = hudTextDurationStart + hudTextDurationDelay;
hudTextComboAlpha = 0;
hudTextBtbAlpha = 0;
hudTextTspinAlpha = 0;
hudTextComboTimer = hudTextDurationTotal;
hudTextBtbTimer = hudTextDurationTotal;
hudTextTspinTimer = hudTextDurationTotal;
hudTextComboString = "3 Combo!";
hudTextTspinString = "Tspin!";
hudTextColor = c_white;
hudTextColorBg = c_black;
drawHud = true;

destroyedArticle = false;

botDesPos = noone;
botDesRot = noone;
botEvaluate = true;
botFoundMove = false;
botRot = 0;
botPos = -3;
lastHoles = 0;
botSimResults = ds_list_create();
minHeight = height;
minHoles = width * height;
botFinishedRot = false;
botFinishedPos = false;
highestPieceY = height;
resetSim = true;
loops = 2;

inClearAnim = false;
clearDelay = 30;
clearAnimTimer  = 0;
hardDropFx = hit_fx_create(sprite_get("hardDrop"), 8);
hardDropSparksFx0 = hit_fx_create(sprite_get("hardDropSparks0"), 16);
hardDropSparksFx1 = hit_fx_create(sprite_get("hardDropSparks1"), 16);
hardDropSparksFx2 = hit_fx_create(sprite_get("hardDropSparks2"), 16);
lineClearFx = hit_fx_create(sprite_get("lineClear"), 9);
lineClearFxPosX = (0 + 5) * 64 + 32 - 32;
squareDestrFx0 = hit_fx_create(sprite_get("squareDestruction0"), 9);
squareDestrFx1 = hit_fx_create(sprite_get("squareDestruction1"), 9);
squareDestrFx2 = hit_fx_create(sprite_get("squareDestruction2"), 9);
squareDestrFx3 = hit_fx_create(sprite_get("squareDestruction3"), 9);
squareDestrFx4 = hit_fx_create(sprite_get("squareDestruction4"), 9);
squareDestrFx5 = hit_fx_create(sprite_get("squareDestruction5"), 9);
squareDestrFx6 = hit_fx_create(sprite_get("squareDestruction6"), 9);
gameOver = false;
gameOverClearDelay = 5;
gameOverClearTimer = 0;
gameOverAiHeightSoftCap = 16;//17;
gameOverAiHeightHardCap = 12;//10;
gameOverAiFpsCap = 60;
gameOverAiFpsLength = 3;
gameOverAiFpsTimer = 0;
gameOverAiRecoverFrame = false;
gameOverReal = false;


aiMoveDelayMin = 60*0.2;
aiMoveDelayMax = 60*1.5;
aiRotDelayMin = 60*0.5;
aiRotDelayMax = 60*2.0;
aiMoveCorrectDelayMin = 60*0.1;
aiMoveCorrectDelayMax = 60*0.6;//0.8;
aiRotCorrectDelayMin = 60*0.25;
aiRotCorrectDelayMax = 60*1.0;
aiHoldDelayMin = 60*0.25;
aiHoldDelayMax = 60*1.5;
aiHardDropDelayMin = 60*0.15;
aiHardDropDelayMax = 60*1.0;
aiExtraThinkTimeDelayMin = 60*0.0;
aiExtraThinkTimeDelayMax = 60*4.0;
aiMoveDelay = aiMoveDelayMax;
aiRotDelay = aiRotDelayMax;
aiMoveCorrectDelay = aiMoveCorrectDelayMax;
aiRotCorrectDelay = aiRotCorrectDelayMax;
aiHoldDelay = aiHoldDelayMin;
aiHardDropDelay = aiHardDropDelayMin;
aiExtraThinkTimeDelay = aiExtraThinkTimeDelayMin;//start with min so first drop is fast
aiMoveTimer = 0;
aiRotTimer = 0;
aiMoveCorrectTimer = 0;
aiRotCorrectTimer = 0;
aiHoldTimer = 0;
aiHardDropTimer = 0;
aiExtraThinkTimeTimer = 0;
aiPieceOnBoardMax = 30;//used to scale ai think time so that its faster at the start
//TODO: more natural movement, eg hold down a direction for a while
//also try less random? maybe try to do some worse moves that are found during calculation
//use non uniform randomness

bg2ScrollSpd = 0.125;
bg3ScrollSpd = 0.25;
//bg2DirX = 1;
//bg2DirY = 1;
//bg3DirX = -1;
//bg3DirY = 1;
bg2Dir = 0;
bg3Dir = 90;

camTargets = ds_list_create();
camX = 0;
camY = 0;

fpsRecords = array_create(10);

totalPlayers = 0;
isPractise = get_match_setting(SET_PRACTICE) || get_match_setting(SET_STOCKS) <= 0;

debugControl = false; //TODO: should be false on release

usesTeams = false;
teamStocks = [0,0,0,0];
rivalsGameOver = false;
rivalsGameOverLast = false;
rivalsGameOverTimer = 0;

seed = 0;// current_time OR current_second + all players real(url)