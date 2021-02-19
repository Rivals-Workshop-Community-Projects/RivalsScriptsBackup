//CALLED WHEN HIT
char_height = 52;

escapedPratfall = 0;
move_cooldown[AT_USPECIAL] = 0;

with(asset_get("obj_article3")){
    if (player_id == other.id){
        grabbed = false;
        state = 2;
        state_timer = 0;
            
        }
            
    }