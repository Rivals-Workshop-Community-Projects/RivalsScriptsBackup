//If Frozen get blue tint
if(frostineFreeze)
{
    if(get_gameplay_time() % 10 == 0)
    {
        with(other_player_id)
        {
            fx = spawn_hit_fx(other.x-30+random_func(2,60,true),other.y-10-random_func(5,50,true), debuff_fx);
            fx.pause = 8;
            fx.depth = other.depth - 1;
        }
    }
    shader_start();
        draw_sprite_ext(sprite_index,image_index,x,y,(1+small_sprites)*spr_dir,1+small_sprites,image_angle,c_aqua,0.1);
        gpu_set_fog(1, c_white, 0, 1);
        draw_sprite_ext(sprite_index,image_index,x,y,(1+small_sprites)*spr_dir,1+small_sprites,image_angle,c_white,0.5*sin(get_gameplay_time()/10));
        gpu_set_fog(0, c_white, 0, 0);
    shader_end();
}