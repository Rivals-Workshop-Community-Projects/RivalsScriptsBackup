with(other_player_id)
{
    var isMech = disguised && !disguisedAsSelf && chars[charIndex] == "mech";

    for(var i = 0; i < ds_list_size(sappers); i++)
        if(sappers[|i].targetPlayer != noone && sappers[|i].targetPlayer.visible)
            draw_sprite_ext(sprite_get("hudHp"), 2, sappers[|i].targetPlayer.x-23, sappers[|i].targetPlayer.y-82-sappers[|i].targetPlayer.char_height+(isMech?2:0), 1, 1, 0, c_white, 1);
    //TODO: or on my hud their icon or a P1 text?
}