//article2 post draw

/*
if (spark_anim <= 0){
    draw_sprite_ext(key_sprite, (get_gameplay_time()/10)%4, x,y, 1, 1, 0, desired_color, 1);
}else{
    draw_sprite(key_sprite, 4, x,y);
}*/
//draw_debug_text(x,y,string(point_direction(0,0,hsp,vsp)));

/*
draw_debug_text(x,y-20,string(player1_id));
draw_debug_text(x,y-40,string(player2_id));
draw_debug_text(x,y-60,string(player3_id));
draw_debug_text(x,y-80,string(player4_id));
*/

for (var i=0; i<8; i++){
    var xLoc = player_id.x - (player_id.x - x)*i/8;
    var yLoc = player_id.y-20 - (player_id.y-20 - y)*i/8;
    draw_sprite(player_id.chainDownBall_spr, 1, xLoc,yLoc);
}