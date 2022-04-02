//article1_update, Simple Platform

if _init == 0 {
    bg_spr = spawn_variables[0];
    img = 0
    anim_speed = spawn_variables[1];
    tile_type = spawn_variables[2];
    
    scroll_x = 0;
    scroll_y = 0;
    parallax_x = 0;
    parallax_y = 0;
    is_parallax = false;
    if (is_array(spawn_variables[3])) {
        parallax_x = spawn_variables[3][0]
        parallax_y = spawn_variables[3][1]
        is_parallax = true;
        image_xscale = 2;
        image_yscale = 2;
    }
    if (is_array(spawn_variables[4])) {
        scroll_x = spawn_variables[4][0]
        scroll_y = spawn_variables[4][1]
    }
    x_off = x;
    y_off = y;
    alpha_ = 1;
    image_blend = c_white; 
    if (spawn_variables[5] == 0)
        alpha_ = 1
    if (spawn_variables[6] == 0)
        image_blend = c_white;
    with obj_stage_article if num == 5 other.room_manager = id;
    image_alpha = alpha_;
    //if static image_alpha = 0;
    depth = og_depth;
    //visible = is_parallax;
    sprite_index = asset_get("empty_sprite")
    mask_index = bg_spr;
    _init = 1;
} else {
    hitstop = 2;
    if (is_parallax) {
        x_off += scroll_x;
        y_off += scroll_y;
        parallax_x = max(0.01 * sign(parallax_x), parallax_x);
        parallax_y = max(0.01 * sign(parallax_y), parallax_y);
        
        x = round(x_off + view_get_xview() * (1-parallax_x))
        y = round(y_off + view_get_yview() * (1-parallax_y))
    }
    img += anim_speed;
}
