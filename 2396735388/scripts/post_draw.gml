//post-draw

if(state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    var external_draw_nec=false;
    var external_tail_draw_nec=false;
    var external_tail_draw_nec_really=false;
    var external_draw_sprite=-1;
    //var external_draw_y_offset=0;
    //print_debug(string(attack));
    switch attack {
        case AT_EXTRA_1:
            external_draw_nec=true;
            external_tail_draw_nec=true;//window==2;
            external_tail_draw_nec_really=true;//window==2;
            external_draw_sprite=sprite_get("glide");
            glide_image_index = 1;
        break;
        case AT_NAIR:
            external_draw_nec=true;
            external_draw_sprite=sprite_get("nair");
        break;
        case AT_FSTRONG:
        case AT_USTRONG:
        case AT_DSTRONG:
        case AT_FSTRONG_2:
        case AT_USTRONG_2:
        case AT_DSTRONG_2:
            external_draw_nec = window == 1;
            if strong_emp {
                external_draw_sprite=sprite_get("strong_charge_emp");
            } else {
                external_draw_sprite=sprite_get("strong_charge");
            }
            spr_angle = spr_angle_temp * (window == 1);
            glide_image_index = image_index;
        break;
        case AT_USPECIAL:
            external_draw_nec = window == 3;
            external_draw_sprite = sprite_get("uspecial_glide");
            spr_angle = spr_angle_temp * (window == 3);
            //external_draw_y_offset = -18;
        break;
    }
    if(external_tail_draw_nec){
        var ribbon_1_angle = find_recent_angle(x,y,44,0);
        var temp_angle = point_direction(x,y,previous_x[1],previous_y[1]);
        var diff = angle_difference(temp_angle,ribbon_1_angle);
        var ribbon_1_pos = (clamp(round(diff/25*-spr_dir),-1,1)+1)*5;
        if((ribbon_1_pos-5) != (previous_ribbon_1_pos-5)*previous_spr_dir){
            if(abs(diff-previous_ribbon_1_angle*-previous_spr_dir)<18){
                ribbon_1_pos=previous_ribbon_1_pos;
            }
        }
        var ribbon_2_angle = find_recent_angle(x,y,72,0);
        /*if(function_secondary_output>-1){
            ribbon_2_angle = find_recent_angle(lengthdir_x(44,ribbon_1_angle),lengthdir_y(44,ribbon_1_angle),30,function_secondary_output);
        }//*/
        diff = angle_difference(ribbon_1_angle,point_direction(lengthdir_x(44,ribbon_1_angle),lengthdir_y(44,ribbon_1_angle),lengthdir_x(72,ribbon_2_angle),lengthdir_y(72,ribbon_2_angle)));//angle_difference(ribbon_1_angle,ribbon_2_angle);
        var ribbon_2_pos = clamp(round(diff/20*-spr_dir),-2,2)+2;
        if((ribbon_2_pos-2) != (previous_ribbon_2_pos-2)*previous_spr_dir){
            if(abs(diff-previous_ribbon_2_angle*-previous_spr_dir)<15){
                ribbon_2_pos=previous_ribbon_2_pos;
            }
        }
        var compound_ribbon_pos=ribbon_1_pos+ribbon_2_pos;
        if(external_tail_draw_nec_really){
            shader_start();
            draw_sprite_ext(sprite_get("ribbon_positions_back"),compound_ribbon_pos,x,y-18,spr_dir,1,spr_angle,c_white,1);
            shader_end();
        }
        previous_ribbon_1_pos=ribbon_1_pos;
        previous_ribbon_1_angle=(ribbon_1_pos-1)*25*-spr_dir;
        previous_ribbon_2_pos=ribbon_2_pos;
        previous_ribbon_2_angle=(ribbon_2_pos-1)*25*-spr_dir;
    }
    if external_draw_nec {
        shader_start();
        draw_sprite_ext(external_draw_sprite,glide_image_index,x,y-18,spr_dir,1,spr_angle,c_white,1);
        shader_end();
    }
    if(external_tail_draw_nec){
        var tail_angle = find_recent_angle(x,y,64,0);
        var temp_angle = point_direction(x,y,previous_x[1],previous_y[1]);
        var diff = angle_difference(temp_angle,tail_angle);
        var tail_pos = clamp(round(diff/10*-spr_dir),-4,4)+4;
        if((tail_pos-4) != (previous_tail_pos-4)*previous_spr_dir){
            if(abs(diff-previous_tail_angle*-previous_spr_dir)<7.5){
                tail_pos=previous_tail_pos;
            }
        }
        if(external_tail_draw_nec_really){
            shader_start();
            draw_sprite_ext(sprite_get("tail_positions_ph"),tail_pos,x,y-18,spr_dir,1,spr_angle,c_white,1);
            draw_sprite_ext(sprite_get("ribbon_positions_front"),previous_ribbon_1_pos+previous_ribbon_2_pos,x,y-18,spr_dir,1,spr_angle,c_white,1);
            shader_end();
        }
        previous_tail_pos=tail_pos;
        previous_tail_angle=(tail_pos-4)*10*-spr_dir;
        
    }
}

//draw_debug_text(x,y+20,string(glide_angle));
//draw_debug_text(x,y+40,string(glide_energy));
/*
var thing = sprite_get("glide");
for(var i=previous_pos_count-2;i>=0;i--){
    //draw_line(previous_x[i+1],previous_y[i+1],previous_x[i],previous_y[i]);
    draw_sprite(thing,0,previous_x[i],previous_y[i]);
}//*/

#define find_recent_angle
var index = -1;
var start_x = argument0;
var start_y = argument1;
var dist = argument2;
var first_index=argument3;
for(var i=first_index; i<previous_pos_count; i++){
    if(point_distance(start_x,start_y,previous_x[i],previous_y[i])>dist){
        index=i;
        break;
    }
}
function_secondary_output=index;
if(index>-1){
    return point_direction(x,y,previous_x[index],previous_y[index]);
} else {
    return point_direction(x,y,previous_x[previous_pos_count-1],previous_y[previous_pos_count-1]);
}