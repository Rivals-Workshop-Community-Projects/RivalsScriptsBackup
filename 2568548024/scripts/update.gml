//
//draw_debug_text(-400,-400,"DDDDD");



timer++;
    
if(!didSpawn && timer > 5)
{
    didSpawn = true;
    var mirror = instance_create(0,0,"obj_stage_article", 1);
    mirror.sprites = sprite_get("groundMasks");
    mirror.maskId = 0;
    mirror.overlayId = 1;
    mirror.overlayAlpha = 0.5;
    mirror.overlayColor = c_white;
    mirror.reflectAlpha = 1;
    mirror.reflectColor = c_white;

    mirror.xCenter = 345;
    mirror.yCenter = 450;
    mirror.sprFlip = true;
    mirror.xPosFlip = true;
    mirror.yPosFlip = false;
    mirror.xPosOff = 64;
    mirror.yPosOff = 0;
    
    mirror.xDistortDynamic = 0;
    mirror.xDistort = 0.9;
    mirror.yDistort = 0.9;
    mirror.xPosScale = 0.75;
    mirror.yPosScale = 1;
    
    mirror.dimX = 250;
    mirror.dimY = 125;
    
    //---------------------------------
    
    var screen = instance_create(0,0,"obj_stage_article", 1);
    screen.sprites = sprite_get("groundMasks");
    screen.maskId = 2;
    screen.overlayId = 3;
    screen.overlayAlpha = 0.125;
    screen.overlayColor = c_white;
    screen.reflectAlpha = 0.5;
    screen.reflectColor = make_color_rgb(58,68,102);//c_dkgray;
    
    screen.xCenter = 575;
    screen.yCenter = 350;
    screen.sprFlip = false;
    screen.xPosFlip = false;
    screen.yPosFlip = false;
    screen.xPosOff = 0;
    screen.yPosOff = 0;
    
    screen.xDistortDynamic = 0;
    screen.xDistort = 0.8;
    screen.yDistort = 0.9;
    screen.xPosScale = 0.75;
    screen.yPosScale = 0.9;
    
    screen.dimX = 310;
    screen.dimY = 150;
    
    //---------------------------------
    
    var mug = instance_create(0,0,"obj_stage_article", 1);
    mug.sprites = sprite_get("groundMasks");
    mug.maskId = 4;
    mug.overlayId = 5;
    mug.overlayAlpha = 0.5;
    mug.overlayColor = c_white;
    mug.reflectAlpha = 0.5;
    mug.reflectColor = c_white;
    
    mug.xCenter = 790;
    mug.yCenter = 450;
    mug.sprFlip = false;
    mug.xPosFlip = false;
    mug.yPosFlip = false;
    mug.xPosOff = 0;
    mug.yPosOff = 0;
    
    mug.xDistortDynamic = -0.005;
    mug.xDistort = 1;
    mug.yDistort = 0.9;
    mug.xPosScale = 0.25;
    mug.yPosScale = 1;
    
    mug.dimX = 250;
    mug.dimY = 125;
    
    /*mug.xCenter = 790;
    mug.yCenter = 450;
    mug.sprFlip = true;
    mug.xPosFlip = true;
    mug.yPosFlip = false;
    mug.xPosOff = -32;
    mug.yPosOff = 0;
    
    mug.xDistort = 0.75;
    mug.yDistort = 0.9;
    mug.xPosScale = 0.5;
    mug.yPosScale = 1;*/
    
    //---------------------------------
    
    var clock = instance_create(-34,-29,"obj_stage_article", 1);
    clock.inBackground = true;
    clock.sprites = sprite_get("backgroundMasks");
    clock.maskId = 0;
    clock.overlayId = 1;
    clock.overlayAlpha = 0.5;
    clock.overlayColor = c_white;
    clock.reflectAlpha = 0.5;
    clock.reflectColor = c_white;
    
    clock.xCenter = 530;
    clock.yCenter = 153;
    clock.sprFlip = false;
    clock.xPosFlip = false;
    clock.yPosFlip = false;
    clock.xPosOff = 0;
    clock.yPosOff = 0;
    
    clock.xDistortDynamic = -0.005;
    clock.yDistortDynamic = -0.005;
    clock.xDistort = 0.8;
    clock.yDistort = 0.8;
    clock.xPosScale = 0.3;
    clock.yPosScale = 0.4;
    
    clock.dimX = 250;
    clock.dimY = 150;
    
    //---------------------------------
    
    var trophy = instance_create(-34,-29,"obj_stage_article", 1);
    trophy.inBackground = true;
    trophy.sprites = sprite_get("backgroundMasks");
    trophy.maskId = 2;
    trophy.overlayId = 3;
    trophy.overlayAlpha = 0.25;
    trophy.overlayColor = make_color_rgb(255,187,49);//c_white;//make_color_hsv(40,80,100);
    trophy.reflectAlpha = 0.375;
    trophy.reflectColor = make_color_rgb(255,187,49);//make_color_hsv(52,78,100);//make_color_hsv(40,80,100);
    
    trophy.xCenter = 315;
    trophy.yCenter = 200;
    trophy.sprFlip = false;
    trophy.xPosFlip = false;
    trophy.yPosFlip = false;
    trophy.xPosOff = 0;
    trophy.yPosOff = 0;
    
    trophy.xDistortDynamic = -0.005;
    trophy.yDistortDynamic = 0;
    trophy.xDistort = 0.8;
    trophy.yDistort = 0.9;
    trophy.xPosScale = 0.3;
    trophy.yPosScale = 0.9;
    
    trophy.dimX = 175;
    trophy.dimY = 150;
    
    //---------------------------------
    
    /*var skateBoard = instance_create(-34,-29,"obj_stage_article", 1);
    skateBoard.inBackground = true;
    skateBoard.sprites = sprite_get("backgroundMasks");
    skateBoard.maskId = 4;
    skateBoard.overlayId = 5;
    skateBoard.overlayAlpha = 0.125;
    skateBoard.overlayColor = c_white;
    skateBoard.reflectAlpha = 0.25;
    skateBoard.reflectColor = make_color_rgb(246,143,55);//c_white;
    
    skateBoard.xCenter = 962;
    skateBoard.yCenter = 600;
    skateBoard.sprFlip = false;
    skateBoard.xPosFlip = false;
    skateBoard.yPosFlip = false;
    skateBoard.xPosOff = 0;
    skateBoard.yPosOff = 0;
    
    skateBoard.xDistortDynamic = -0.005;
    skateBoard.yDistortDynamic = -0.005;
    skateBoard.xDistort = 1;
    skateBoard.yDistort = 0.9;
    skateBoard.xPosScale = 0.25;
    skateBoard.yPosScale = 0.9;*/
    
    //---------------------------------
    
    /*var pinBoard = instance_create(-34,-29,"obj_stage_article", 1);
    pinBoard.inBackground = true;
    pinBoard.sprites = sprite_get("backgroundMasks");
    pinBoard.maskId = 6;
    pinBoard.overlayId = 7;
    pinBoard.overlayAlpha = 0.125;
    pinBoard.overlayColor = c_white;
    pinBoard.reflectAlpha = 0.4;
    pinBoard.reflectColor = make_color_rgb(139,155,180);//c_white;
    
    pinBoard.xCenter = 1125;
    pinBoard.yCenter = 360;
    pinBoard.sprFlip = false;
    pinBoard.xPosFlip = false;
    pinBoard.yPosFlip = false;
    pinBoard.xPosOff = 0;
    pinBoard.yPosOff = 0;
    
    pinBoard.xDistortDynamic = 0;
    pinBoard.yDistortDynamic = 0;
    pinBoard.xDistort = 0.8;
    pinBoard.yDistort = 0.9;
    pinBoard.xPosScale = 0.75;
    pinBoard.yPosScale = 0.9;
    
    //---------------------------------
    
    var photos = instance_create(-34,-29,"obj_stage_article", 1);
    photos.inBackground = true;
    photos.sprites = sprite_get("backgroundMasks");
    photos.maskId = 8;
    photos.overlayId = 9;
    photos.overlayAlpha = 0.125;
    photos.overlayColor = c_white;
    photos.reflectAlpha = 0.333;
    photos.reflectColor = c_white;
    
    photos.xCenter = 1125;
    photos.yCenter = 360;
    photos.sprFlip = false;
    photos.xPosFlip = false;
    photos.yPosFlip = false;
    photos.xPosOff = 16;
    photos.yPosOff = 0;
    
    photos.xDistortDynamic = 0;
    photos.yDistortDynamic = 0;
    photos.xDistort = 0.8;
    photos.yDistort = 0.8;
    photos.xPosScale = 0.75;
    photos.yPosScale = 0.75;
    
    //---------------------------------
    
    var fridge = instance_create(-34,-29,"obj_stage_article", 1);
    fridge.inBackground = true;
    fridge.sprites = sprite_get("backgroundMasks");
    fridge.maskId = 12;
    fridge.overlayId = 13;
    fridge.overlayAlpha = 0;//0.25; otherwise infront of desk... maybe extra mask for overlay?
    fridge.overlayColor = c_white;
    fridge.reflectAlpha = 0.333;
    fridge.reflectColor = make_color_rgb(139,155,180);//c_white;
    
    fridge.xCenter = 200;
    fridge.yCenter = 600;
    fridge.sprFlip = false;
    fridge.xPosFlip = false;
    fridge.yPosFlip = false;
    fridge.xPosOff = 0;
    fridge.yPosOff = 0;
    
    fridge.xDistortDynamic = -0.005;
    fridge.yDistortDynamic = -0.005;
    fridge.xDistort = 0.8;
    fridge.yDistort = 0.8;
    fridge.xPosScale = 0.5;
    fridge.yPosScale = 0.5;
    
    //---------------------------------
    
    var speakers = instance_create(-34,-29,"obj_stage_article", 1);
    speakers.inBackground = true;
    speakers.backgroundIndex = 2;//<-!
    speakers.sprites = sprite_get("backgroundMasks");
    speakers.maskId = 24;
    speakers.overlayId = 25;
    speakers.overlayAlpha = 0.125;
    speakers.overlayColor = c_white;
    speakers.reflectAlpha = 0.5;
    speakers.reflectColor = make_color_rgb(38,43,68);//c_white;
    
    speakers.xCenter = 75;
    speakers.yCenter = 550;
    speakers.sprFlip = false;
    speakers.xPosFlip = false;
    speakers.yPosFlip = false;
    speakers.xPosOff = 0;
    speakers.yPosOff = 0;
    
    speakers.xDistortDynamic = -0.005;
    speakers.yDistortDynamic = 0;//-0.005;
    speakers.xDistort = 0.8;
    speakers.yDistort = 0.8;
    speakers.xPosScale = 0.6;
    speakers.yPosScale = 0.6;
    
    //---------------------------------
    
    var speakersShiny = instance_create(-34,-29,"obj_stage_article", 1);
    speakersShiny.inBackground = true;
    speakersShiny.backgroundIndex = 2;//<-!
    speakersShiny.sprites = sprite_get("backgroundMasks");
    speakersShiny.maskId = 26;
    speakersShiny.overlayId = 27;
    speakersShiny.overlayAlpha = 0.125;
    speakersShiny.overlayColor = c_white;
    speakersShiny.reflectAlpha = 0.4;
    speakersShiny.reflectColor = make_color_rgb(139,155,180);//(192,203,220);//c_white;//make_color_rgb(90,105,136);
    
    speakersShiny.xCenter = 75;
    speakersShiny.yCenter = 550;
    speakersShiny.sprFlip = false;
    speakersShiny.xPosFlip = false;
    speakersShiny.yPosFlip = false;
    speakersShiny.xPosOff = 0;
    speakersShiny.yPosOff = 0;
    
    speakersShiny.xDistortDynamic = -0.005;
    speakersShiny.yDistortDynamic = 0;//-0.005;
    speakersShiny.xDistort = 0.75;
    speakersShiny.yDistort = 0.75;
    speakersShiny.xPosScale = 0.5;
    speakersShiny.yPosScale = 0.5;*/
    
    //---------------------------------
    
    /*var poster = instance_create(-34,-29,"obj_stage_article", 1);
    poster.inBackground = true;
    poster.sprites = sprite_get("backgroundMasks");
    poster.maskId = 14;
    poster.overlayId = 15;
    poster.overlayAlpha = 0;
    poster.overlayColor = c_white;
    poster.reflectAlpha = 0.2;
    poster.reflectColor = c_white;
    
    poster.xCenter = 100;
    poster.yCenter = 300;
    poster.sprFlip = false;
    poster.xPosFlip = false;
    poster.yPosFlip = false;
    poster.xPosOff = 0;
    poster.yPosOff = 0;
    
    poster.xDistortDynamic = 0;
    poster.yDistortDynamic = 0;
    poster.xDistort = 0.8;
    poster.yDistort = 0.9;
    poster.xPosScale = 0.75;
    poster.yPosScale = 0.8;*/
    
    //---------------------------------
    
    /*var books = instance_create(-34,-29,"obj_stage_article", 1);
    books.inBackground = true;
    books.sprites = sprite_get("backgroundMasks");
    books.maskId = 16;
    books.overlayId = 17;
    books.overlayAlpha = 0.125;
    books.overlayColor = c_white;
    books.reflectAlpha = 0.25;
    books.reflectColor = c_white;
    
    books.xCenter = 875;
    books.yCenter = 125;
    books.sprFlip = false;
    books.xPosFlip = false;
    books.yPosFlip = false;
    books.xPosOff = 0;
    books.yPosOff = 0;
    
    books.xDistortDynamic = 0;
    books.yDistortDynamic = 0;
    books.xDistort = 0.9;
    books.yDistort = 0.5;
    books.xPosScale = 0.9;
    books.yPosScale = 0.5;
    
    //---------------------------------
    
    var booksShiny = instance_create(-34,-29,"obj_stage_article", 1);
    booksShiny.inBackground = true;
    booksShiny.sprites = sprite_get("backgroundMasks");
    booksShiny.maskId = 18;
    booksShiny.overlayId = 19;
    booksShiny.overlayAlpha = 0.125;
    booksShiny.overlayColor = c_white;
    booksShiny.reflectAlpha = 0.333;
    booksShiny.reflectColor = c_white;
    
    booksShiny.xCenter = 875;
    booksShiny.yCenter = 125;
    booksShiny.sprFlip = false;
    booksShiny.xPosFlip = false;
    booksShiny.yPosFlip = false;
    booksShiny.xPosOff = 0;
    booksShiny.yPosOff = 0;
    
    booksShiny.xDistortDynamic = 0;
    booksShiny.yDistortDynamic = 0;
    booksShiny.xDistort = 0.85;
    booksShiny.yDistort = 0.5;
    booksShiny.xPosScale = 0.85;
    booksShiny.yPosScale = 0.5;
        
    //---------------------------------
    
    var booksHolder = instance_create(-34,-29,"obj_stage_article", 1);
    booksHolder.inBackground = true;
    booksHolder.sprites = sprite_get("backgroundMasks");
    booksHolder.maskId = 20;
    booksHolder.overlayId = 21;
    booksHolder.overlayAlpha = 0.125;
    booksHolder.overlayColor = c_white;
    booksHolder.reflectAlpha = 0.5;
    booksHolder.reflectColor = make_color_rgb(139,155,180);//c_white;
    
    booksHolder.xCenter = 875;
    booksHolder.yCenter = 125;
    booksHolder.sprFlip = false;
    booksHolder.xPosFlip = false;
    booksHolder.yPosFlip = false;
    booksHolder.xPosOff = 0;
    booksHolder.yPosOff = 0;
    
    booksHolder.xDistortDynamic = 0;
    booksHolder.yDistortDynamic = 0;
    booksHolder.xDistort = 0.8;
    booksHolder.yDistort = 0.5;
    booksHolder.xPosScale = 0.8;
    booksHolder.yPosScale = 0.5;*/
    
    //---------------------------------
    //---------------------------------
    
    
    /*var steam = instance_create(78,28,"obj_stage_article", 2);
    steam.spr = sprite_get("mugSteam");
    steam.depth = -32;
    steam.inBackground = false;
    steam.scale = 2;
    steam.sprInd = 0;
    steam.animSpd = 0.135;
    steam.lifeTime = -1;
    steam.doKill = false;
    steam.moveDirX = 0;
    steam.moveDirY = 0;
    steam.waveOffset = 0;
    steam.waveDist = 0;*/


    //---------------------------------
    //---------------------------------
    
    var clockSecsS = instance_create(530, 153,"obj_stage_article", 2);
    clockSecsS.doClockSeconds = true;
    clockSecsS.spr = sprite_get("clockSecondsShadow");
    clockSecsS.depth = 32-1;
    var clockMinsS = instance_create(530, 153,"obj_stage_article", 2);
    clockMinsS.doClockMinutes = true;
    clockMinsS.spr = sprite_get("clockMinutesShadow");
    clockMinsS.depth = 32-1;
    var clockHrsS = instance_create(530, 153,"obj_stage_article", 2);
    clockHrsS.doClockHours = true;
    clockHrsS.spr = sprite_get("clockHoursShadow");
    clockHrsS.depth = 32-1;
    
    var clockHrsS = instance_create(532, 151,"obj_stage_article", 2);
    clockHrsS.spr = sprite_get("clockMarks");
    clockHrsS.depth = 32-2;
    
    var clockSecs = instance_create(532, 151,"obj_stage_article", 2);
    clockSecs.doClockSeconds = true;
    clockSecs.spr = sprite_get("clockSeconds");
    clockSecs.depth = 32-3;
    var clockMins = instance_create(532, 151,"obj_stage_article", 2);
    clockMins.doClockMinutes = true;
    clockMins.spr = sprite_get("clockMinutes");
    clockMins.depth = 32-4;
    var clockHrs = instance_create(532, 151,"obj_stage_article", 2);
    clockHrs.doClockHours = true;
    clockHrs.spr = sprite_get("clockHours");
    clockHrs.depth = 32-5;
    
    var clockHrsS = instance_create(532, 151,"obj_stage_article", 2);
    clockHrsS.spr = sprite_get("clockTop");
    clockHrsS.depth = 32-6;
    var clockHrsS = instance_create(530, 153,"obj_stage_article", 2);
    clockHrsS.spr = sprite_get("clockTopShadow");
    clockHrsS.depth = 32-1;
    
    var notes = instance_create(-32, -32,"obj_stage_article", 2);
    notes.spr = sprite_get("notes");
    notes.sprInd = random_func(current_time, 14, true);
    notes.depth = 32-1;
    
    /*with (oPlayer) 
    {
        //print(string(player) + " " + string(object_index == oTestPlayer));
        if(!custom_clone)
        {
            var clone = instance_create( 200, 200, "oPlayer"); 
            clone.custom_clone = true;
        	//clone.sprite_index = asset_get("empty_sprite");
        	//clone.visible = false;
        	clone.mask_index = asset_get("empty_sprite");
        	//clone.hurtbox_spr = sprite_get("empty");
        	//clone.crouchbox_spr = asset_get("empty_sprite");

        	//clone.attack_invince = true;
        	//clone.invincible = true;
        	clone.initial_invince = 2;
        	clone.owner = self;
        }
    }*/
}

