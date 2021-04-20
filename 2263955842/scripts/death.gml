// called when the character gets KO'd


// death sound effect
sound_play(sound_get("death"));


// Power Meter

//grazeMeter = 0;

has_used_uspecial = false;
has_runeg_uspecial = false;


// destroying all cards
while(ds_list_size(dspe_list))
{
    instance_destroy(dspe_list[|0]);
    ds_list_delete(dspe_list,0);
}

// destroying yinyang

with(asset_get("obj_article2")) {
    if(player_id = other.id) {
        life = 0;
    }
}