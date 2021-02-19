//HEARTBREAK FUNCTIONALITY (ARTICLE1_PRE_DRAW)
//By: Delta Parallax

//This basically outlines the animation for the heart, and also draws the chain itself.
heartArticlePreDraw();

#define heartArticlePreDraw

//Check if the heart has been broken.
if heartBroken
{
    //If so, both the left and right halves are drawn
    draw_sprite(player_id.heartSprites[1],0,heartBreakSplitX[0] - heartBreakSplitX[1] - heartShake[0],y + heartShake[1])
    draw_sprite(player_id.heartSprites[2],0,heartBreakSplitX[0] + heartBreakSplitX[1] + heartShake[0],y + heartShake[1])
}
else
{
    //if not, calculate the end point of the chain, and draw the links.
    var center;
    center = [chainedPlayer.x, chainedPlayer.y - (chainedPlayer.char_height * .5)]
    
    for (var times = 1; times < player_id.heartChainNumber; times++)
    {
        var frame;
        frame = (times / player_id.heartChainNumber) * 2;
        draw_sprite(player_id.heartSprites[3], round(frame), x - (times * (x - center[0]) / player_id.heartChainNumber), y - (times * (y - center[1]) / player_id.heartChainNumber))
    }
}