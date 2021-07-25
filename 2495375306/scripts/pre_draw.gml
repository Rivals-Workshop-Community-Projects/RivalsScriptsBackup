/*with asset_get("obj_stage_main"){
    if (variable_instance_exists(id, "dark_bg") && dark_bg = true){
        with other{
            gpu_set_fog(1, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x + 2 ,y,spr_dir,1,0, -1, 0.1)
    draw_sprite_ext(sprite_index, image_index, x - 2 ,y,spr_dir,1,0, -1, 0.1)
    draw_sprite_ext(sprite_index, image_index, x ,y + 2,spr_dir,1,0, -1, 0.1)
    draw_sprite_ext(sprite_index, image_index, x ,y - 2,spr_dir,1,0, -1, 0.1)
gpu_set_fog(0, c_white, 0, 0);
        }
    }
}
if (room == 45 or room == 22 or room == 23 or room == 30 or room == 31 or room == 32 or room == 34 or room == 53 or room == 37 or room == 38 or room == 42 or room == 43 or room == 44 or room == 47 or room == 48 or room == 49 or room == 61){*/
gpu_set_fog(1, c_white, 0, 1);
    draw_sprite_ext(sprite_index, image_index, x + 2 ,y,spr_dir,1,0, -1, 0.1)
    draw_sprite_ext(sprite_index, image_index, x - 2 ,y,spr_dir,1,0, -1, 0.1)
    draw_sprite_ext(sprite_index, image_index, x ,y + 2,spr_dir,1,0, -1, 0.1)
    draw_sprite_ext(sprite_index, image_index, x ,y - 2,spr_dir,1,0, -1, 0.1)
gpu_set_fog(0, c_white, 0, 0);
//}