if (!("pkmn_stadium_name_override" in self)) {
    switch (get_char_info(player, INFO_STR_NAME)) {
        case "Shovel Knight":
            pkmn_stadium_name_override = "S.Knight";
            break;
        case "Zetterburn":
            pkmn_stadium_name_override = "Zetterbrn";
            break;
        case "Hime Daisho":
            pkmn_stadium_name_override = "Hime";
            break;
        case "Trum. & Alto":
            pkmn_stadium_name_override = "Trum+Alto";
            break;
        case "Gatekeeper":
            pkmn_stadium_name_override = "Gatekeepr";
            break;
        case "Big Yoshi":
            pkmn_stadium_name_override = "Big Yoshi";
            break;
        case "Joshua & Batit":
            pkmn_stadium_name_override = "J.+Batit";
            break;
    }
}