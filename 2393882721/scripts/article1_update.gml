currentCamParallax = [(initialCamPos[0] - view_get_xview()) * get_bg_data(2, BG_LAYER_PARALLAX_X), (initialCamPos[1] - view_get_yview()) * get_bg_data(2, BG_LAYER_PARALLAX_Y)]
standingFrame = (standingFrame + .1) mod 2

//BG KRAGG
    bgKraggDelay = max( 0, bgKraggDelay - (1 / bgKraggMaxDelay) )
    bgKraggTimer += bgKraggDelay == 0 ? 1 : 0;
    
    var marker_start, marker_end;
    marker_start = points[currentPoint]
    marker_end = points[currentPoint+1]
    //sp = 8;
    //time = floor(point_distance(marker_start[0], marker_start[1], marker_end[0], marker_end[1]) / sp);
    
    bgKraggPos[0] = ease_quadOut(floor(marker_start[0] * 2), floor(marker_end[0] * 2), floor(bgKraggTimer), bgKraggMaxTimer);
    bgKraggPos[1] = ease_quadOut(floor(marker_start[1] * 2), floor(marker_end[1] * 2), floor(bgKraggTimer), bgKraggMaxTimer);
    
    
    if point_distance(bgKraggPos[0],bgKraggPos[1],marker_end[0]*2,marker_end[1]*2) < 2
    {
        currentPoint++;
        bgKraggTimer = 0;
        bgKraggPos = [ marker_end[0] * 2,marker_end[1] * 2 ];
        if (currentPoint == 3)
        {
            currentPoint = 0;
            bgKraggDelay = 1;
        }
        else
        {
            kraggResprite = currentPoint == 2 ? sprite_get("roll_isometric") : sprite_get("roll_flat")
        }
    }

if is_aether_stage()
{
    //Rolling kraggs, the ones that damage you
    kHazardTimer++;
    if (kHazardTimer == kHazardMaxTimer)
    {
        kHazardTimer = 0;
        
        if !instance_exists(kArticles[0])
        {
            var kraggl, kraggr;
            kraggl = instance_create(kStartPoints[0],kStartPoints[2],"obj_stage_article",2);
            kraggl.start = 1
            kraggl.image_xscale = -1
            kraggl.my_hitbox = create_hitbox(AT_EXTRA_1, 2, kStartPoints[0],kStartPoints[2])
            kArticles[0] = kraggl;
            
            kraggr = instance_create(kStartPoints[1],kStartPoints[2],"obj_stage_article",2);
            kraggr.start = 5
            kraggr.my_hitbox = create_hitbox(AT_EXTRA_1, 1, kStartPoints[1],kStartPoints[2])
            kArticles[1] = kraggr;
        }
        else if (kArticles[0].despawnCounter >= 3)
        {
            var o;
            o = kArticles;
                
            o[0].start = 1
            o[1].start = 5
            o[0].despawnCounter = 0
            o[1].despawnCounter = 0
            o[0].state_timer = 0
            o[1].state_timer = 0
            o[0].x = kStartPoints[0]
            o[1].x = kStartPoints[1]
            o[0].y = kStartPoints[2]
            o[1].y = kStartPoints[2]
            o[0].my_hitbox = create_hitbox(AT_EXTRA_1, 2, kStartPoints[0],kStartPoints[2])
            o[1].my_hitbox = create_hitbox(AT_EXTRA_1, 1, kStartPoints[1],kStartPoints[2])    
        }
        
    }

}