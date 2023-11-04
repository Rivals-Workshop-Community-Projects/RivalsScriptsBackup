for (var i = 0; i < ds_list_size(particles); i++)
{
    var p = particles[| i];
    draw_sprite_ext(p.sprite, p.frame, floor(p.x_pos), floor(p.y_pos), 1, 1, p.angle, p.color, p.alpha)
}

if (state == PS_ATTACK_GROUND && attack == AT_TAUNT && taunt_timer >= 1700){
draw_sprite_ext(sprite_get("space"), 0, x, y, 2, 2, 0, noone, bg_alpha);
}

if (state == PS_ATTACK_GROUND && attack == AT_TAUNT_2 && window == 2){
draw_sprite_ext(sprite_get("taunt2_text"), window_timer, x - 50, y - 14, 1, 1, 0, noone, 0.75);
}