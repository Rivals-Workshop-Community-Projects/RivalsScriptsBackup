//Cameos
image_xscale = 2;
image_yscale = 2;
state_timer = 0;
loops = 0;
can_be_grounded = false;
ignores_walls = true;
free = true;
active = true;

switch(spawn_variables[0]){
    case 0: //bonfire
        sprite_index = sprite_get("bonfire");
        animation_speed = 0.15;
        depth = 5
    break;
    case 1: //anastacia
        sprite_index = sprite_get("anastacia");
        animation_speed = 0.1;
        depth = 30;
    break;
    case 2: //crestfallen
        sprite_index = sprite_get("crestfallen");
        animation_speed = 0.1;
        depth = 15;
        //active = false; //uncomment and give to a cameo you don't want to appear manually for now
    break;
    case 3: //siegmeyer
        sprite_index = sprite_get("siegmeyer");
        animation_speed = 0.1;
        depth = 10;
    break;
    case 4: //crow
        sprite_index = sprite_get("crow");
        animation_speed = 0.025;
        depth = 20;
    break;
    case 5: //solaire
        sprite_index = sprite_get("solaire");
        animation_speed = 0.125;
        depth = 10;
    break;
    case 6: //chosen
        sprite_index = sprite_get("chosen");
        animation_speed = 0.25;
        depth = 10;
    break;
    case -1: //well
        sprite_index = sprite_get("well");
        animation_speed = 0.1;
        depth = 15;
    break;
}