//State Machine

state_timer++;
flower_lifetime -= 1;

switch(state){
    
    case 0: //Grow
    
    state_length = 40;
    current_anim_frame = clamp(((state_timer/state_length)*8), 0, 7);
    
    //Play Grow SFX
    if state_timer == 1
    && spr_dir == 1{
        sound_play(sound_get("flower_grow_1"));
    }
    
    //Sprout Leaves
    if state_timer == (5/8)*state_length{
        flower_leaf = instance_create(x + (32*spr_dir), y - 48,"obj_stage_article_platform", 4);
        flower_leaf.depth = depth-1;
        flower_leaf.leaf_lifetime = flower_lifetime;
        flower_leaf.spr_dir = spr_dir;
    }
    
    //Sprout Next Flower
    if state_timer == (6/8)*state_length{
        
        //If there's more flower to grow...
        if flower_height > 0{
            flower_next = instance_create(x,y-64,"obj_stage_article", 3);
            flower_next.spr_dir = -spr_dir;
            flower_next.flower_height = flower_height-1;
            flower_next.flower_lifetime = flower_lifetime;
        }
        
        //If it's the end of the flower...
        
        if flower_height <= 0{
            flower_next = instance_create(x,y-64,"obj_stage_article", 3);
            flower_next.spr_dir = -spr_dir;
            flower_next.flower_height = flower_height-1;
            flower_next.state = 2;
            flower_next.flower_lifetime = flower_lifetime;
        }
    }
    
    //Become Dormant
    if state_timer >= state_length{
        state_timer = 0;
        state = 1;
    }
    
    break;
    
    case 1: //Idle
    
    current_anim_frame = 7;
    
    //Destroy after 10 seconds
    
    if state_timer >= 600{
        flower_destroy = true;
    }
    
    break;
    
    case 2: //Flower Grow
    
    current_sprite = sprite_get("flower");
    
    state_length = 40;
    current_anim_frame = clamp(((state_timer/state_length)*8), 0, 7);
    
    //Play Grow SFX
    if state_timer == 1
    && spr_dir == 1{
        sound_play(sound_get("flower_grow_2"));
    }
    
    //Become Dormant
    if state_timer >= state_length{
        state_timer = 0;
        state = 1;
    }
    
}

//Destroy Flower

if flower_lifetime <= 60{
    current_opacity = ((-sin(flower_lifetime))/2)+0.5;
}

if flower_lifetime <= 0{
    instance_destroy();
}