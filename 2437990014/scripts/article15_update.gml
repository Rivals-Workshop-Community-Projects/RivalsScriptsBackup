//army
hsp = -5;
hitbox.x -= 5;
--timer;

//reset hitbox every interval
if(timer <= 0){
    instance_destroy(hitbox);
    hitbox = create_hitbox(AT_EXTRA_1, 1, x + 694, y + 158);
    timer = HITBOX_RESET;
}

//create dust effects every interval
if(x != 0 && abs(x % 100) < abs(hsp)){
    instance_create(x, y, "obj_stage_article", 25);
}
//destroy after leaving screen
if(x < -2000){
    instance_destroy(hitbox);
    instance_destroy();
}