if(doDeathShake)
{
    doDeathShake = false;
    shake_camera(18, 12);
}

if(current_second != secLast)
    sound_play(sound_get("tick"), false, noone, 0.125, 1);
secLast = current_second;

var musicStart = 135;

if(timer < musicStart)
    set_bg_data(2, BG_LAYER_ANIMSPD, 0 );
if(timer == musicStart)
    set_bg_data(2, BG_LAYER_ANIMSPD, 8);


if(timer >= musicStart && timer % 4 == 0)
{
    spawnNote(64,545);
    spawnNote(64,650);
}

if(timer >= shineDelay)
{
    shineDelay = timer + random_func(current_time, 24, true) + 24;
    spawnSparksSmall();
}

if(timer >= trophyDelay)
{
    trophyDelaySec = trophyDelay + 16;
    trophyDelay = timer + random_func(current_time+1, 240, true) + 60;
    spawnTrophyBlink();
}
if(timer >= trophyDelaySec)
{
    trophyDelaySec += 10000;
    spawnSparksBig();
}

if(timer >= steamDelay)
{
    steamDelay = timer + random_func(current_time, 6, true) + 6; //+ 64*3;
    spawnSteam();
}


with (oPlayer) 
{
    if(custom_clone)
    {
        x = owner.x + 32;
        y = owner.y;
        sprite_index = owner.sprite_index;
        image_index = owner.image_index;
        spr_dir = owner.spr_dir;
        depth = owner.depth+1;
        
        //get_player_color(player) = get_player_color(owner);
        /*var colorSlot = get_player_color(owner);
        var shade = 0;
        set_color_profile_slot( colorSlot, shade);
        set_color_profile_slot( colorSlot, shade);
        set_color_profile_slot( colorSlot, shade);*/
        
        //draw_sprite_ext(sprite_index, image_index, x, y-128, 1, 1, 0, c_white, 1);
        /*with (owner)
        {
            shader_start();
            draw_sprite_ext(sprite_index, image_index, x+128, y, 1, 1, 0, c_white, 1);
            shader_end();
        }*/
        //gotta do alt with draw and then its the same problem again...
    }
}

