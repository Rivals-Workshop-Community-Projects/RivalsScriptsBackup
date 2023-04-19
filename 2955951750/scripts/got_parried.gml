//got_parried.gml

//im going to have a fucubgioenr;gvbiuregu;iobws strionhwefvijakcnk

var fobj = player_field_vars.field_obj;

//Check to see if the field exists.
if instance_exists(fobj)
{
    fobj.radius = max(fobj.radius - player_field_vars.parried_decrease, player_field_vars.bounds[0]);
    fobj.should_decay = true;
}

/*
if (my_hitboxID.attack == AT_NSPECIAL && (my_hitboxID.hbox_num >= 7)) {
    //This will go through every article1. Not just yours -- what is the point?
    with obj_article1 {
        spr_dir *= -1;
        par_player = other.hit_player_obj;
        parried = 1;
        hbox.player_id = other.hit_player_obj;
    }
}
