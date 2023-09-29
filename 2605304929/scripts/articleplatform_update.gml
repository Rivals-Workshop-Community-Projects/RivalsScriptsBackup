// article platform update

switch(article_state){
    case 1: // Grow
    sprite_index = platform_grow;
    image_index = article_state_timer / 1;
    if(article_state_timer >= 2){article_state = 2; article_state_timer = 1;}
    break;
    
    case 2: // Impact
    sprite_index = platform_impact;
    image_index = article_state_timer / 3;
    if(article_state_timer >= 8){article_state = 3;article_state_timer = 1;}
    break;
    
    case 3: // Idle
    sprite_index = platform_idle;
    image_index = article_state_timer / 20;
    if(player_id.free && article_state_timer >= 60){article_state = 4;article_state_timer = 1;} // End the state if the player jumps 
    if(article_state_timer >= 360){article_state = 4;article_state_timer = 0;}
    break;
    
    case 4: // Vanish
    sprite_index = platform_vanish;
    image_index = article_state_timer / 3;
    if(article_state_timer >=9){
        player_id.article_platform_id = noone;
        instance_destroy(self);
        exit;
    }
    break;
}

article_state_timer += 1;