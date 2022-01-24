if(state == PS_SPAWN)
{
    if(auto_reload)
        draw_debug_text(temp_x, temp_y-10, "Taunt to disable Auto-Reload");
}
else

//Draw bullets remaining
if(variable_instance_exists(id,"bullets"))
{
    //Reload Bar
    draw_sprite(sprite_get("reloadbar"), 0, temp_x, temp_y-18);
    if(attack == AT_TAUNT_2 && tac_reload && !hud_fail && hud_enhanced == 0 && state == PS_ATTACK_GROUND && state_timer > 8 && window <= 2)
        draw_sprite(sprite_get("reloadtick"), 0, temp_x+floor((state_timer-8)*3), temp_y-18);

    if (!(attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND) || hud_bullet == 6)
    {
        if(bullets == 0)
        {
            if(hud_reload_timer < 16)
                draw_debug_text(temp_x+6, temp_y-14, "RELOAD!")
        }
        for(i = 0; i < 6; i++)
            draw_sprite(sprite_get("hud_bullet"), (i < bullets ? (6-i <= hud_enhanced ? 1 : 0) : 2), temp_x+160+(i*8), temp_y-18)
    }
    else
        for(i = 0; i < 6; i++)
            draw_sprite(sprite_get("hud_bullet"), 2, temp_x+160+(i*8), temp_y-18)
}