//airship
x -= vX
y += vY

if(y > 1000){
    instance_destroy();
    exit;
}
//spawn paratrooper at end of each animation loop
if(image_index + anim_speed >= image_number){
    instance_create(round(x + x_off), round(y + y_off), "obj_stage_article", 18);
}
image_index += anim_speed;