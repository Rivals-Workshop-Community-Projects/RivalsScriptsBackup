if (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    if (window == 2 || window == 3 || window == 4 || window == 5) {
    	var os = y-30
    	
    	var d = point_distance(uspecial_node_x, uspecial_node_y, x, y)/(uspecial_dist_max) 
    	var dr = point_direction(uspecial_node_x, uspecial_node_y, x, y)
    	var xs = lengthdir_x(2, dr)
    	var xo = 6 * spr_dir
    	var ys = lengthdir_y(2, dr)
    	var im = window == 5 || !uspecial_grounded;
    	shader_start();
        draw_outlined(sprite_get("uspecial_part2"), im, round(uspecial_node_x + xo), round(uspecial_node_y), 1, 1, im ? uspecial_nodestart_dir : 90, c_black, image_alpha);
        draw_outlined(sprite_get("uspecial_part"), uspecial_index, round(uspecial_node_x + xs + xo), round(uspecial_node_y + ys), (d)*3, (1.3-d*0.5), dr, c_black, image_alpha);
        draw_sprite_ext(sprite_get("uspecial_part2"), im, round(uspecial_node_x + xo), round(uspecial_node_y), 1, 1, im ? uspecial_nodestart_dir : 90, c_white, image_alpha);
        draw_sprite_ext(sprite_get("uspecial_part"), uspecial_index, round(uspecial_node_x + xs + xo), round(uspecial_node_y + ys), (d)*3, (1.3-d*0.5), dr, c_white, image_alpha);
    	shader_end();
    
    }
}

#define draw_outlined(_sprite, _image, _x, _y, _xscale, _yscale, _rot, _outline_col, _alpha)
for (var i = -1; i <= 1; i+=1) for (var j = -1; j <= 1; j+=1) 
    draw_sprite_ext(_sprite, _image, _x+i*2,_y+j, _xscale, _yscale, _rot, _outline_col, _alpha);
    