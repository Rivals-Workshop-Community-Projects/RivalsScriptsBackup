// pre-draw

/*
if (my_jail!=noone){
    draw_debug_text(x,y-120,string(my_jail.x));
    draw_debug_text(x,y-140,string(my_jail.x + 180));
    draw_debug_text(x,y-160,string(my_jail.y));
    draw_debug_text(x,y-200,string(x>my_jail.x && x<my_jail.x+180 && y<my_jail.y+1));
}*/

if (my_key.current_owner_id == id){
    draw_sprite(chainBuff_spr, (get_gameplay_time()/7)%4, x, y);
}