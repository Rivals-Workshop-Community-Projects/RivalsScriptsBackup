// Article 5 -- Grid Marker
/*with (oPlayer)
{
    if (player = 1)
    {
        x = other.x;
        y = other.y;
    }
}*/
if (!instance_exists(owned_by))
{
    queued_destruction = true;
}
if (queued_destruction)
{
with (obj_stage_article)
{
    if (get_article_script(id) == 4)
    {
        
        if (id == other.owned_by)
        {
            if (item_id == 12)
                instance_destroy(platform);
            if (variable_instance_exists(self, "bumper_hitbox"))
            {
                if (instance_exists(bumper_hitbox))
                    instance_destroy(bumper_hitbox);
            }
            instance_destroy(id);
            break;
        }
    }
}
    instance_destroy(id);
}