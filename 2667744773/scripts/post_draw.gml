


if(flutterTimer < 60 && flutterTimer > 30){
    rectDraw(x-20, y-char_height-18, 38, 6, c_dkgray);
	rectDraw(x-18, y-char_height-16, 34*min(1, flutterTimer/60), 2, c_lime);
}else if(flutterTimer <= 30 and flutterTimer > 0){
    rectDraw(x-20, y-char_height-18, 38, 6, c_dkgray);
    rectDraw(x-18, y-char_height-16, 34*min(1, flutterTimer/60), 2, c_yellow);
}else if(flutterTimer >= 60){
    //rectDraw(x-18, y-char_height-16, 34*min(1, flutterTimer/60), 2, c_yellow);
} else {
    rectDraw(x-20, y-char_height-18, 38, 6, c_dkgray);
}


#define rectDraw(x1, y1, width, height, color)

draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);

