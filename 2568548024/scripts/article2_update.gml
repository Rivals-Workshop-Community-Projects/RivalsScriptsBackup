//

if(doConfetti)
{
    //print(string(hsp) + " " + string(vsp));

    //print(string(x) + " > " + string(room_width)//view_get_wview()) 
    //+ " " + string(y) + " > " + string(room_height));//view_get_hview()));
    
    //var confettiFx = spawn_hit_fx(x-500, y-500, confetti);
    //var confettiFx = spawn_hit_fx(clamp(x,0,room_width), clamp(y,0,room_height), confetti);
    var confettiFx = spawn_hit_fx(clamp(x,0,room_width), clamp(y,0,room_height), confetti);
    //confettiFx.draw_angle =  radtodeg(arctan2(hsp, vsp));// - 90;
    //confettiFx.draw_angle =  radtodeg(arctan2(x, y));// - 90;
    if(x > room_width)
        confettiFx.draw_angle = 90;
    if(y > room_height)
        confettiFx.draw_angle = 0;
    if(y > room_height && x > room_width)
        confettiFx.draw_angle = 45;
        
    confettiFx.spr_dir = random_func(0, 2, true) * 2 - 1;
    //confettiFx.depth = -100; //works but need better anim then
}
else if(inBackground)
{
    //move with bg
    x = orgX + (view_get_xview() - orgViewX) * get_bg_data(backgroundIndex, BG_LAYER_PARALLAX_X);
    y = orgY + (view_get_yview() - orgViewY) * get_bg_data(backgroundIndex, BG_LAYER_PARALLAX_Y);
}
else
{
    if(isNote)
    {
        if(scale < 2)
            scale += 0.25;
        else
            scale = 2;
        
        x += moveDirX;
        y += moveDirY;
        moveDirX *= 0.995;
        moveDirY *= 0.99;
        
        y += sin(waveOffset + lifeTime * waveSpd) * waveDist;
        
        if(lifeTime <= 15)
            alpha = lifeTime/15.0;
        else 
            alpha = 1;
            
        rot += cos(waveRotOffset + lifeTime * waveRotSpd) * waveRotDist;
    }
}

if(isSteam)
{
    //fade in
    if(lifeTime >= lifeTimeStart-16)
        alpha = (lifeTimeStart-lifeTime)/16.0;
    //fade out
    else if(lifeTime <= 16)
        alpha = lifeTime/16.0;
    else 
        alpha = 1;
        
}
    
if(lifeTime <= 0 && doKill)
    instance_destroy();
else
    lifeTime--;