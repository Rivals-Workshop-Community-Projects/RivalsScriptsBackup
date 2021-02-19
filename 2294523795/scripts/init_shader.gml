enum alts {
    DEF,
    ELICE,
    CHRISTMAS,
    BLUE,
    RED,
    GREEN,
    PURPLE,
    LUMI
}


var alt = get_player_color(player);

switch (alt) {
    case alts.GREEN:
    case alts.RED:
        set_character_color_shading(4,0.25);
        break;
    case alts.CHRISTMAS:
        set_character_color_shading(4,2.5);
        break;
    case alts.BLUE:
        set_character_color_shading(4,1.5);
        break;
}