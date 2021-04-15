//unique projectiles

if (PMO_articleType == 1) {
    image_angle += hsp;
    
    if y <= player_id.y-20
    {
        ignores_walls = false;
    }
    
    if (confettiTimer >= 0) {
        confettiTimer -= 1;
    }
    
    if (confettiTimer <= 1) {
        confettiDeath = true;
    }
    
    if (vsp <= 1) {
        vsp += 0.5;
    }
    if (vsp >= 1 && confettiTimer >= 12) {
        vsp += 0.009;
    }
    
    if (hsp >= 1) {
        hsp -= 0.09;
    }
    if (hsp <= -1) {
        hsp += 0.09;
    }
    if (hsp >= 0 && hsp <= 1) {
        hsp = 0;
    }
    
    if (confettiDeath) {
        image_alpha+= -0.1;
        if (image_alpha <= 0) {
            setDestroy = true;
        }
    }
}



if (setDestroy == true) {
    instance_destroy();
}