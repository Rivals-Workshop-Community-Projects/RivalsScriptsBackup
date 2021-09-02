// called when the character gets KO'd
if(my_child!=noone){
    my_child.overall_despawn_timer=0;
}
if(my_jail!=noone){
    my_jail.destruction_count_down=30;
}
if(my_boomerang!=noone){
    my_boomerang.despawn_timer=0;
    draw_debug_text(x,y,"HERE");
    //init_shader();
    invisible_rn=true;
    set_player_stocks(player, get_player_stocks(player)+1);
    /*
    state = PS_DEAD;
    */
}
else{
    invisible_rn=false;
}