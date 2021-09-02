//article1_update

if (spark_anim <= 0){
    draw_sprite_ext(key_sprite, (get_gameplay_time()/10)%4, x,y, 1, 1, 0, desired_color, 1);
}else{
    draw_sprite(key_sprite, 4, x,y);
}

if(beginning_owner_id.invisible_rn){
    draw_debug_text(beginning_owner_id.x,beginning_owner_id.y-45,"Yes I know this bug exists");
    draw_debug_text(beginning_owner_id.x,beginning_owner_id.y-30,"But at least I know what causes it");
    draw_debug_text(beginning_owner_id.x,beginning_owner_id.y-15,"I gave you an extra life, so just SD sry");
}
//draw_debug_text(x,y,string(current_owner_id));

/*
draw_debug_text(x,y-20,string(player1_id));
draw_debug_text(x,y-40,string(player2_id));
draw_debug_text(x,y-60,string(player3_id));
draw_debug_text(x,y-80,string(player4_id));
*/