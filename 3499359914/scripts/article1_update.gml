//State Machine

state_timer++;

switch(state){
    
    case 0: //Flying
    
    cloud_spr = sprite_get("cloud_fly");
    cloud_img = cloud_anim_spd*state_timer;
    
    hsp = cloud_dir;
    vsp = 1.25*sin(degtorad(state_timer*3));
    
    is_hittable = true;
    
    //Spawn Trail
    
    if state_timer mod 21 == 0{
        var cloud_trail = create_hitbox(AT_JAB, 1, x-(16*sign(hsp)), y);
        cloud_trail.depth = depth+1;
    }
    
    //Pop when hit
    if cloud_hit{
        cloud_img = 0;
        state_timer = 0;
        state = 1;
    }
    
    break;
    
    case 1: //Popping
    
    cloud_spr = sprite_get("cloud_pop");
    if state_timer <= 15{
        cloud_img = state_timer/5;
    }
    else{
        cloud_img = 3;
    }
    
    hsp = 0;
    vsp = 0;
    
    is_hittable = false;
    
    //Tell handler it's go time
    if state_timer == 49{
        cloud_effect_go = true;
    }
    
    //Die
    if state_timer >= 50{
        cloud_destroy = true;
    }
    
    break;
    
}

if cloud_destroy{
    sound_play(sound_get("sfx_pop"));
    spawn_hit_fx(x,y,304);
    instance_destroy();
}