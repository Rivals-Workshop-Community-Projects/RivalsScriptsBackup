//thanks to sonic
timer++;

image_alpha = 1 - (timer/10); 

if (timer >= 20){
    instance_destroy();
}