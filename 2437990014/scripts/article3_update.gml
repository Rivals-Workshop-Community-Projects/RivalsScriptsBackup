//anim12
image_index += anim_speed;

if(activate){
    xOff -= 4;
}
if(xOff < -3000){
    xOff = 0;
    activate = false;
}