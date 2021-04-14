if (attack == AT_NSPECIAL && crystalOut == 1) {attack = AT_NSPECIAL_2;}
if (attack == AT_NSPECIAL && free) {attack = AT_NSPECIAL_AIR;}
if (attack == AT_USPECIAL && !free && place_meeting(x, y + 2, asset_get("par_jumpthrough")) && !place_meeting(x, y + 2, asset_get("jumpthrough_32_obj"))) {attack = AT_USPECIAL_2;}
if (attack == AT_USPECIAL && !free) {attack = AT_USPECIAL_GROUND;}