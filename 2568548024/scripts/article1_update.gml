//

if(inBackground)
{
    //move with bg
    x = orgX + (view_get_xview() - orgViewX) * get_bg_data(backgroundIndex, BG_LAYER_PARALLAX_X);
    y = orgY + (view_get_yview() - orgViewY) * get_bg_data(backgroundIndex, BG_LAYER_PARALLAX_Y);
}

time++;

if(time > 1)
{
    dimXh = dimX * 0.5;
    dimYh = dimY * 0.5;
        
    bboxL = xCenter - dimXh;
    bboxR = xCenter + dimXh;
    bboxT = yCenter - dimYh;
    bboxB = yCenter + dimYh;
}