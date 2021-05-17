//post-draw
if(in0g){
    if(vsp !=0 || hsp != 0){
        draw_sprite_ext( sprite_get( "arrow" ), 0, x, y-25, 1, 1, point_direction(0, 0, hsp, vsp), -1, 1);
        
    }
    if(!hasAirdashed){
        draw_sprite( sprite_get( "firstairdash" ), 0, x, y-40);
        
    }
}