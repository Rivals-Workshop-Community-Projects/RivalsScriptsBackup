//hitbox_update
var hpo = hit_player_obj; //Can't grab variable down there.
with(my_hitboxID){
    if attack == AT_NSPECIAL{
        if hbox_num == 1{
            with obj_article1{
                if player_id == other.player_id{
                    array_push(grabbed_player,hpo)
                }
            player_id.window = 4;
            player_id.window_timer = 0;
            }
        }
    }
}