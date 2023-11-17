//shader_start();

if(instance_exists(choochoo) && property && !choochoo.free){
    if(!plat_on)draw_sprite_ext(choochoo.sprite_index,choochoo.image_index,choochoo.x,choochoo.y,1*choochoo.spr_dir,1,0,c_black,0.5);
}

//shader_end();