//if (instance_exists(oPlayer) && oPlayer != noone){
/*with (oPlayer)
{
    if(id != noone && player != noone && instance_exists(player) 
    && sprite_index != noone)
    {
        print(string(player) + " : " + string(self) 
        + " : " + string(customVar)
        //+ " : " + string(testCol)
        + " : " + string(get_player_team(player))
        + " : " + string(get_player_stocks(player))
        + " : " + string(state)
        + " : " + string(get_player_color(player)));
        //+ " " + string(get_color_profile_slot_r(player,0)));
        //var col_r = get_color_profile_slot_r( get_player_color(player), 0);
    }
}*/

#define spawnTrophyBlink()
//var trophy = instance_create(-34,-32,"obj_stage_article", 2);
var trophy = instance_create(-15+round((view_get_xview() - orgViewX) * get_bg_data(backgroundIndex, BG_LAYER_PARALLAX_X)),
                             -24+round((view_get_yview() - orgViewY) * get_bg_data(backgroundIndex, BG_LAYER_PARALLAX_Y)),"obj_stage_article", 2);
trophy.inBackground = true;
trophy.scale = 2;
trophy.sprInd = 0;
trophy.spr = sprite_get("trophy");
trophy.animSpd = 0.5;
trophy.lifeTime = 23;
trophy.doKill = true;
trophy.depth = 32-1;

