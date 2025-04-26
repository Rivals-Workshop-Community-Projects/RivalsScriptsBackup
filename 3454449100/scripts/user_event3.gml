// user_event3.gml


var uspecFallenWingF = create_hitbox( AT_USPECIAL, 4, x+(-18*spr_dir), y-42);
uspecFallenWingF.depth = depth + 10;
uspecFallenWingF.hsp = -4.5 * spr_dir;
uspecFallenWingF.vsp = -3.5;
uspecFallenWingF.air_friction = 0.25;
uspecFallenWingF.grav = 0.6;


var uspecFallenWingB = create_hitbox( AT_USPECIAL, 5, x+(18*spr_dir), y-42);
uspecFallenWingB.depth = depth + 10;
uspecFallenWingB.hsp = 4 * spr_dir;
uspecFallenWingB.vsp = -3.5;
uspecFallenWingB.air_friction = 0.25;
uspecFallenWingB.grav = 0.6;