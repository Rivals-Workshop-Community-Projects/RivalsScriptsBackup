//Checks for characters in the match.
with (asset_get("oPlayer"))     if (string_count("the knight", string_lower(get_char_info(player, INFO_STR_NAME))) > 0)
{
    with (other)
    {
        knight = true 
    }
}

//Changes the frame if The Knight appears in the match
if (knight = true) {
    image_index = 0
}