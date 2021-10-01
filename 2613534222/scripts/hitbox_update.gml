if !instance_exists(self) exit;



if(attack == AT_FTILT and hbox_num == 1){
    if(hitbox_timer == 4){
        create_hitbox(AT_FTILT, 2, x+spr_dir*180, y-28);
    }
    var x_mod = 190;
    var y_mod = -32;
    if (hitbox_timer >= length and player_id.state_cat != SC_HITSTUN) {
        with player_id spawn_hit_fx(other.x + spr_dir*x_mod,other.y+y_mod,nspec_explode);
    }
}

if(attack == AT_NAIR or attack == AT_JAB){
    if (hitbox_timer >= length) {
        with player_id spawn_hit_fx(other.x,other.y,nspec_explode);
    }
}