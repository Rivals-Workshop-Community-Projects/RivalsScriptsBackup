//anim18

//loop parachuting animation
if(image_index + anim_speed >= image_number){
    image_index = CHUTE_FRAME
}

//destroy when dropping offscreen
if(y > 1000){
    instance_destroy();
    exit;
}

//keep changing position by adding velocity
x += hsp;
y += vsp;

//balloon window
if(image_index + anim_speed < RELEASE_FRAME){
    hsp = balloon_h_speed;
    vsp = balloon_v_speed;
}
//release window
else if(image_index + anim_speed >= RELEASE_FRAME && image_index < CHUTE_FRAME){
    //create balloon that detatches and flies away
    if(!balloon_active){
        balloon_active = true;
        instance_create(round(x), round(y), "obj_stage_article", 19);
    }
    vsp += gravity_speed;
}
//parachute window
else if(image_index + anim_speed >= CHUTE_FRAME){
    vsp += gravity_speed;
    hsp = chute_h_speed;
}

if(vsp > max_fall_speed){
    vsp = max_fall_speed;
}
image_index += anim_speed;


