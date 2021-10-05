//other_pre_draw

if(!instance_exists(other_player_id)){
    return;
}

if("grabbed_player_obj" not in other_player_id){
return;
}

// Referenced sprite angle system from Amvira
if(other_player_id.grabbed_player_obj == self 
&& ((other_player_id.attack == AT_FTHROW || other_player_id.attack == AT_FSPECIAL_2 || other_player_id.attack == AT_USPECIAL_2 || other_player_id.attack == AT_NSPECIAL_2 || other_player_id.attack == AT_DSPECIAL_2)
&& (other_player_id.state == PS_ATTACK_GROUND || other_player_id.state == PS_ATTACK_AIR))){
spr_angle = other_player_id.grabbed_player_obj_spr_angle;
draw_x = other_player_id.grabbed_player_obj_draw_x;
draw_y = other_player_id.grabbed_player_obj_draw_y;
}

//Animation Layering for A+B Command Boosted attack
if(other_player_id.attack == AT_EXTRA_3 &&(other_player_id.state == PS_ATTACK_AIR || other_player_id.state == PS_ATTACK_GROUND))
{
    with(other_player_id){
        shader_start();
        draw_sprite_ext(sprite_get("extra_3_behind"),image_index,x,y,spr_dir,1,0,c_white,1);
        shader_end();
    }
}