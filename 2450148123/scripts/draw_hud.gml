

var metercolor;

if (star_meter = 100 || install)
{
    if (colorloop = 0)
    {
    metercolor = merge_colour($10a100, $ffee6a, colorlooptimer / 10);
    colorlooptimer++;
        if (colorlooptimer > 10)
        {
        colorlooptimer = 0;
        colorloop = 1;
            
        }
    }
    
    if (colorloop = 1)
    {
    metercolor = merge_colour($ffee6a, $1818de, colorlooptimer / 10);
    colorlooptimer++;
        if (colorlooptimer > 10)
        {
        colorlooptimer = 0;
        colorloop = 2;
            
        }
    }
    
    if (colorloop = 2)
    {
    metercolor = merge_colour($1818de, $e66541, colorlooptimer / 10);
    colorlooptimer++;
        if (colorlooptimer > 10)
        {
        colorlooptimer = 0;
        colorloop = 3;
            
        }
    }
    
    if (colorloop = 3)
    {
    metercolor = merge_colour($e66541, $0078fd, colorlooptimer / 10);
    colorlooptimer++;
        if (colorlooptimer > 10)
        {
        colorlooptimer = 0;
        colorloop = 4;
            
        }
    }
    
    if (colorloop = 4)
    {
    metercolor = merge_colour($0078fd, $10a100, colorlooptimer / 10);
    colorlooptimer++;
        if (colorlooptimer > 10)
        {
        colorlooptimer = 0;
        colorloop = 1;
            
        }
    }
    
}
else if (star_meter > 80)
metercolor = $0078fd;
else if (star_meter > 60)
metercolor = $e66541;
else if (star_meter > 40)
metercolor = $1818de;
else if (star_meter > 20)
metercolor = $ffee6a;
else
metercolor = $10a100;

if (star_meter < 100 && !install)
{
        colorlooptimer = 0;
        colorloop = 0;
}

var meterlength = 131 * (star_meter/100)

draw_sprite_ext( sprite_get("StarMeterback"), image_index, temp_x - 30, temp_y - 74, 1, 1, 0, c_white, 1);
draw_rectangle_colour(temp_x + 41, temp_y - 10, temp_x + 41 + meterlength, temp_y, metercolor, metercolor, metercolor, metercolor, false);
draw_sprite_ext( sprite_get("StarMeter"), image_index, temp_x - 30, temp_y - 74, 1, 1, 0, c_white, 1);

draw_sprite_ext( sprite_get("StarMeterStar"), image_index, temp_x - 30, temp_y - 74, 1, 1, 0, c_white, 1);



gpu_set_blendmode_ext(bm_src_alpha, bm_one);
gpu_set_alphatestenable(true);


if (star_meter == 100 || install)
{
draw_sprite_ext( sprite_get("StarMeter"), image_index, temp_x - 30, temp_y - 74, 1, 1, 0, metercolor, 0.25);
draw_sprite_ext( sprite_get("StarMeterShine"), image_index, temp_x - 30, temp_y - 74, 1, 1, 0, metercolor, 1);
}
else
draw_sprite_ext( sprite_get("StarMeterShine"), image_index, temp_x - 30, temp_y - 74, 1, 1, 0, c_yellow, 1);

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);




if (get_gameplay_time() < introTimer) && (get_training_cpu_action() == CPU_FIGHT) && !voice_lines && !rolling
draw_debug_text(temp_x , temp_y - 50,string("Press TAUNT: Activate Voice"));

if (get_gameplay_time() < introTimer) && (get_training_cpu_action() == CPU_FIGHT) && rolling
draw_debug_text(temp_x , temp_y - 50,string("ROLLING"));
// draw_debug_text(x,y-200,"aaa = " + string(random_func( 0, 2, true )));



user_event(11);