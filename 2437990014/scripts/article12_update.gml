//archer on ruined house
image_index += anim_speed;

//create arrow instances on correct animation frame
if(image_index >= ARROW_FRAME_1 && !arrow1){
    spawn_arrow(20, -78, arrow_speed, arrow_angle, 150, false);
    arrow1 = true;
}
else if(image_index >= ARROW_FRAME_2 && !arrow2){
    spawn_arrow(20, -78, arrow_speed, arrow_angle, 150, true);
    arrow2 = true;
}

if(image_index < ARROW_FRAME_1){
    arrow1 = false;
    arrow2 = false;
}

#define spawn_arrow(xOff, yOff, sp, ang, l, c){
    arrow = instance_create(x + xOff, y + yOff, "obj_stage_article", 17);
    arrow.s = sp;
    arrow.a = ang;
    arrow.life = l;
    arrow.lifetime = l;
    arrow.collide = c;
}