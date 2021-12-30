//Draw bullets remaining
if(variable_instance_exists(id,"hud_bullet"))
{
    if(prac_timer != 0)
        draw_debug_text(x-(string_length(prac_text)*4), y+4, prac_text);

    if(hud_timer != 0 && bullets != 0)
    {
        shader_start();
        draw_sprite(sprite_get("hud_bullet"), (6-hud_bullet >= hud_enhanced? 0 : 1), x - 14, y+2);
        shader_end();
        draw_debug_text(x-4, y + 8, "x" + string(bullets));
    }
    //Reload Bar
    if(attack == AT_TAUNT_2 && hud_bullet != 0 && !hud_fail && hud_enhanced == 0 && state == PS_ATTACK_GROUND && state_timer > 8 && window <= 2)
    {
        hud_offset = 20;
        draw_sprite(sprite_get("reloadbar2"), 0, x-30, y-86);
        draw_sprite(sprite_get("reloadtick2"), 0, x-30+floor((state_timer-8)*1.5), y-86);
    }
}
if(state == PS_ATTACK_AIR && attack == AT_USPECIAL && window == 2)
{
    shader_start();
        draw_sprite_ext(sprite_get("uspecdraw"), image_index, x, y-34, 1, 1*spr_dir, fire_ang, c_white, 1)
    shader_end();
}