//Grave rot
image_index = (image_index + 1) % 14;

mist_lifetime--;

if (mist_lifetime > 0 && mist_lifetime % 11 == 0) 
{
    create_hitbox(AT_FSPECIAL_2, 1, x + 70 * spr_dir, y + 12);
}

// if we're out of lifetime, the projectile goes away
if (mist_lifetime < 0){
    instance_destroy();
}



