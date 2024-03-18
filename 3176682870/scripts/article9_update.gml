//Checks for characters in the match.
with (asset_get("oPlayer"))     if (string_count("hornet", string_lower(get_char_info(player, INFO_STR_NAME))) > 0)
{
    with (other)
    {
        hornet = true 
    }
}

//Changes the frame if Hornet appears in the match
if (hornet = true) {
    image_index = 0
}