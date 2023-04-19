sprite_change_offset("life_bar", 48, 24);
//sprite_change_offset("ability_icon", 12, 24);
sprite_change_offset("life_bar_gauge", 32, 16);


// (>'.')>  Compatibility: <('.'<) //

//- Copy Ability icons:
//  Choose from a wide variety of Copy Abilities from across the series to serve as your icon.
//  Even ones that don't have official Copy Ability icons!
//  In your character's init.gml file, put...
//
//  copy_ability_id = X
//
//  ... with X being an ID number from the list at the bottom.
//  If unset, defaults to a star icon.

// ---------------------------------------------------------------------

//- Custom icons:
//  Make a custom icon, "Kirby Star Allies"-style!
//  (...or not, but it would be much preferable to match the style.)
//  In your character's init.gml file, put..
//
//  kf_custom_icon = sprite_get("filename")
//
//  ... with filename being the sprite you wish to use.
//  The sprite should be in a 24x24 canvas, with the icon being a 18x18 circle in the middle. 
//  You can use the custom icon sprite in this buddy as a template.
//
//  Giving your character a custom icon overwrites the Copy Ability icon above, but...
//  I'd really like you to give your character one anyway.
//  In case a Kirby that uses 'copy_ability_id' to gain those kinds of Copy Abilities releases...

// ---------------------------------------------------------------------

//- Custom name:
//  To set a custom name to display on your character's lifebar, put...
//
//  kf_hud_name = "string"
//
//  ... in init.gml, with string being replaced by your custom name.

// ---------------------------------------------------------------------

//- Custom health bonus:
//  To add (or subtract) from the maximum health of a character, put...
//
//  kf_health_modify = X
//
//  ... in init.gml. X is the health you wish to add/subtract.

// ---------------------------------------------------------------------

//- HUD offset:
//  To change the height of the lifebar (in case it's obstructed by the character's HUD), put...
//
//  kf_hud_offset = X
//
//  ... in init.gml. X is the amount of pixels to add/subtract.

// ---------------------------------------------------------------------

//- (For custom stages) Wall offset:
//  To change the position of the invisible walls, put...
//
//  kf_left_wall_offset = X
//  kf_right_wall_offset = X
//
//  ... in init.gml. X is the amount of pixels to add/subtract.

// ---------------------------------------------------------------------

//COPY ABILITY IDS:

//0 - NORMAL

//1 - BEAM
//2 - SPARK
//3 - FIRE
//4 - CUTTER
//5 - CRASH
//6 - SWORD
//7 - BURNING
//8 - FREEZE
//9 - NEEDLE
//10 - PARASOL
//11 - TORNADO
//12 - WHEEL
//13 - STONE
//14 - MIKE
//15 - LASER
//16 - SLEEP
//17 - HI-JUMP
//18 - ICE
//19 - BACKDROP
//20 - HAMMER
//21 - LIGHT
//22 - UFO
//23 - BALL
//24 - THROW

//25 - BOMB
//26 - FIGHTER
//27 - MIRROR
//28 - COOK
//29 - NINJA
//30 - PLASMA
//31 - YO-YO
//32 - SUPLEX
//33 - WING
//34 - COPY
//35 - JET
//36 - PAINT

//37 - CLEANING

//38 - CUPID
//39 - MISSILE
//40 - SMASH BROS.
//41 - MAGIC
//42 - MINI

//43 - BALLOON

//44 - ANIMAL
//45 - METAL
//46 - BUBBLE
//47 - GHOST

//48 - LEAF
//49 - WHIP
//50 - WATER
//51 - SPEAR

//52 - BELL
//53 - BEETLE
//54 - ARCHER
//55 - CIRCUS

//56 - DOCTOR
//57 - ESP
//58 - POISON

//59 - FESTIVAL
//60 - ARTIST
//61 - SPIDER
//62 - STAFF

//63 - WRESTLER

//64 - RANGER 
//65 - DRILL

//66 - JELLY

//67 - SAND
//68 - MECHA
