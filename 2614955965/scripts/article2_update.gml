//slash dash
image_index = (image_index + 0.7) % 14;

slash_lifetime--;

if (slash_lifetime == 49) 
{
    create_hitbox(AT_FSTRONG_2, 6, x + 22 * spr_dir, y - 4);
}

if (slash_lifetime > 0 && slash_lifetime % 8 == 0) 
{
    create_hitbox(AT_FSTRONG_2, 6, x + 22 * spr_dir, y - 4);
}

if (slash_lifetime == 2) 
{
    create_hitbox(AT_FSTRONG_2, 7, x + 22 * spr_dir, y - 4);
}

if (slash_lifetime < 0){
    instance_destroy();
}



