//hitbox_update
var hpo = hit_player_obj;
with(my_hitboxID){
    switch(attack){
        case AT_USPECIAL:
            other.window = 7;
            other.window_timer = 1;
            other.old_vsp = -5;
            break
        case AT_NSPECIAL:
            if hbox_num == 1{
                with obj_article1{
                    if player_id == other.player_id{
                        array_push(grabbed_player,hpo)
                        // grabbed_player = true;
                        // hpo.x = x;
                        // hpo.y = y+(sprite_get_height(hpo.mask_index)*image_yscale/2);
                    }
                player_id.window = 4;
                player_id.window_timer = 0;
            }
        }
    }
}