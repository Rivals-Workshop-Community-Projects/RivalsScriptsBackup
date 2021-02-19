//used to display special numbers
//draw_debug_text(x - (20 + spr_dir), y + 10, string(specialnums[0] + 1) + string(specialnums[1] + 1) + string(specialnums[2] + 1) + string(specialnums[3] + 1));

//draw_debug_text(x, y, string());

if(ultupperflash != -1){
    if(ultupperflash <= 8){
        draw_sprite(sprite_get("aaa_uppercharge"), (ultupperflash / 2), x - (spr_dir * 26) , y - 32);
        ultupperflash++;
    }else{
        ultupperflash = -1;
    }
}

if(attack == AT_NSPECIAL_3){
    if(sprite_index == sprite_get("nspecial_3")){
        draw_sprite_ext(sprite_get("nspecial_3_vfx"), image_index, x, y, spr_dir, 1, 0, c_white, 1);
    }
}