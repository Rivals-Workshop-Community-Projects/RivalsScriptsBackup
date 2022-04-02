// pre-draw

if goose_id != undefined && instance_exists(goose_id) && goose_id.draw_flash {
    var col = make_colour_rgb(255, 255, 0);
    gpu_set_alphatestenable(true)
    gpu_set_fog(1, col, 0, 1)
    
    draw_sprite_ext(goose_id.sprite_index, goose_id.image_index, goose_id.x, goose_id.y, goose_id.spr_dir, 1, 0, c_white, 0.5)
    
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
}

shader_start();
if (drawZoDeathEffect) {
    var sprIndex = floor(zoDeathTimer/4);
    draw_sprite_ext(sprite_get("zo_die"), sprIndex, zoDeathX, zoDeathY, 1, 1, 180 - 45*zoDeathDir, c_white, 1);
}
shader_end();