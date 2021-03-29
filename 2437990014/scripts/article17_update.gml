//anim17

//continue as normal if special case not met
if(!collided){
    sprite_index = sprite_get("arrow");
    ang = lerp(a, -90, (life - lifetime)/life) //slowly change angle of arrow to follow arc
    image_angle = ang;
    
    //calculate change in x and y coords over time to follow direction arrow is pointing
    vX = s*dcos(ang);
    vY = s*dsin(ang);
    
    x += vX;
    y -= vY;
}

//destroy instance after a while
lifetime--;
if(lifetime <= 0){
    instance_destroy();
    exit;
}

//play special animation for arrow colliding with wall
if(collide && (life - lifetime >= collide_frame)){
    sprite_index = sprite_get("arrow_fall");
    image_angle = 0;
    collided = true;
    image_index += anim_speed;
    if(image_index == image_number){
        instance_destroy();
        exit;
    }
}

