//article2_update

if _init == 0 {
    _init = 1;
    with obj_article2 if id != other.id && player_id == other.player_id && state != 2 state = 2; 
}
//sprite_index = render_sprite;
visible = true;

if x < view_get_xview() || x > view_get_xview()+view_get_wview() || y < view_get_yview() || y > view_get_yview()+view_get_hview() state = 2;

if state == 2 {
    instance_destroy();
    exit;
}

if state == 0 { //display shadow
    
}


