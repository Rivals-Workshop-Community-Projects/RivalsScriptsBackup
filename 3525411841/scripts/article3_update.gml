// Article 3 -- Mouse cursor sprite
with (obj_stage_article)
{
    if (get_article_script(id) == 1)
    {
        if (other.owner == owner)
        {
        other.x = x + other.xOffset;
        other.y = y + other.yOffset;
        
        }
    }
    
}
        if (grid_size != 1)
        {
            x = floor(x / grid_size) * grid_size + 16;
            y = floor((y + 16) / grid_size) * grid_size;
        }