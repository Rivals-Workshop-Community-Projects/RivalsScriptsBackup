//article1_update

//particle generation
switch (state)
{
    case 0: //holy burning particle
        //sprites
        if (golden) sprite_index = sprite_get("theikos_fx_holyburning");
        else sprite_index = sprite_get("fx_holyburning");

        //anim speed
        image_index += anim_speed;

        //movement variables
        vsp = -1;
        hsp = (-1 + random_func(0, 2, false))/2;

        //destruction
        particletime ++;
        if (particletime > 40) instance_destroy();
        break;

    case 1: //light hookshot chain

        if (golden) sprite_index = sprite_get("theikos_fx_lighthookshot_chain");
        else sprite_index = sprite_get("fx_lighthookshot_chain");
        
        image_index += anim_speed;

        if (particletime > 40) sub_state = 1;
        else sub_state = 0;

        switch (sub_state)
        {
            case 0:
                anim_speed = 0;
                particletime ++;
                break;
            case 1:
                anim_speed = 0.3;
                if (image_index > 5) instance_destroy();
                break;
        }
        
        break;

    case 2: //theikos ancient text
        sprite_index = sprite_get("theikos_ancienttext");
        if (player_id.is_8bit) sprite_index = sprite_get("theikos_8bit_ancienttext");

        image_index = text_letter;
        particletime ++;
        if (particletime > 20) instance_destroy();
        break;
    case 3: //intro light particles
        sprite_index = sprite_get("fx_introlight");
        if (golden) sprite_index = sprite_get("theikos_fx_introlight");

        image_index += 0.4;

        if (image_index > 9) instance_destroy();
        break;
    case 4: //burning fury activated particles
        //sprites
        if (golden) sprite_index = sprite_get("theikos_fx_fireparticle");
        else sprite_index = sprite_get("fx_fireparticle");

        //anim speed
        image_index += anim_speed;

        //movement variables
        if (!player_id.od_already_active)
        {
            vsp = -1;
            hsp = (-1 + random_func(0, 2, false))/2;
        }
        
        //destruction
        if (image_index > 5) instance_destroy();
        break;
    case 5: //light sparks indicator
        //sprites
        if (golden) sprite_index = sprite_get("theikos_fx_lightparticle");
        else sprite_index = sprite_get("fx_lightparticle");

        //anim speed
        image_index += anim_speed;
        
        //destruction
        if (image_index > 5) instance_destroy();
        break;
}