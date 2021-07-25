timer++;

if (timer > 120){
    
    hsp = 1;
    
    var marker = get_marker_x( 1 );
    var marktwo = get_marker_x( 2 );

    if (x >= marktwo + 260){
        x = marker - 260;
    }
    
}