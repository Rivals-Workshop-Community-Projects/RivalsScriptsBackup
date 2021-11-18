//Draw bullets remaining
if(variable_instance_exists(id,"bullets"))
{
    if (!(attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND) || hud_bullet == 6)
    {
        if(bullets == 0)
        {
            hud_reload_timer ++;
            if(hud_reload_timer < 16)
                draw_debug_text(temp_x, temp_y-10, "Atk + Sp to RELOAD!!")
            else if (hud_reload_timer == 30)
                hud_reload_timer = 0;
        }
        for(i = 0; i < 6; i++)
        {
            if(i < bullets)
                shader_start();
                
            draw_sprite(sprite_get("hud_bullet"), (i < bullets ? (6-i <= hud_enhanced ? 1 : 0) : 2), temp_x+160+(i*8), temp_y-18)
            shader_end();
        }
    }
    else
        for(i = 0; i < 6; i++)
        {       
            draw_sprite(sprite_get("hud_bullet"), 2, temp_x+160+(i*8), temp_y-18)
            shader_end();
        }
}