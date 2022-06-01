//when you are crawling, it plays the crawling animation. it's that simplelist
if (state == PS_CROUCH && is_crawling == true && (right_down || left_down)){
    sprite_index = sprite_get("crawl");
    image_index = ( ((crawling_timer+1) / 5 ) + 4);
}

if(state == PS_ATTACK_AIR or state == PS_ATTACK_GROUND){
    if(attack == AT_FSPECIAL){
        if(window >= 5){
            with(grabbed_player_obj){
                sent_down = true;
            }
        }
    }
    if(attack == AT_FSTRONG){
        if(smash_charging){
            image_index = ease_linear(5, 11, strong_charge > 30 ? 30 : strong_charge, 30);
        }
    }
}

if(state == PS_ATTACK_AIR and attack == AT_EXTRA_1){
  sprite_index = wallcling_spr;
  image_index = ease_linear(0, 3, min(state_timer, 15), 15);
}