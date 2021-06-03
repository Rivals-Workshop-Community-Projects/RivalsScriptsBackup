switch (state){
    case PS_IDLE:
    case PS_RESPAWN:
    case PS_SPAWN:
        image_index = floor(image_number*state_timer/(image_number*6.5));
    break;
    
    case PS_WALK:
        image_index = floor(image_number*state_timer/(image_number*5));
    break;
}

if (state == PS_SPAWN) {
    if (introTimer < 18 && introTimer >= 0) {
        sprite_index = sprite_get("intro");
        image_index = introTimer;
    } else if (introTimer < 0) {
        sprite_index = sprite_get("intro");
        image_index = 0;
    } else {
        sprite_index = sprite_get("idle");
    }
}

if (reverse = true || (attack == AT_USPECIAL && (state == PS_ATTACK_AIR  || state == PS_ATTACK_GROUND) && window == 1)){
var kx = x + floor(char_height/2) - random_func(0, char_height, true);
var ky = y - random_func(2, char_height + 30, true);
    if (random_func(1, 3, true)) = 0{
           spawn_hit_fx(kx, ky, code_fx1);
    } 
    else if (random_func(1,3, true)) = 1 {
        spawn_hit_fx(kx, ky, code_fx2);
    }
    else if (random_func(1,3, true)) = 2 {
        spawn_hit_fx(kx, ky, code_fx3);
    }
}

if (attack == AT_USPECIAL && window == 1 && window_timer == 1 && (state == PS_ATTACK_AIR  || state == PS_ATTACK_GROUND)){
spawn_hit_fx(x, y, uspecial_fx)
}

if (state == PS_ATTACK_GROUND && attack == AT_FSTRONG && window == 2 && strong_charge > 0) {
image_index = 3 + (strong_charge / 6) % 5;
}

if (state == PS_ATTACK_GROUND && attack == AT_EXTRA_1){
sprite_index = sprite_get("waveland");
image_index = floor(image_number*state_timer/(image_number* 9.0));
}

//========================================================================
//DSPECIAL shenanigans
if (combust_timer > 0)
{ combust_timer--;}

if (courage_active && get_gameplay_time() % 4 == 0)
{
    var kx = x + floor(char_height/2) - random_func(0, char_height, true);
    var ky = y - random_func(2, char_height, true);
    spawn_hit_fx(kx, ky, courage_fx);
}
