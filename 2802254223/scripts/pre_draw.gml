//follow suits
if ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || attack != AT_USPECIAL || window != 3){
    if(hudtimer == 0)
    {
        gpu_set_fog(1, c_white, 0, 1);
        for(j = 0; j < 3; j++)
        {
            for(k = 0; k < 3; k++)
                draw_sprite_ext(sprite_get("smolsymbols"), curSuit, hudpos_x+(3+(2*j))*spr_dir, y-60+(2*k), 1.2, 1.2, 0, c_white, 0.20); 
        }
        gpu_set_fog(0, c_white, 0, 0);
        shader_start();
        for(i = 0; i < 3; i++)
            draw_sprite_ext(sprite_get("smolsymbols"), curSuit+i, hudpos_x+((dcos(i*180)*5)*spr_dir), y-58+(20*i), 1, 1, 0, c_white, 1); 
    }
    else
    {
        for(j = 0; j < 3; j++)
        {
            for(k = 0; k < 3; k++)
            {
                gpu_set_fog(1, c_white, 0, 1);
                draw_sprite_ext(sprite_get("smolsymbols"), curSuit, hudpos_x+(3+(2*j))*spr_dir, y-60+(2*k), 1.2, 1.2, 0, c_white, (15-hudtimer)/15/5); 
                gpu_set_fog(0, c_white, 0, 0);
            }
        }
        shader_start();
        for(i = 1; i < 4; i++)
            draw_sprite_ext(sprite_get("smolsymbols"), curSuit-1+i, hudpos_x+(dcos((i+ease_linear(0,1,hudtimer-20,20))*180)*5*spr_dir), floor(y-58+(20*(i+ease_linear(0,1,hudtimer-20,20)))), 1, 1, 0, c_white, 1-(i==3?(ease_linear(1,0,20-hudtimer,20)):0)); 
    }
}
shader_end();
