
    //print_debug("LOL")
    var kragg, kx, ky, bgx, bgy;
    kragg = sprite_get("tinykragg");
    kx = standingPos[0] - currentCamParallax[0];
    ky = standingPos[1] - currentCamParallax[1];
    bgx = bgKraggPos[0] - currentCamParallax[0];
    bgy = bgKraggPos[1] - currentCamParallax[1];
    
    draw_sprite_ext(kragg,floor(standingFrame), kx, ky, .5, .5, 0, c_white, 1);
    draw_sprite_ext(kragg,1-floor(standingFrame), kx+86, ky, .5, .5, 0, c_white, 1);
    
    draw_sprite_ext(kraggResprite,1-floor(standingFrame), bgx, bgy, 1, 1, 0, c_white, 1-bgKraggDelay);