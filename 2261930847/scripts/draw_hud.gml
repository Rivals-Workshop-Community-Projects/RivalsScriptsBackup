if ("moist_rn" in self){ //HUD Wrapper
    //moist meter

    var moist_full = sprite_get("mudmeter_full");
    var moist_height = sprite_get_height(moist_full);
    var moist_width = sprite_get_width(moist_full);

    var moist_percentage = moist_rn / moist_max;

    shader_start();
    draw_sprite(sprite_get("mudmeter_empty"),0, temp_x + 20, temp_y - 5);
    draw_sprite_part(moist_full,moist_anim, 0, 0, moist_width * moist_percentage, moist_height, temp_x + 20, temp_y - 5);
    draw_sprite(sprite_get("mudmeter_empty"),0, temp_x + 20, temp_y - 5);
    draw_sprite_part(moist_full,moist_anim, 0, 0, moist_width * moist_percentage, moist_height, temp_x + 20, temp_y - 5);
    shader_end();

    //draw_debug_text(x, y + 35, "Joy_dir:" +string(joy_dir));
}


