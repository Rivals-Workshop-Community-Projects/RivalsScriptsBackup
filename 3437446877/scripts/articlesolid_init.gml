//article1_init
if(player_id.spr_dir == 1){
    sprite_index = sprite_get("wall_r");
    mask_index = sprite_get("wall_r_hurt");
}else{
    sprite_index = sprite_get("wall_l");
    mask_index = sprite_get("wall_l_hurt");
}

depth = 3;     
can_be_grounded = false;
ignores_walls = true;
animation = 0;
state = 1;
timer = 230;

