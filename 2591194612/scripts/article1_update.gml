//

//move with bg
x = orgX + (view_get_xview() - orgViewX) * get_bg_data(obj_stage_main.backgroundIndex, BG_LAYER_PARALLAX_X);
y = orgY + (view_get_yview() - orgViewY) * get_bg_data(obj_stage_main.backgroundIndex, BG_LAYER_PARALLAX_Y);


var newXY = RotatePoint(orgX, orgY, (pi / 180) * rotSpd);
orgX = newXY[0];
orgY = newXY[1];

#define RotatePoint(xx, yy, radians)
{
    var cosTheta = cos(radians);
    var sinTheta = sin(radians);

    return [(cosTheta * (xx - centerX) - sinTheta * (yy - centerY) + centerX), 
            (sinTheta * (xx - centerX) + cosTheta * (yy - centerY) + centerY)];
}
