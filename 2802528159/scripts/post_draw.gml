shader_start();
if(radar_img > 0){
    radar_rad1 += (radar_rad1 < 136? 1: -136);
    draw_sprite_ext(sprite_get("radar"), radar_img, x + radar_x * spr_dir, y + radar_y, 2 * spr_dir, 2 * spr_dir, radar_angle * spr_dir, c_white, 1);
    maskHeader();
    draw_set_alpha(0);
    draw_sprite_ext(sprite_get("radar"), radar_img, x + radar_x * spr_dir, y + radar_y, 2 * spr_dir, 2 * spr_dir, radar_angle * spr_dir, c_white, 1);
    draw_set_alpha(1);
    maskMidder();
    shader_end();
    for(var m = 0; m < 5; m++){
        draw_circle_color(x + radar_x * spr_dir, y + radar_y, radar_rad1 + m, radar_color[get_player_color(player)][aware], radar_color[get_player_color(player)][aware], 1);
    }
    maskFooter();
}
if(state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_USPECIAL && image_index >= 5 && image_index < 13{
    draw_sprite_ext(sprite_get(string(plate) + "usph"), (spr_dir? usp_dir: 8 - usp_dir) % 8, x + 18 * spr_dir, y - 62, spr_dir * 2, 2, 0, c_white, 1);
    shader_end();
    draw_sprite_ext(sprite_get(string(plate) + "uspo"), (spr_dir? usp_dir: 8 - usp_dir) % 8, x + 18 * spr_dir, y - 62, spr_dir * 2, 2, 0, make_color_rgb(outline_color[0], outline_color[1], outline_color[2]), 1);
}
shader_end();

if(hitstop && timingt && state == PS_ATTACK_GROUND && (attack == AT_NSPECIAL || attack == AT_NSPECIAL_AIR)){
    draw_rectangle_color(0, 0, room_width, room_height, c_red, c_red, c_red, c_red, 0);
    draw_sprite_ext(sprite_index, image_index, x, y, (1 + small_sprites) * spr_dir, 1 + small_sprites, 0, c_black, 1);
    if instance_exists(grabp) draw_sprite_ext(grabp.sprite_index, grabp.image_index, x + (20 + grabp.char_height / 2) * spr_dir, y - 2, (1 + grabp.small_sprites) * grabp.spr_dir, 1 + grabp.small_sprites, -90 * spr_dir, c_black, 1);
    draw_set_alpha(-0.5 + 2 * (70 - hitstop)/70);
    draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, 0);
    draw_set_alpha(1);
    suppress_stage_music(0.0, 0.05);
    sound_stop(sound_get(get_player_color(player) >= 19 && get_player_color(player) <= 22? "sax_chase": "chase"));
    if aware == 2 sresume = 10;
    else sresume = 0;
}

#define maskHeader()
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    
}
//================================================================================
#define maskMidder()
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter()
// Restores normal drawing parameters//================================================================================
{
    gpu_set_alphatestenable(false);
    gpu_set_blendmode(bm_normal);
    draw_set_alpha(1);
}
