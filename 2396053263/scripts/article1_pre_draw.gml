//HEARTBREAK FUNCTIONALITY (ARTICLE1_PRE_DRAW)
//By: Delta Parallax


//This basically outlines the animation for the heart, and also draws the chain itself.
heartArticlePreDraw();

// if (player_id.heartDebug)
// {
//     draw_set_alpha( sin( get_gameplay_time() / 10 ) )
//     draw_line_width_color(x,y,chainedPlayer.x,chainedPlayer.y - (chainedPlayer.char_height * .5),2,c_white,c_white)
//     draw_set_alpha( 1 )
// }

#define heartArticlePreDraw

if !useCompatibility
{
    if heartBroken
    {
        //If so, both the left and right halves are drawn
        draw_sprite(articleSprites[1],0,heartBreakSplitX[0] - heartBreakSplitX[1] - heartShake[0],y + heartShake[1])
        draw_sprite(articleSprites[2],0,heartBreakSplitX[0] + heartBreakSplitX[1] + heartShake[0],y + heartShake[1])
    }
    else
    {
        //if not, calculate the end point of the chain, and draw the links.
        var center;
        center = [chainedPlayer.x, chainedPlayer.y - (chainedPlayer.char_height * .5)]
        
        var count = other.useCompatibility ? heartChainCount : other.player_id.heartChainNumber;
        for (var times = 1; times < count; times++)
        {
            var frame;
            frame = (times / count) * 2;
            draw_sprite(articleSprites[3], round(frame), x - (times * (x - center[0]) / count), y - (times * (y - center[1]) / count))
        }
    }
}
else
{
    with (chainedPlayer)
    {
        // if (other.useCompatibility)
        // {
        //     with (self) shader_start()
        
        //     print("compat")
        // }
        // else
        // {
        //     with (other) shader_start()
        //     print("no compat")
        // }
        
        //Check if the heart has been broken.
        if other.heartBroken
        {
            //If so, both the left and right halves are drawn
            draw_sprite(other.articleSprites[1],0,other.heartBreakSplitX[0] - other.heartBreakSplitX[1] - other.heartShake[0],other.y + other.heartShake[1])
            draw_sprite(other.articleSprites[2],0,other.heartBreakSplitX[0] + other.heartBreakSplitX[1] + other.heartShake[0],other.y + other.heartShake[1])
        }
        else
        {
            //if not, calculate the end point of the chain, and draw the links.
            var center;
            center = [x, y - (char_height * .5)]
            
            var count = other.useCompatibility ? heartChainCount : other.player_id.heartChainNumber;
            for (var times = 1; times < count; times++)
            {
                var frame;
                frame = (times / count) * 2;
                draw_sprite(other.articleSprites[3], round(frame), other.x - (times * (other.x - center[0]) / count), other.y - (times * (other.y - center[1]) / count))
            }
        }
    }
}