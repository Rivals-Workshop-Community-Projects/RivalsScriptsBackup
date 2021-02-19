//hitbox_init
switch (attack){
    case AT_NSPECIAL:
        if(orig_player == player_id.player){ //rock check
            sprite = sprite_get("nspec1_proj");
            if(player_id.spr_dir == -1){
                flipped = -1;
            }else{
                flipped = 1;
            }
            draw_timer = 0;
            draw_timer_timer = 0;
        }
        break;
    
    case AT_FSPECIAL:
        if(hbox_num == 2){
            custom_friction = 0;
            max_hsp = hsp;
            max_vsp = vsp;
        }
        break;

}