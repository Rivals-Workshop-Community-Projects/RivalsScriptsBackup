//

// user_event(10);//fps counter

timer++;

if(!didSpawn && timer > 5)
{
    didSpawn = true;

    var stickyNote = createBackgroundArticle(-32, -32);
    stickyNote.spr = sprite_get("notes");
    stickyNote.sprInd = random_func(current_time, 14, true);
    
    var steam = createArticle(750, 272);
    steam.spr = sprite_get("steam");
    steam.animSpd = 1;
    steam.depth = -10;//29
    
    var trophyFx = createBackgroundArticle(250, 127);
    trophyFx.spr = sprite_get("trophyNew");
    trophyFx.animSpd = 1;
    
    
    var clockX = 490;
    var clockY = 109;
    
    var clockSeconds = createBackgroundArticle(clockX, clockY);
    clockSeconds.isClock = true;
    clockSeconds.isSeconds = true;
    clockSeconds.spr = sprite_get("clockNewSecondsAll");
    clockSeconds.depth = 34;

    var clockHoursMinutes = createBackgroundArticle(clockX, clockY);
    clockHoursMinutes.isClock = true;
    clockHoursMinutes.spr = sprite_get("clockNewHoursMinutesAll");
    clockHoursMinutes.depth = 33;
    

    if(!is_aether_stage())
    {
        var groundShine = createArticle(78,28);
        groundShine.spr = sprite_get("groundMasksShineOnly");
        groundShine.alpha = 0.5;//different alphas baked into sprite already
        groundShine.depth = 0;
        
        var backgroundShine = createBackgroundArticle(-34,-29);
        backgroundShine.spr = sprite_get("backgroundMasksShineOnly");
        backgroundShine.alpha = 0.5;//different alphas baked into sprite already
        backgroundShine.depth = 31;
    }
    else
    {
        var mirror = createGroundReflectionArticle(0, 0);
        mirror.sprites = sprite_get("groundMasks");
        mirror.maskId = 0;
        mirror.overlayId = 1;
        mirror.overlayAlpha = 0.5;
        mirror.overlayColor = c_white;
        mirror.reflectAlpha = 1;
        mirror.reflectColor = c_white;
        
        mirror.xCenter = 345;
        mirror.yCenter = 450;
        mirror.sprFlip = -1;
        mirror.xPosFlip = -1;
        mirror.yPosFlip = 1;
        mirror.xPosOff = 64;
        mirror.yPosOff = 0;
        
        mirror.xDistortDynamic = 0;
        mirror.xDistort = 0.9;
        mirror.yDistortDynamic = 0;
        mirror.yDistort = 0.9;
        mirror.xPosScale = 0.75;
        mirror.yPosScale = 1;
        
        mirror.dimX = 250;
        mirror.dimY = 125;
        
        var screen = createGroundReflectionArticle(0, 0);
        screen.sprites = sprite_get("groundMasks");
        screen.maskId = 2;
        screen.overlayId = 3;
        screen.overlayAlpha = 0.125;
        screen.overlayColor = c_white;
        screen.reflectAlpha = 0.5;
        screen.reflectColor = make_color_rgb(58,68,102);//c_dkgray;
        
        screen.xCenter = 575;
        screen.yCenter = 350;
        screen.sprFlip = 1;
        screen.xPosFlip = 1;
        screen.yPosFlip = 1;
        screen.xPosOff = 0;
        screen.yPosOff = 0;
        
        screen.xDistortDynamic = 0;
        screen.xDistort = 0.8;
        screen.yDistortDynamic = 0;
        screen.yDistort = 0.9;
        screen.xPosScale = 0.75;
        screen.yPosScale = 0.9;
        
        screen.dimX = 310;
        screen.dimY = 150;

        var mug = createGroundReflectionArticle(0, 0);
        mug.sprites = sprite_get("groundMasks");
        mug.maskId = 4;
        mug.overlayId = 5;
        mug.overlayAlpha = 0.5;
        mug.overlayColor = c_white;
        mug.reflectAlpha = 0.5;
        mug.reflectColor = c_white;
        
        mug.xCenter = 790;
        mug.yCenter = 450;
        mug.sprFlip = 1;
        mug.xPosFlip = 1;
        mug.yPosFlip = 1;
        mug.xPosOff = 0;
        mug.yPosOff = 0;
        
        mug.xDistortDynamic = -0.005;
        mug.xDistort = 1;
        mug.yDistortDynamic = 0;
        mug.yDistort = 0.9;
        mug.xPosScale = 0.25;
        mug.yPosScale = 1;
        
        mug.dimX = 250;
        mug.dimY = 125;
        
        var clock = createBackgroundReflectionArticle(-34,-29);
        clock.sprites = sprite_get("backgroundMasks");
        clock.maskId = 0;
        clock.overlayId = 1;
        clock.overlayAlpha = 0.5;
        clock.overlayColor = c_white;
        clock.reflectAlpha = 0.5;
        clock.reflectColor = c_white;
        
        clock.xCenter = 530;
        clock.yCenter = 153;
        clock.sprFlip = 1;
        clock.xPosFlip = 1;
        clock.yPosFlip = 1;
        clock.xPosOff = 0;
        clock.yPosOff = 0;
        
        clock.xDistortDynamic = -0.005;
        clock.xDistort = 0.8;
        clock.yDistortDynamic = -0.005;
        clock.yDistort = 0.8;
        clock.xPosScale = 0.3;
        clock.yPosScale = 0.4;

        clock.dimX = 250;
        clock.dimY = 150;
        clock.depth = 29;
        
        var trophy = createBackgroundReflectionArticle(-34,-29);
        trophy.sprites = sprite_get("backgroundMasks");
        trophy.maskId = 2;
        trophy.overlayId = 3;
        trophy.overlayAlpha = 0.25;
        trophy.overlayColor = make_color_rgb(255,187,49);//c_white;//make_color_hsv(40,80,100);
        trophy.reflectAlpha = 0.375;
        trophy.reflectColor = make_color_rgb(255,187,49);//make_color_hsv(52,78,100);//make_color_hsv(40,80,100);
        
        trophy.xCenter = 315;
        trophy.yCenter = 200;
        trophy.sprFlip = 1;
        trophy.xPosFlip = 1;
        trophy.yPosFlip = 1;
        trophy.xPosOff = 0;
        trophy.yPosOff = 0;
        
        trophy.xDistortDynamic = -0.005;
        trophy.xDistort = 0.8;
        trophy.yDistortDynamic = 0;
        trophy.yDistort = 0.9;
        trophy.xPosScale = 0.3;
        trophy.yPosScale = 0.9;
        
        trophy.dimX = 175;
        trophy.dimY = 150;
    }
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
if(timer == musicStart)
{
    var speaker = createBackgroundArticle(-146, 353);
    speaker.spr = sprite_get("speaker");
    speaker.sprInd = 0;
    speaker.animSpd = 1;
}



#define createGroundReflectionArticle(xx, yy)
var article = createArticle(xx, yy);
article.isReflection = true;
article.depth = 29;
return article;

#define createBackgroundReflectionArticle(xx, yy)
var article = createBackgroundArticle(xx, yy);
article.isReflection = true;
article.depth = 31;
return article;

#define createBackgroundArticle(xx, yy)
var article = createArticle(xx, yy);
article.inBackground = true;
article.orgX = xx;
article.orgY = yy;
article.orgViewX = view_get_xview();
article.orgViewY = view_get_yview();
return article;

#define createArticle(xx, yy)
return  instance_create(xx, yy, "obj_stage_article", 0);