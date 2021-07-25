shader_start();

//Thing
if (attack == AT_NSPECIAL_SHOT) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
        if(spr_dir){
        draw_sprite_ext(sprite_get("shotgun"),shot_ind,x-spr_dir*20,y-15,1,1,bash_angle,c_white,1)
    }else{
        draw_sprite_ext(sprite_get("shotgun"),shot_ind,x-spr_dir*20,y-15,1,-1,bash_angle+3.14,c_white,1)
    }
    
}



if (attack == AT_NSPECIAL_SNIPE) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
        if(spr_dir){
        draw_sprite_ext(sprite_get("sniper"),snipe_ind,x+spr_dir*10,y-30,1,1,bash_angle,c_white,1)
    }else{
        draw_sprite_ext(sprite_get("sniper"),snipe_ind,x+spr_dir*10,y-30,1,-1,bash_angle+3.14,c_white,1)
    }
    
}

if (attack == AT_NSPECIAL_WIND) and ((state == PS_ATTACK_AIR) or (state == PS_ATTACK_GROUND)){
        if(spr_dir){
        draw_sprite_ext(sprite_get("windup"),wind_ind,x-spr_dir*20,y-15,1,1,bash_angle,c_white,1)
    }else{
        draw_sprite_ext(sprite_get("windup"),wind_ind,x-spr_dir*20,y-15,1,-1,bash_angle+3.14,c_white,1)
    }
    
}

//Genesis Alt glitching
if get_player_color(player) == 8 && random_func(4, 2, 1) == 0 {

var fs = random_func(0, sprite_height-1, 1)
draw_sprite_part_ext(sprite_index,image_index,0,fs, abs(sprite_width), random_func(1, 20, 1)+4, (x+(random_func(2, 3, 1)-1)*4)  - sprite_get_xoffset(sprite_index)*spr_dir, y+fs - sprite_get_yoffset(sprite_index), spr_dir, 1, image_blend, 1)

}

shader_end();

if(gun == 0 and pistolcooldown > 0){
    draw_sprite(sprite_get("reload"),cooldownindex,x-40, y-90);
}
else if((gun == 1 and shotcooldown > 0)
or (gun == 2 and shellcooldown > 0) or (gun == 3 and snipecooldown > 0)
or (gun == 4 and windcooldown > 0) or (gun == 5 and grenadecooldown > 0))
{
    draw_sprite(sprite_get("reload"),cooldownindex,x-40, y-90);
}

