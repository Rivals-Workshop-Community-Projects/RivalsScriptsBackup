//paratroopers

//drift downwards and to the left when spawned
x = lerp(start_x, start_x - vX, (life-lifetime)/life);
y = lerp(start_y, start_y + vY, (life-lifetime)/life);

image_index += anim_speed;

lifetime--
if(lifetime <= 0){
    instance_destroy();
    exit;
}