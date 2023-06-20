shader_start();

for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{

    var obj = afterimage_array[i];
    draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
}

if (state = PS_RESPAWN || respawn_taunt > 0) 
{
        draw_sprite_ext(sprite_get("plat_back"), floor(state_timer/6), x, y, 2, 2, 0, c_white, 1)
}
if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack = AT_TAUNT) 
{
        draw_sprite_ext(sprite_get("taunt_fx"), min(floor(window_timer/3), 3), x, y, 2, 2, 0, c_white, 1)
}

if (breakdance_timer >= 60)
{
    if (breakdance_timer = 60)
    {
        spawn_hit_fx(breakdance_box_x+70, y-12, 144);
    }
    draw_sprite_ext(sprite_get("noise_boombox"), 0, breakdance_box_x+70, y+breakdance_box_y, 2, 2, 0, c_white, 1)
    if (breakdance_timer % 24 = 2) var breakdas = spawn_hit_fx(x-30+random_func(1, 60, true), y-50+random_func(2, 20, true), 321);
    //breakdas.depth = depth + 1
}

shader_end();