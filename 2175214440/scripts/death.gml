if (timestop_active) {
    timestop_active = false;
    sound_play(sound_get("s19_cyclone"));
            
    // create the hitbox that ends timestop
    create_hitbox(AT_DSPECIAL, 2, x, y);
}