#define spawnSparksSmall()
if(random_func(current_time-1, 3, true) == 0)
    spawnSpark(330,170,"shineVfxMedium",23,0);
else
    spawnSpark(330,170,"shineVfxSmall",14,0);

#define spawnSparksBig()
for(var i = 0; i < 3; i++)
{
    if(random_func(current_time-i, 3, true) == 0)
        spawnSpark(335,165,"shineVfxBig",28,i);
    else
        spawnSpark(335,165,"shineVfxMedium",23,i);
}

#define spawnSpark(xx,yy,size,dur,randInd)
var r = current_time + randInd;
//var shine = instance_create(-34,-32,"obj_stage_article", 2);
var shine = instance_create(xx+round((view_get_xview() - orgViewX) * get_bg_data(backgroundIndex, BG_LAYER_PARALLAX_X))
                                + random_func(r, 32, true)-16,
                             yy+round((view_get_yview() - orgViewY) * get_bg_data(backgroundIndex, BG_LAYER_PARALLAX_Y))
                                + random_func(r+1, 32, true)-16,"obj_stage_article", 2);
shine.inBackground = true;
shine.scale = 2;
shine.sprInd = 0;
shine.spr = sprite_get(size);
shine.animSpd = 0.25;
shine.lifeTime = dur;
shine.doKill = true;
shine.depth = 32-random_func(r+2, 4, true);
shine.doKill = true;
shine.moveDirX = (random_func(r+3, 2, true) * 2 - 1) * 0.333;
shine.moveDirY = (random_func(r+4, 2, false) * 2 - 1) * 0.333;
shine.waveOffset = 0;
shine.waveDist = 0;
shine.isNote = true;


