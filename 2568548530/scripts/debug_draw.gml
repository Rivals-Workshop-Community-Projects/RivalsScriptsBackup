/*
draw_debug_text(x, y - 100, string(window));
draw_debug_text(x, y - 80, string(window_timer));
//draw_debug_text(x, y - 150, string(random_func(0,6,true)));
//draw_debug_text(x, y - 150, string(image_index));

var rand = 999;

//if (state == PS_ATTACK_GROUND && attack == AT_FTILT && state_timer == 0)
if (state == PS_ATTACK_GROUND && attack == AT_FTILT && window == 1 && window_timer == 0)
{
    rand = random_func(0,6,true);
}

draw_debug_text(x, y - 200, string(rand));*/



//draw_debug_text(x, 508, "X");

//if(instance_exists(pieceArticle))
//    draw_debug_text(pieceArticle.x, pieceArticle.y, "X");


if(instance_exists(pieceArticle))
{
    /*
    draw_debug_text(round(pieceArticle.x), round(pieceArticle.y), "X")
    print_debug(string(pieceArticle.y) + " should be: " + string(y + pieceArticle.endOffsetY*2) + "... and then: " + string(y + pieceArticle.endOffsetY));
    */
    
    
    
    /*
    var test_id = 2;
    var piece = pieceArticle.visualPieces[| test_id];
    
    if(ds_list_size(pieceArticle.visualPieces) <= test_id)
        return;
    
    
    draw_debug_text(round(piece.x), round(y + piece.endOffsetY), "G")
    
    draw_debug_text(round(piece.x), round(piece.startColY), "S")
    draw_debug_text(round(piece.x), round(piece.y), "X")

    print_debug("start: " + string(piece.startColY) + " curr: " + string(piece.y) + " goal: " + string(y + piece.endOffsetY) + " at: " + string(pieceArticle.collectAnimTimer) + " vsp: " + string(piece.vsp));// + " frame: " + string(piece.newFrame));
    */
    
}
