//hitbox_init

if (attack == AT_DSPECIAL && hbox_num == 8) {
    isGrounded = false; // When true next time vsp = 0 will spawn flytrap
    grabObjectType = 2;
}

if (attack == AT_NSPECIAL && hbox_num == 10) {
    //rubbleImage = sprite_get("article_hitbox");
    //rubbleFrame = 0;
    //rubbleRotation = 0;
    //rubbleOpacity = 1;
    rubbleTimer = 100; // when 0 will start despawning
}