if (!instance_exists(self)) exit;
if (script_get_index("update_" + string(obj_type)) >= 0) script_execute(script_get_index("update_" + string(obj_type)));

#define update_0() 
timer += 1;
depth = 31;
if (timer < 30)
{
    alpha_screen = ease_linear(0, 1, timer, 30) * 0.4;
    
}
if (timer >= 30 && timer < 60)
{
    alpha_screen = 0.4;
    
}
if (timer >= 60)
{
    alpha_screen = ease_linear(1, 0, timer-60, 30) * 0.4;
    
}
if (timer >= 90)
{
    instance_destroy();
    exit;
}


#define update_1() 
timer += 1;
depth = 31;
spr_index = sprite_get("final_smash_cinematic");
if (timer < 15)
{
    img_index = 0;
    alpha_screen = ease_linear(0, 1, timer, 15) * 0.4;
}
if (timer >= 15 && timer < 60)
{
    img_index = clamp(1+floor(ease_linear(0,3,timer - 15, 45)), 0, 5);
    alpha_screen = 0.4;
}
if (timer >= 60)
{
    img_index = 4;
    alpha_screen = ease_linear(1, 0, timer-60, 30) * 0.4;
}
if (timer >= 90)
{
    instance_destroy();
    exit;
}

#define update_2() 
timer += 1;
depth = 31;
spr_index = sprite_get("fx_final_smash_pillar");
image_yscale = room_height / 128;
if (timer < 30)
{
    alpha_screen = ease_linear(0, 1, timer, 30) * 0.8;
    image_xscale = ease_linear(0, 256, timer, 30) / 128;
}
if (timer >= 200)
{
    alpha_screen = ease_linear(1, 0, timer-200, 30) * 0.8;
    image_xscale = ease_linear(256, 0, timer-200, 30) / 128;
}
if (timer >= 230)
{
    instance_destroy();
    exit;
}