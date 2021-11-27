draw_sprite_ext(__spr,_image_index,x,y+yoffs,image_xscale,image_yscale,0,-1,1);

if state == 3 {
    //with player_id shader_start();
    draw_sprite_ext(sprite_get("fx_LaserCharge"),state_timer/3,x+2,y-44,1,1,0,-1,clamp(state_timer/3,0,1));
    shader_end();
}

if state == 3 && target != noone { //warn
    var spr_angle = direc;
    //draw_sprite_ext(sprite_get("hitscan"),0,x+lengthdir_x(22,spr_angle),y-30+lengthdir_y(22,spr_angle),1,1,spr_angle,c_white,1);
    shader_end();
    draw_set_alpha(0.25);
    draw_line_width_color(x,y-44,finalCol[1],finalCol[2],4,c_black,c_black);
    draw_line_width_color(x,y-44,finalCol[1],finalCol[2],8,c_black,c_black);
    draw_set_alpha(1);
    draw_circle_color(x,y-44,3+state_timer/5+sin(state_timer/4),player_id.temp_ecolor[1],player_id.temp_ecolor[1],false);
    draw_circle_color(x,y-44,2+state_timer/5+sin(state_timer/4),player_id.temp_ecolor[0],player_id.temp_ecolor[0],false);
    //with player_id shader_start();
    //draw_sprite_ext(sprite_get("hitscan"),2,x,y-44,point_distance(x,y-44,finalCol[1],finalCol[2])/2,1,spr_angle,c_white,1);
    //draw_line_width_color(x,y-44,finalCol[1],finalCol[2],4,c_white,c_white);
    var dir = point_direction(x,y-44,finalCol[1],finalCol[2]);
    var mdist = point_distance(x,y-44,finalCol[1],finalCol[2]);
    //draw_line_width_color(x+lengthdir_x((state_timer%6)*5,dir),y-44,finalCol[1],finalCol[2],4,c_white,c_white);
    
    maskHeader();
    draw_line_width_color(x,y-44,finalCol[1],finalCol[2],4,c_white,c_white);
    maskMidder();
    draw_sprite_ext(sprite_get("white_tracer"),0,x+lengthdir_x((state_timer-20)&~1,dir),y-44+lengthdir_y((state_timer)&~1-20,dir),8,8,dir,col,1);
    maskFooter();
    
} else if (state == 4 || shoost_anim_timer != 1) && target != noone && state != 5 { //shoot
    var spr_angle = direc;
    /*
    draw_sprite_ext(sprite_get("hitscan"),0,x-lengthdir_x(2,spr_angle),y-44-lengthdir_y(22,spr_angle),1,1,spr_angle,c_white,1);
    draw_sprite_ext(sprite_get("hitscan"),1,x,y-44,point_distance(x,y-44,finalCol[1],finalCol[2])/2,1,spr_angle,c_white,1);
    */
    
    var cw = ease_backIn(10,0,shoost_anim_timer,20,3);
    var cd = point_direction(x,y-44,finalCol[1],finalCol[2])+90;
    var cl = ease_sineOut(0,10,shoost_anim_timer,20);
    var ca = ease_linear(1,0,max(shoost_anim_timer-10,0),10);
    shader_end();
    draw_set_alpha(ca);
    draw_circle_color(x,y-44,cw+4,player_id.temp_ecolor[1],player_id.temp_ecolor[1],false);
    draw_circle_color(x,y-44,cw+2,player_id.temp_ecolor[0],player_id.temp_ecolor[0],false);
    draw_circle_color(x,y-44,cw/2,c_white,c_white,false);
    draw_line_width_color(x+lengthdir_x(cl,cd),y-44+lengthdir_y(cl,cd),finalCol[1]+lengthdir_x(cl,cd),finalCol[2]+lengthdir_y(cl,cd),cw,player_id.temp_ecolor[0],player_id.temp_ecolor[0]);
    draw_line_width_color(x+lengthdir_x(-cl,cd),y-44+lengthdir_y(-cl,cd),finalCol[1]+lengthdir_x(-cl,cd),finalCol[2]+lengthdir_y(-cl,cd),cw,player_id.temp_ecolor[0],player_id.temp_ecolor[0]);
    draw_line_width_color(x,y-44,finalCol[1],finalCol[2],cw,c_white,c_white);
    draw_circle_color(finalCol[1],finalCol[2],cw+4,player_id.temp_ecolor[1],player_id.temp_ecolor[1],false);
    draw_circle_color(finalCol[1],finalCol[2],cw+2,player_id.temp_ecolor[0],player_id.temp_ecolor[0],false);
    draw_circle_color(finalCol[1],finalCol[2],cw/2,c_white,c_white,false);
    draw_set_alpha(1);
    
}

if state == 5 {
    if instance_exists(tag) {
        var l = 60+100*(state_timer/35);
        shader_end();
        draw_set_alpha(0.25);
        draw_line_width_color(x,y-40,x+lengthdir_x(l,tag_ang),y-40+lengthdir_y(l,tag_ang),4,c_black,c_black);
        draw_line_width_color(x,y-40,x+lengthdir_x(l*0.5,tag_ang),y-40+lengthdir_y(l*0.5,tag_ang),8,c_black,c_black);
        draw_set_alpha(1);
        maskHeader();
        draw_set_alpha(0.5);
        draw_line_width_color(x+lengthdir_x(l*0.5,tag_ang),y-40+lengthdir_y(l*0.5,tag_ang),x+lengthdir_x(l,tag_ang),y-40+lengthdir_y(l,tag_ang),4,c_white,c_white);
        draw_set_alpha(1);
        draw_line_width_color(x,y-40,x+lengthdir_x(l*0.5,tag_ang),y-40+lengthdir_y(l*0.5,tag_ang),4,c_white,c_white);
        maskMidder();
        draw_sprite_ext(sprite_get("white_tracer"),0,x+lengthdir_x((state_timer-20)&~1,tag_ang),y-44+lengthdir_y((state_timer-20)&~1,tag_ang),8,8,tag_ang,col,1);
        maskFooter();
    }
}




#define maskHeader

gpu_set_blendenable(false);
gpu_set_colorwriteenable(false,false,false,true);
draw_set_alpha(0);
draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);



#define maskMidder

gpu_set_blendenable(true);
gpu_set_colorwriteenable(true,true,true,true);
gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
gpu_set_alphatestenable(true);



#define maskFooter

gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);