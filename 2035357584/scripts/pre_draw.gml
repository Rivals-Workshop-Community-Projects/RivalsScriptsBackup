// pre-draw
if (state == PS_RESPAWN)
{
    draw_sprite_ext(sprite_get("platback"), get_gameplay_time()/6, x, y, spr_dir, 1, 0, c_white, 1);
}

//aerial trap breakdown balloon
for(i = 0; i < num_traps; ++i){
    if(instance_exists(traps[i]) && traps[i].aerial && traps[i].breakdown){
        shader_start();
        draw_sprite_ext(sprite_get("piece2"), 0, traps[i].x, traps[i].y - traps[i].p2_off, traps[i].spr_dir, 1, 0, c_white, 1);
        shader_end();
        if(traps[i].p1_life <= traps[i].p1_LIFETIME && traps[i].should_drop_grenade){
            draw_sprite_ext(sprite_get("piece1"), 0, traps[i].x, traps[i].y - traps[i].p1_off, traps[i].spr_dir, 1, 0, c_white, 1);
        }
        if(traps[i].p1_life == traps[i].p1_LIFETIME && traps[i].should_drop_grenade){
            spawn_hit_fx(traps[i].x, traps[i].y - traps[i].p1_off - 77, 13)
        }
    }
}

//stance changing dust
if(spawn_dust){
    spawn_hit_fx(x, y, dust_back);
}