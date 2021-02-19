switch (state){
    case PS_ATTACK_GROUND:
        if(attack == AT_DSPECIAL_2 && window == 1){
            if (strong_charge % 10 >= 5){
                sprite_index = dspecial2ChargeSprite;
            } else if(strong_charge % 10 >= 0){
                sprite_index = dspecial2Sprite;
            }
        }
    case PS_ATTACK_AIR:
        if(attack == AT_FSPECIAL && window > 6){
            sprite_index = fspecialBackThrowSprite;
            hurtboxID.sprite_index = fspecialBackThrowHurtSprite;
        }
        break;
    case PS_SPAWN:
        if (introTimer < numIntroFrames && introTimer >= 0) {
            sprite_index = introSprite;
            image_index = introTimer;
        } else if (introTimer < 0) {
            sprite_index = introSprite;
            image_index = 0;
        } else {
            sprite_index = sprite_get("idle");
        }
        break;
}