#define spawnNote(xx,yy)
var note = instance_create(xx + random_func(current_time, 32, true)-16,
                           yy + random_func(current_time+1, 32, true)-16,"obj_stage_article", 2);
note.inBackground = false;
note.scale = 0;
note.spr = sprite_get("musicVfx");
note.sprInd = random_func(current_time+2, 8, true);
note.depth = 32-random_func(current_time+3, 4, true);
note.lifeTime = random_func(current_time+4, 60, true)+30;
note.doKill = true;
note.moveDirX = random_func(current_time+5, 2, true) * 2 - 1;
note.moveDirY = (random_func(current_time+6, 2, false) * 2 - 1) * 0.333;
note.waveOffset = random_func(current_time+7, 2, false);
note.waveDist = random_func(current_time+8, 2, false)+1;
note.waveSpd = note.waveDist * 0.05;//random_func(current_time+8, 2, false) * 0.2 + 0.2;
note.waveRotOffset = random_func(current_time+9, 2, false)*0.75;
note.waveRotDist = random_func(current_time+10, 2, false)*0.5;
note.waveRotSpd = note.waveDist * 0.05;
note.isNote = true;

#define spawnSteam()
var r = random_func(current_time, 100, false);
var centerX = 810;
var centerY = 392;
if(r < 30)
    spawnSteamPartic(centerX,centerY,"mugSteamLong",90,0,true);
