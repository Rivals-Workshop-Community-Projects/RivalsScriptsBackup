//Draw bullets remaining
if(variable_instance_exists(id,"hud_bullet"))
{
    if (!(attack == AT_TAUNT_2 && state == PS_ATTACK_GROUND) || hud_bullet == 6)
    {
        if(bullets == 0)
        {
            if(hud_reload_timer > 14)
                draw_sprite(sprite_get("reload_input"),0,x,y);
        }
    }
}