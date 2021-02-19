//post-draw


//flight GUI
shader_start();

if get_player_color(player) == 3 && state == 6 && attack == AT_TAUNT && window_timer > 45 {
    draw_sprite_ext(flight_gui,glitch_x-1,x+(18-glitch_x*6-32)*spr_dir,y+(21-glitch_y*6-96),spr_dir,1,0,c_white,.9);
} else draw_sprite_ext(flight_gui,flight,x-32*spr_dir,y-96,spr_dir,1,0,c_white,.9);
//draw_sprite_ext(nspecial_gui,nspec_frame,x-28*spr_dir,y-96,spr_dir,1,0,c_white,.9);

if get_player_color(player) == 3 { //(0,16) to (96,112) / 16 = (0,1) to (6,7)
    draw_sprite_part_ext(sprite_index,image_index,glitch_x*16,glitch_y*16,16,16,x+(-60+glitch_x*16+(glitch_x_off-3)*4)*spr_dir,y-100+glitch_y*16+(glitch_y_off-3)*4,spr_dir,1,c_white,1);
    draw_sprite_part_ext(sprite_index,image_index,glitch_xp*16,glitch_yp*16,16,16,x+(-60+glitch_xp*16+(glitch_x_offp-3)*4)*spr_dir,y-100+glitch_yp*16+(glitch_y_offp-3)*4,spr_dir,1,c_white,1);
    with obj_article1 {
        if player_id == other.id {
            draw_sprite_part_ext(sprite_index,image_index,glitch_x*16,glitch_y*16,16,16,x+(-68+glitch_x*16+(glitch_x_off-3)*4)*spr_dir,y-110+glitch_y*16+(glitch_y_off-3)*4,spr_dir,1,c_white,1);
            draw_sprite_part_ext(sprite_index,image_index,glitch_xp*16,glitch_yp*16,16,16,x+(-68+glitch_xp*16+(glitch_x_offp-3)*4)*spr_dir,y-110+glitch_yp*16+(glitch_y_offp-3)*4,spr_dir,1,c_white,1);
        }
    }
}
/*if move_cooldown[AT_NSPECIAL] > 0 && move_cooldown[AT_NSPECIAL] < 19 {
    draw_sprite_ext(sprite_get("uspec_arrow"),0,x+lengthdir_x(64,direc),y-40+lengthdir_y(64,direc),1,1,direc-90,c_white,1);
}*/


/*
var target_alpha = 0.5;
var target_overlay_color = c_white;

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width,room_height, c_white,c_white,c_white,c_white, false);
draw_set_alpha(1);
draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,image_angle,c_white,.5);

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);

gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);
draw_sprite_ext(sprite_get("bair"),image_index,x,y,spr_dir,1,image_angle,c_white,.5);
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);*/

if !code_1 && index_mod < 11 {
    draw_sprite_ext(anim_intro,intro_index,anim_x,anim_y,spr_dir,1,0,c_white,1);
    
}


shader_end();
/*with obj_article2 {
    //draw_debug_text(x+32,y-32,string(hit_op));
    if player_id == other.id && (player_code3 || (player_color == 1 && player_code4)) {
        draw_sprite_ext(disk_spr,im_dex,x-30,y-30,1,1,0,other.color_hsv,1);
    }
}*/




//DEBUG
//with (asset_get("obj_article2")){
    //draw_debug_text(x+16,y-8,string(state));
    //if (asset_get("oPlayer").id != other.id) {
       // draw_debug_text(x+16,y-16,string(distance_to_object(asset_get("oPlayer"))));
    //}
    //draw_debug_text(x+16,y-32,string(hit_cd));
//}


//draw_debug_text(x+96*spr_dir,y+64,string(instance_exists(disk)));
//draw_debug_text(x+64*spr_dir,y+64,string(djump_speed));
//draw_debug_text(x+32,y+10,string(abs(x - stage_x_left)));






//with disk {
    //draw_debug_text(x+16,y,string(player_id.state));
    //draw_debug_text(x+16,y+32,string(player_id.attack));
//}

//with oPlayer {
    //draw_debug_text(x+16,y-32,string(speen));

//}

/*
draw_debug_text(200,170,string(last_ID));
if special_down {
    last_ID = 0;
}
if down_down {
    
    repeat(1000) {
        last_ID++;
        
        with (last_ID) {
            if NoHasVar == undefined other.self_check = 0;
        }
    }
}*/



//with obj_article3 {
    //draw_debug_text(x+16,y+32,string(player_id.color_hsv));
//}



//Kirb Support
if enemykirby != undefined { //if kirby is in a match & swallowed
    with oPlayer { //Run through all players
        if (get_window_value(AT_EXTRA_3,2,AG_WINDOW_ANIM_FRAMES) == 99765) {
            //Beep
        }
    }
}