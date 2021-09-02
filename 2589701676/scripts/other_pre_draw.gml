// other pre-draw
if (numChains>=10){
    chainedDown = 500;
    numChains = 0;
    chainedX = x;
    chainedY = y;
}
if (chainedDown>0){
    //draw sprites
    for (var i=0; i<5; i++){
        var xLoc = chainedX - (chainedX - x)*i/5;
        var yLoc = chainedY - (chainedY - y)*i/5;
        draw_sprite(other_player_id.chainDownBall_spr, 1, xLoc,yLoc-24);
        //draw_debug_text(x,y-(40*i),string(xLoc));
    }
    draw_sprite(other_player_id.chainDownBall_spr, 0, chainedX,chainedY-24);
}

//draw_debug_text(x,y-200,string(chainedDown));