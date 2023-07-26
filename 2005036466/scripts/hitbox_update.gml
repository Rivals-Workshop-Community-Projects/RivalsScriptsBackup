switch(attack){
    case AT_FSPECIAL:
        switch(hbox_num){
            case 2:
                if was_parried{
                    spr_dir *= -1;
                    length *= 2;
                }
                if (hitbox_timer == length - 1){
                    spawn_hit_fx(x, y, player_id.vfx_fspecialvanish);
                }
                break;
        }
        break;
}