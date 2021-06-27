///

if attacking && attack == AT_NSPECIAL {

    if window == 2 {
        hsp /= 1.05
        if hsp < 1 or hsp > -1 {
            sprite_index = sprite_get("walk")
        }
        
        
        if hsp > 0 && left_down {
            sprite_index = sprite_get("walkturn")
        }
        if hsp < 0 && right_down{
            sprite_index = sprite_get("walkturn")
        }
    
    }
}


if state_cat == SC_HITSTUN {
 
 if get_gameplay_time() % 4 == 0 {
     draw_y = 999
 }  else {
     draw_y = 0
 }
    
} else {
    draw_y = 0
}


if state == PS_PRATFALL {
    image_index = state_timer/5
    

}