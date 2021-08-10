//

//print(current_time);
//print(current_minute);

//current_time is smooth....
//but current_minute/hour is actual time, not since startup!

//TODO: fix mixel rotation by doing x rotations? nvm too much for hour hand...
if(doClockSeconds)
{
    //draw_sprite_ext(sprite_get("clockSeconds"), 0, 532, 148, 2, 2, -current_time*6*0.001, c_white, 1);
    draw_sprite_ext(spr, 0, x, y, 2, 2, -current_second*6, c_white, 1);
}
else if(doClockMinutes)
{
    //draw_sprite_ext(sprite_get("clockMinutes"), 0, 532, 148, 2, 2, -current_time*6* 0.0001, c_white, 1);
    //draw_sprite_ext(sprite_get("clockMinutes"), 0, 532, 148, 2, 2, -current_minute*6, c_white, 1);
    draw_sprite_ext(spr, 0, x, y, 2, 2, -(current_minute+(current_second/60.0))*6, c_white, 1);
}
else if(doClockHours)
{
    //draw_sprite_ext(sprite_get("clockHours"), 0, 532, 148, 2, 2, -current_time*6 * 0.00001, c_white, 1);
    //draw_sprite_ext(sprite_get("clockHours"), 0, 532, 148, 2, 2, -current_hour*30, c_white, 1);
    draw_sprite_ext(spr, 0, x, y, 2, 2, -(current_hour+(current_minute/60.0))*30, c_white, 1);
}
else if(!doConfetti)
{
    draw_sprite_ext(spr, sprInd + animTime * animSpd, x, y, scale*flipX, scale, rot, c_white, alpha);
    animTime++;
}
