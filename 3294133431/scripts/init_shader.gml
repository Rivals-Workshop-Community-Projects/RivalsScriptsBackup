

//not in selection screen
if(variable_instance_exists(self, "spr_dir") && variable_instance_exists(self, "currAlt"))
{
    for(var i = 0; i < 8; i++)
    {
        var newR = get_color_profile_slot_r(currAlt, i);
        var newG = get_color_profile_slot_g(currAlt, i);
        var newB = get_color_profile_slot_b(currAlt, i);
        // set_character_color_slot(i, newR, newG, newB, invisAlpha);
        // set_article_color_slot(i, newR, newG, newB, invisAlpha);//needed for alt disguise but breaks sapper on invis
        set_article_color_slot(i, newR, newG, newB, 1);
    }
}