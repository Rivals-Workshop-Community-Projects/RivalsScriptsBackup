
if(skl_poisoned) {
    shader_start();

    var anim_speed = 1/3;

    draw_sprite(vfx_poison, anim_speed * get_gameplay_time() % 30, x, (bbox_bottom - bbox_top)/2);

    shader_end();
}