var cooldown_x = 80;

if (emotion == 0){
    draw_sprite( sprite_get("hudthing"), 0, temp_x + 6, temp_y - 22);
}
else{
    draw_sprite( sprite_get("hudthing"), 1, temp_x + 6, temp_y - 22);
}

switch (emotion){
    
    case 0: //neutral
        draw_debug_text( temp_x + 12, temp_y - 16, "NEUTRAL");
    break;
    
    
    case 1: //happy
        draw_debug_text( temp_x + 12, temp_y - 16, "HAPPY");
        draw_debug_text( temp_x + cooldown_x, temp_y - 16, string( round(happy_timer/60 + 1) ));
    break;


    case 2: //sad
        draw_debug_text( temp_x + 12, temp_y - 16, "SAD");
        draw_debug_text( temp_x + cooldown_x, temp_y - 16, string( round(sad_timer/60 + 1) ));
    break;


    case 3: //angry
        draw_debug_text( temp_x + 12, temp_y - 16, "ANGRY");
        draw_debug_text( temp_x + cooldown_x, temp_y - 16, string( round(angry_timer/60 + 1) ));
    break;
       
}

/*
var angry_x = 184;
var sad_x = 152;
var happy_x = 120;
var neutral_x = 0;

var current_x = 0;

switch (emotion){
    
    case 0: //neutral
        current_x = neutral_x;
    break;
    
    
    case 1: //happy
        current_x = happy_x;
    break;


    case 2: //sad
        current_x = sad_x;
    break;


    case 3: //angry
        current_x = angry_x;
    break;
       
}

draw_sprite( sprite_get("arrow"), 0, temp_x + current_x, temp_y - 32);

if (angry_cooldown > 1){
    shader_start();
    draw_sprite( sprite_get("hudangry"), 0, temp_x + angry_x, temp_y - 24);
    shader_end();
}
else{
    shader_start();
    draw_sprite( sprite_get("hudangry"), 1, temp_x + angry_x, temp_y - 24);
    shader_end();
}

if (sad_cooldown > 1){
    shader_start();
    draw_sprite( sprite_get("hudsad"), 0, temp_x + sad_x, temp_y - 24);
    shader_end();
}
else{
    shader_start();
    draw_sprite( sprite_get("hudsad"), 1, temp_x + sad_x, temp_y - 24);
    shader_end();
}

if (happy_cooldown > 1){
    shader_start();
    draw_sprite( sprite_get("hudhappy"), 0, temp_x + happy_x, temp_y - 24);
    shader_end();
}
else{
    shader_start();
    draw_sprite( sprite_get("hudhappy"), 1, temp_x + happy_x, temp_y - 24);
    shader_end();
}

//if ( > 1){
    shader_start();
    draw_sprite( sprite_get("hud"), 1, temp_x + neutral_x, temp_y - 24);
    shader_end();
/*}
else{
    shader_start();
    draw_sprite( sprite_get("hud"), 1, temp_x + 184, temp_y - 24);
    shader_end();
}
*/