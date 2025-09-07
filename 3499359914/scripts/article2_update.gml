// -- Cloud Effect Handler --
    // Spawns the cloud every so often
    // Spawns other objects when the cloud is destroyed

    // -- Timers --
cloud_spawn_time--;
    
if stage_effect_trigger{
    stage_effect_delay++;
}

    // -- Misc. Variables --
var center_stage = get_marker_x(1);
var gametime = get_gameplay_time();

// -- Spawning Cloud --

if cloud_spawn_time <= 0{
    
    //Get Rid of Old Cloud
    if current_cloud != noone
    && current_cloud.x > get_stage_data(SD_RIGHT_BLASTZONE_X){
        instance_destroy(current_cloud);
        current_cloud = noone;
    }
    
    //Spawn New Cloud
    if current_cloud == noone{
        var cloud_dir = 2*(random_func(gametime, 2, true))-1;
        var cloud_spawn_x = center_stage + (cloud_dir*(get_stage_data(SD_LEFT_BLASTZONE_X)-center_stage));
        
        current_cloud = instance_create(cloud_spawn_x, get_marker_y(1), "obj_stage_article", 1);
        current_cloud.cloud_dir = cloud_dir;
    }
    
}

    // -- Cause the effect!!! --
if current_cloud != noone{
    if instance_exists(current_cloud) && current_cloud.cloud_effect_go == true{
        
        //Randomize Stage effect
        var randomness = gametime mod 24;
        stage_effect = random_func(randomness, 4, true);
        //stage_effect = 3;
        
        //Turn on stage effect trigger
        stage_effect_trigger = true;
        stage_effect_delay = 0;
        
        //Different Delays
        switch(stage_effect){
            case 0: //Sunflowers
                effect_delay_max = 30;
                cloud_spawn_time = 1080;
            break;
            case 1: //Red Bridge
                effect_delay_max = 30;
                cloud_spawn_time = 1200;
            break;
            case 2: //Stars
                effect_delay_max = 0;
                cloud_spawn_time = 480;
            break;
            case 3: //Chomp
                effect_delay_max = 30;
                cloud_spawn_time = 480;
            break;
        }
        
        //Set position for stars to spawn (if they do)
        star_x = current_cloud.x;
        star_y = current_cloud.y;
        
        current_cloud = noone;
    }
}

if stage_effect_trigger == true
&& stage_effect_delay >= effect_delay_max{
    
    switch(stage_effect){
        
        case 0: //Sunflower Platforms
        
        var flower_dist = get_marker_x(2) - center_stage;
        var flower_y = get_marker_y(2);
        
        var flower_l = instance_create(center_stage - flower_dist, flower_y, "obj_stage_article", 3);
        var flower_r = instance_create(center_stage + flower_dist, flower_y, "obj_stage_article", 3);
        
        flower_l.spr_dir = -1;
        
        break;
        
        case 1: //Red Bridge
        
        var bridge_dist = get_marker_x(3) - center_stage;
        var bridge_y = get_marker_y(3);
        
        var bridge_l = instance_create(center_stage - bridge_dist, bridge_y, "obj_stage_article_platform", 5);
        var bridge_r = instance_create(center_stage + bridge_dist, bridge_y, "obj_stage_article_platform", 5);
        
        bridge_l.spr_dir = -1;
        
        break;
        
        case 2: //Stars
        
        //Play Sound
        sound_play(sound_get("star_appear"));
        
        //Spawn 5 Stars
        for (var i = 0; i < 5; i += 1){
            var star_rng = (gametime + i) mod 24;
            var star_cur = instance_create(star_x, star_y, "obj_stage_article", 6);
            
            star_cur.hsp = (random_func(star_rng, 6, false))-3;
            star_cur.vsp = -1*((random_func(star_rng, 6, false))+3);
        }
        
        break;
        
        case 3: //Chomp
        
        var chomp_y = get_marker_y(2)
        var chomp_cur = instance_create(center_stage, chomp_y, "obj_stage_article", 7);
        sound_play(sound_get("chomp_jump"));
        
        break;
        
    }
    
    stage_effect_trigger = false;
}