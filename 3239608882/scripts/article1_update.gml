image_index = (image_index + 0.15) % 100; 
poison_lifetime--;

image_xscale = spr_dir*article_xscale; //ensure direction is correct at all times, flips mask.
image_yscale = article_yscale;


if (poison_lifetime < 0){
    instance_destroy();
}


if (poison_lifetime > 0) 
{
    create_hitbox(AT_NSPECIAL, 7, x + (30 *spr_dir), y - 11);
}