else if(r < 60)
    spawnSteamPartic(centerX,centerY,"mugSteamSingleBig",90,0,false);
else if(r < 90)
    spawnSteamPartic(centerX,centerY,"mugSteamSingleSplit",90,0,false);
else
    spawnSteamPartic(centerX,centerY,"mugSteamSingleSmall",90,0,false);
    
#define spawnSteamPartic(xx,yy,size,dur,randInd,big)
var r = current_time + randInd;
//var steam = instance_create(-34,-32,"obj_stage_article", 2);
var steam = instance_create(xx + random_func(r+1, 56, true)-47,
                            yy + random_func(r+2, 4, true)-11,"obj_stage_article", 2);
steam.inBackground = false;
steam.scale = 2;
steam.flipX = random_func(r+3, 2, true) * 2 - 1;
steam.sprInd = 0;
steam.spr = sprite_get(size);
steam.alpha = 0;
steam.lifeTime = random_func(r+4, 30, false)+75; //90;
steam.animSpd = dur * 0.001; //0.1;
steam.lifeTimeStart = dur;
steam.doKill = true;
steam.depth = 8-random_func(r+5, 24, true);//16-random_func(r+2, 32, true);
//if(big) steam.depth = 0;
steam.moveDirX = (random_func(r+6, 2, true) * 2 - 1) * 0.333;
steam.moveDirY = (random_func(r+7, 2, false) * 2 - 1) * 0.333;
steam.waveOffset = 0;
steam.waveDist = 0;
steam.isNote = false;
steam.isSteam = true;

#define colorRgbToCol(rgb) 
return ((rgb >> 16) & $FF) | (rgb & $FF00) | ((rgb & $FF) << 16);
#define colorAseHexToGmlHex(hsv) //just gotta reverse hex?
hsv = (hsv & 0x55555555) <<  1 | (hsv & 0xAAAAAAAA) >>  1;
hsv = (hsv & 0x33333333) <<  2 | (hsv & 0xCCCCCCCC) >>  2;
hsv = (hsv & 0x0F0F0F0F) <<  4 | (hsv & 0xF0F0F0F0) >>  4;
hsv = (hsv & 0x00FF00FF) <<  8 | (hsv & 0xFF00FF00) >>  8;
hsv = (hsv & 0x0000FFFF) << 16 | (hsv & 0xFFFF0000) >> 16;
return hsv;