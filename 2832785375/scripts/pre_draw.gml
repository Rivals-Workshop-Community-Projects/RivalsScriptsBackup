// pre-draw

if dspec_coords[0] != undefined {
    var _x = dspec_coords[0];
    var _y = dspec_coords[1] - 60;
    var num_lines = 8;
    var spd = 25;
    var len = 16;
    for (var i = 0; i < num_lines; i++) {
        var angle = i*360/num_lines;
        draw_line_width_color(
            _x + lengthdir_x(spd*dspec_timer, angle),
            _y + lengthdir_y(spd*dspec_timer, angle), 
            _x + lengthdir_x(spd*dspec_timer + len, angle), 
            _y + lengthdir_y(spd*dspec_timer + len, angle),
            2, c_white, c_white);
    }
}

shader_start()

//regular strongs
if state == PS_ATTACK_GROUND && (attack == AT_DSTRONG || attack == AT_USTRONG) {
    var _spr = get_attack_value(attack, AG_VINE_SPRITE);
    draw_sprite_ext(_spr, image_index, strong_draw_x, strong_draw_y, spr_dir, 1, 0, c_white, 1)
}

shader_end()