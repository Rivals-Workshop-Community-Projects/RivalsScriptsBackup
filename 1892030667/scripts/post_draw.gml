//post-draw

shader_start();
//shader_end();

//draw_sprite_ext(sprite_get("uspecial_ball"),0, x, y,1,1,0,c_white,0.85);
if attack == AT_USPECIAL && window == 4 {
    draw_set_alpha(.5);
    draw_sprite_ext(uspec_ball,floor(get_gameplay_time()/5), x, y-40,spr_dir,1,gun_tether_ang-90,c_white,1);
    //spawn_hit_fx(x,y-40,uspec_sfx);
    draw_set_alpha(1);
}
//draw_debug_text(x,y,string(window)+" : "+string(window_timer));
//draw_set_alpha(1);
//with (asset_get("oPlayer")){
    //draw_debug_text(x,y+64,string(sprite_get_xoffset(ccode)));
    //draw_debug_text(x+32,y+64,string(view_yview));
    //draw_debug_text(x,y+92,string(get_state_name(state)));
    //draw_debug_text(x+32,y+92,string(y));
//}
// with asset_get("obj_article1")  {
//     draw_debug_text(x+16,y,string(asset_get("obj_article1").image_angle));
// }
    //draw_debug_text(x,y-32,string(sprite_width));
//draw_debug_text(x+16,y-64,string(hit_check));

//sprite_change_offset("jab", 32, 62);

//draw_sprite_ext(sprite_index,image_index, drawitx, drawity,spr_dir,1,0,c_white,0.85);


shader_end();
/*with asset_get("obj_article2") {
    draw_circle_color(x,y,5,c_red,c_red,false);
}*/