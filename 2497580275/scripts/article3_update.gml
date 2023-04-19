state_timer ++;
image_index = state_timer/4;
x = player_id.x-30 + (sin((state_timer/80*360)/180*-3.14)*50)
y = player_id.y-40 + (cos((state_timer/80*360)/180*-3.14)*50)

if(player_id.parasiteLevel >= eyeNo+1)
{
    if(image_alpha == 0)
        sound_play(asset_get("sfx_bigplant_eat"))
    image_alpha = 1;
}
else
    image_alpha = 0;
