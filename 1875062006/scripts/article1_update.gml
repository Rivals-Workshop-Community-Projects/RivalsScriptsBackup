//article1_update

if (dspecial_explode){
    if (sprite_index != sprite_get("determination_explode")){
        sprite_index = sprite_get("determination_explode");
        article_animation_speed = 0.2;
        article_animation_frame = 0;
    }
    
    else if (article_animation_frame == 1 or article_animation_frame == 3){
        sound_play(sound_get("clover_dspecial_warning"));
    }
    else if (article_animation_frame == 6){
        var hitbox = create_hitbox(AT_DSPECIAL, 1, x, y-40);
        sound_play(sound_get("clover_dspecial_explode"));
    }
    else if (article_animation_frame >= image_number-1){
        instance_destroy();    
    }
}

if (article_destroy){
    instance_destroy();
}

//animation
image_index = article_animation_frame;
if (article_animation_frame < image_number) article_animation_frame += article_animation_speed;
else article_animation_frame = 0;