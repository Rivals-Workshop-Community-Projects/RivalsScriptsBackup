//Drawing below

shader_start();
//draw_sprite(sprite_get("hud_legs"), fspecial_charge, temp_x, temp_y);

//if (hitstun <= 0){
    hoop_hud_sprite = spr_hud_hoop;
//} else{
//    hoop_hud_sprite = sprite_get("hud_hoop_hurt");
//}

if (variable_instance_exists(self, "hoop_recharge_y")){
    draw_sprite_ext(hoop_hud_sprite, get_gameplay_time() / 8, temp_x + 31, temp_y - 14 + hoop_recharge_y, 1, 1, 0, c_white, 1);
}
shader_end();