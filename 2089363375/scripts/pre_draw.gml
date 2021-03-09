if (instance_exists(mycat))
{
    if (mycat.visible) {
        shader_start();
            if (mycat.follow_type == 1) {
                draw_sprite_ext(sprite_get("cat_separated_effect"), (mycat.effect_timer % 32) / 8, mycat.x, mycat.y, mycat.spr_dir, 1, 0, c_white, 1);
            }
            
            if (mycat.state == "attack" && mycat.current_attack == AT_NSPECIAL && mycat.window == 7) {
                if (nspecial_charge_timer >= 70) {
                    var charge_img_start = 0;
                    var charge_img_max = 2;
                    
                    if (nspecial_charge_timer >= 78) {
                        charge_img_start = 2;
                        charge_img_max = 4;
                    }
                    
                    draw_sprite_ext(sprite_get("cat_nspecial_chargeeffect"), charge_img_start + (nspecial_charge_timer % (charge_img_max * 4 )) / 4, mycat.x, mycat.y, mycat.spr_dir, 1, 0, c_white, 1);
                }
                else if (nspecial_charge_timer >= 35)
                    draw_sprite_ext(sprite_get("cat_separated_effect"), (nspecial_charge_timer % 16) / 4, mycat.x, mycat.y, mycat.spr_dir, 1, 0, c_white, 1);
                    
            }
        shader_end();
    }
}