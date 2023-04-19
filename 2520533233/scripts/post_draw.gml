//post-draw
if(dragon_install and music_alt != "" and (get_player_color(player) == 2 or get_player_color(player) == 3)){
    gpu_set_fog(true, rainbow_color_slow, 0, 0);
} else if(dragon_install and music_alt != "" and get_player_color(player) == 6){
    gpu_set_fog(true, c_red, 0, 0);
}

if(attack==AT_DSTRONG and state == PS_ATTACK_GROUND){
    if(window == 2){
		draw_sprite_ext(sprite_get("dstrong_charge"), charge_level*4 + floor((state_timer%12)/3), x - spr_dir*54, y -122, spr_dir*(1+small_sprites), 1+small_sprites, 0, c_white, 1);
		
    }
}

if(attack==AT_FSTRONG and state == PS_ATTACK_GROUND){
    if(window == 1 and window_timer > 7){
		draw_sprite_ext(sprite_get("fstrong_charge"), charge_level*4 + floor((state_timer%12)/3), x , y, spr_dir*(1+small_sprites), 1+small_sprites, 0, c_white, 1);
		
    }
}

if(attack==AT_USTRONG and state == PS_ATTACK_GROUND){
    if(window == 1 and window_timer > 9){
        /*
        x = player_id.x + spr_dir * (-54);
		y = player_id.y - 122;
		life++;
		visible = 1;
		image_index = player_id.charge_level*4 + floor((life%12)/3);
		if(player_id.state_cat == SC_HITSTUN or player_id.window == 2){
			instance_destroy(self);
		}*/
		
		draw_sprite_ext(sprite_get("ustrong_charge"), charge_level*4 + floor((state_timer%12)/3), x - spr_dir*54, y - 122, spr_dir*(1+small_sprites), 1+small_sprites, 0, c_white, 1);
		
    }

 
    if(window == 2){
        draw_sprite_ext(sprite_get("ustrong_hitbox"),floor(window_timer/3)+(charge_level*7), x, y, spr_dir, 1, 0, c_white, 1);
    } else if (window == 3){
        draw_sprite_ext(sprite_get("ustrong_hitbox"),3+floor(window_timer/4)+(charge_level*7), x, y, spr_dir, 1, 0, c_white, 1);
    }

}
if(attack == AT_FSTRONG and state == PS_ATTACK_GROUND){
    if(charge_level == 1){
        draw_sprite_ext(sprite_get("fstrong_lv2"),image_index, x, y, spr_dir*2, 2, 0, c_white, 1);
    } else if (charge_level == 2){
        draw_sprite_ext(sprite_get("fstrong_lv3"),image_index, x, y, spr_dir*2, 2, 0, c_white, 1);
    }
}


gpu_set_fog(false, c_white, 0, 0);


if(rock_lockout > 0 and rock_proj == noone){
    var dmg = get_player_damage(player);
    if(dmg < 10){
        draw_sprite(sprite_get("rock_lockout_icon"), (get_gameplay_time()/3%17), x+18, y - 98);
    } else {
        draw_sprite(sprite_get("rock_lockout_icon"), (get_gameplay_time()/3%17), x+22 + 8*floor(dmg/100), y - 98);
    }
}

if(dragon_install){
    for(var t = 0; t < install_trail_size; t++){
        var i = install_part[t];
        if(i.life > 0){
            gpu_set_fog(true, i.color, 0, 0);
            draw_sprite_ext(i.sprite_index, floor(i.life/6), i.x, i.y, 1, 1, 0, i.color, (i.life/30)/1.5);
        }
    }
    gpu_set_fog(false, c_white, 0, 0);
}

//Muno Phone
//user_event(12);