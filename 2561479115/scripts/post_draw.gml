//
shader_start();
if attacking && attack == AT_NSPECIAL && window == 2 {
    draw_sprite_ext(sprite_get("fx_LaserCharge"),state_timer/3,x+40*spr_dir,y-38,1,1,0,-1,1);
}
/*
if beacon != noone with beacon {
    if state == 3 && target != noone { //warn
        var spr_angle = direc;
        //draw_sprite_ext(sprite_get("hitscan"),0,x+lengthdir_x(22,spr_angle),y-30+lengthdir_y(22,spr_angle),1,1,spr_angle,c_white,1);
        draw_sprite_ext(sprite_get("hitscan"),2,x,y-36,point_distance(x,y-36,finalCol[1],finalCol[2])/2,1,spr_angle,c_white,1);
    } else if state == 4 && target != noone { //shoot
        var spr_angle = direc;
        draw_sprite_ext(sprite_get("hitscan"),0,x-lengthdir_x(2,spr_angle),y-36-lengthdir_y(22,spr_angle),1,1,spr_angle,c_white,1);
        draw_sprite_ext(sprite_get("hitscan"),1,x,y-36,point_distance(x,y-36,finalCol[1],finalCol[2])/2,1,spr_angle,c_white,1);
    }
}*/
shader_end();

//draw particles owo
if (ds_list_size(particles) > 0) {
    for (var i = 0; i < ds_list_size(particles); i++) {
        var ap = particles[| i];
        if (ap.shader == true) shader_start();
        draw_sprite_ext(ap.sprite,0,ap.x,ap.y,1,1,0,-1,ap.alpha);
        if (ap.shader == true) shader_end();
    }
}



shader_start();
if (state == PS_PARRY && window == 1) {
    draw_sprite_ext(sprite_get("shield"),image_index,x,y,spr_dir,1,0,-1,1);
}
shader_end();


//draw_debug_text(x,y,`${attack}`);


/*draw clairen normals temporarily
if state == clamp(state,5,6) {
    switch attack {
        case AT_FTILT:
            draw_sprite_ext(asset_get("sword_jab_sword"),image_index,x,y,spr_dir,1,0,c_white,1);
            break;
    }
}

*/

//gpu_set_colorwriteenable(false,false,false,true)
