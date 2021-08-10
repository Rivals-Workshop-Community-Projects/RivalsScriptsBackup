//article1_init

can_be_grounded = false; //if moves with platform?
ignores_walls = false;
//uses_shader = true;

//sprite_index = sprite_get("edgepiece");
//mask_index = sprite_get("edgepiece");

//sprite_index = sprite_get("pileAirUp");
mask_index = sprite_get("pileAirUp_hurt");


spr = sprite_get("pileAirUpwhite");

sprite_change_offset("pileAirUp_hurt", 47,63);// 45, 4 );
sprite_change_offset("pileAirUpwhite", 47,63);// 45, 4 );
sprite_change_offset("pileAirUpred", 47,63);
sprite_change_offset("pileAirUpyellow", 47,63);
sprite_change_offset("pileAirUporange", 47,63);
sprite_change_offset("pileAirUpblue", 47,63);
sprite_change_offset("pileAirUpgreen", 47,63);

animOffset = 0; //random_func(0,image_number,true);
animSpd = 3;

isVisual = false;
spawnedVisuals = false;

mainPiece = false;


        

//print_debug(string(hsp) + ", " + string(vsp));

canBeCollected = false;



fallOfCollectDelay = 60 * 4;
fallOfCollectTimer = 0;
//TODO: maybe instead never go off stage, so if i am off the edge (bigger or smaller x than stage) the initial direction needs to be opposite



grav = 0.3;

on_ground = false;

damping = 0.2;

tolerance = 1;


anim_timer = 0;


last_hitbox = -1000;
last_id_group = -100;
last_player = -100;


followPlayer = false;
followPlayerID = -100;

//canBeThrown = false;
wasThrown = false;
doExplod = false;

wasCollected = false;
collectedRegularly = true;
startedCollectAnim = false;
startColX=0;
startColY=0;
collectAnimTimer = 0;
collectAnimDurTotal = 16;//30;
doFade = false;
killAfterFade = true;
fadeTimeTotal = 1000000;
fadeTimer = 0;
alpha = 1;
frame = 0;

visualPieces = ds_list_create();

groundY = 999999;
parentArticle = noone;

fakeFloorHeight = 16;
bounceTimer = 0;

prev_hsp = 0;
prev_vsp = 0;

endOffsetX = 0;
endOffsetY = 0;

frozen = false;
deleted = false;

newFrame = -99;

img_num = sprite_get_number(sprite_get("pileAirUp"));

colorL = noone;
colorF = noone;
colorT = noone;

reattachDelay = 0;
reattachTimer = 0;

drawInfront = false;

hitBox = -1;
hb = noone;