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

//Genesis
if(get_player_color(player) == 30)
{
    var rand_x, rand_y;
    rand_x = random_func(3,50,true);
    rand_y = random_func(6,75,true);
    shader_start();
    if(random_func(2, 100, false) > 95)
        draw_sprite_part_ext(sprite_index,image_index,75+rand_x,50+rand_y,random_func(8,200,true),random_func(2,200,true),x-50*spr_dir+(random_func(6,20,true)+rand_x)*spr_dir,y-100+random_func(10,20,true)+rand_y,spr_dir,1,c_white,1);
    shader_end();
}
