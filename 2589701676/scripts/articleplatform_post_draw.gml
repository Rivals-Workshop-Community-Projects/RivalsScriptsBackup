//article1_init
if(destruction_count_down!=-1){
    draw_sprite(bars_sprite, 3, x,y);
    draw_sprite(bars_sprite, 4, x,y);
}
else if (player_id.y<y+1 && player_id.x>x && player_id.x<x+180){
    draw_sprite(bars_sprite, 3, x,y);
    draw_sprite(bars_sprite, 2, x,y);
    //draw_debug_text(x,y,"HERE");
}
else{
    draw_sprite(bars_sprite, 0, x,y);
}
//draw_debug_text(x,y,string((y+15<get_stage_data(SD_Y_POS))));