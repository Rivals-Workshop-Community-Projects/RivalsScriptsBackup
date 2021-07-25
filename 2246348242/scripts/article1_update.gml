init_move -= init_move <= 0 ? 0 : 1;

if init_move <= 0
{
    hsp = floor(ease_quartInOut( get_marker_x(marker)-x, get_marker_x(other_marker)-x, floor(move_timer), max_timer))
    
    move_timer++;
    if move_timer >= max_timer
    {
        move_timer = 0;
        
        if marker == 1
        {
            marker = 2
            other_marker = 3
        }
        
        var t;
        t = marker;
        marker = other_marker;
        other_marker = t;
    }
}

//var col;
//col = instance_position( x, y-4, oPlayer )

// if col != noone
// {
//     with col {
//         if (!free)
//         {
//             print_debug("WOW")
//             hsp = other.hsp
//         }
//     }
// }