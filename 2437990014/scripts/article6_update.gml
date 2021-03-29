//pressure tank
image_index += anim_speed;

x -= 1.5;
if(x < -100){
   instance_destroy();
   exit;
}