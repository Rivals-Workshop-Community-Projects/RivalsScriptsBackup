//

var xView = view_get_xview();
var yView = view_get_yview();

if(variable_instance_exists(self, "isClock") && isClock)
{
    if(variable_instance_exists(self, "isSeconds") && isSeconds)
        sprInd = current_second;
    else
        sprInd = current_hour * 60 + current_minute;
}

if(variable_instance_exists(self, "inBackground") && inBackground)
{
    //move with bg
    x = orgX + (xView - orgViewX) * xBackgroundParralax;
    y = orgY + (yView - orgViewY) * yBackgroundParralax;
}
if(variable_instance_exists(self, "isNote") && isNote)
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
    
if(variable_instance_exists(self, "lifeTime"))
{
    if(lifeTime <= 0)
        instance_destroy();
    else
        lifeTime--;
}

animTime++;
        
if(variable_instance_exists(self, "isConfetti") && isConfetti)
{
    var confettiFx = spawn_hit_fx(clamp(x,0,room_width), clamp(y,0,room_height), hit_fx_create(sprite_get("confetti"), 28));//5);
    if(x > room_width)
        confettiFx.draw_angle = 90;
    if(y > room_height)
        confettiFx.draw_angle = 0;
    if(y > room_height && x > room_width)
        confettiFx.draw_angle = 45;
        
    confettiFx.spr_dir = random_func(0, 2, true) * 2 - 1;
    //confettiFx.depth = -100; //works but need better anim then
    instance_destroy();
}