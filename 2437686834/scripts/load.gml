sprite_change_offset("idle", 28, 54);
sprite_change_offset("hurt", 28, 54);
sprite_change_offset("crouch", 28, 54);
sprite_change_offset("walk", 28, 54);
sprite_change_offset("walkturn", 28, 54);
sprite_change_offset("dash", 28, 54);
sprite_change_offset("dashstart", 28, 54);
sprite_change_offset("dashstop", 28, 54);
sprite_change_offset("dashturn", 28, 54);

sprite_change_offset("jumpstart", 28, 54);
sprite_change_offset("jump", 28, 54);
sprite_change_offset("doublejump", 28, 54);
sprite_change_offset("walljump", 28, 54);
sprite_change_offset("pratfall", 28, 54);
sprite_change_offset("land", 28, 54);
sprite_change_offset("landinglag", 28, 54);

sprite_change_offset("parry", 28, 54);
sprite_change_offset("roll_forward", 40, 78);
sprite_change_offset("roll_backward", 40, 78);
sprite_change_offset("airdodge", 28, 54);
sprite_change_offset("waveland", 28, 54);
sprite_change_offset("tech", 28, 54);

sprite_change_offset("jab", 64, 95);
sprite_change_offset("dattack", 40, 78);
sprite_change_offset("roll", 40, 78);
sprite_change_offset("ftilt", 64, 126);
sprite_change_offset("dtilt", 64, 102);
sprite_change_offset("utilt", 28, 126);
sprite_change_offset("nair", 36, 60);
sprite_change_offset("fair", 40, 58);
sprite_change_offset("bair", 72, 110);
sprite_change_offset("uair", 60, 80);
sprite_change_offset("dair", 40, 78);
sprite_change_offset("fstrong", 38, 54);
sprite_change_offset("ustrong", 64, 126);
sprite_change_offset("dstrong", 70, 54);
sprite_change_offset("nspecial", 28, 126);
sprite_change_offset("fspecial", 36, 60);
sprite_change_offset("fspecialup", 36, 60);
sprite_change_offset("fspecialdown", 36, 60);
//sprite_change_offset("fspecial_air", 36, 82);
sprite_change_offset("uspecial", 28, 54);
sprite_change_offset("dspecial", 48, 46);
sprite_change_offset("taunt", 28, 126);


sprite_change_offset("Cherry", 14, 14);
sprite_change_offset("Apple", 14, 14);
sprite_change_offset("Banana", 16, 16);
sprite_change_offset("MiniPAC", 14, 15);
sprite_change_offset("Bell", 14, 15);
sprite_change_offset("Sweet", 14, 15);
sprite_change_offset("Pooka", 15, 14);
sprite_change_offset("Coffee", 16, 14);
sprite_change_offset("PowerPellet", 10, 10);
sprite_change_offset("PACBlock", 10, 10);
sprite_change_offset("Pookslopde",24, 20);
sprite_change_offset("FireHydrant",32, 32);
sprite_change_offset("FireHydrantFly",32, 32);
sprite_change_offset("FireHydrantMask",32, 32);
sprite_change_offset("FireHydrantStandHurt",32, 32);
sprite_change_offset("water", 16, 16);

sprite_change_offset("kirbytoss", 40, 62);


sprite_change_offset("miiverse", 60, 30);

sprite_change_offset("luigi", 27, 39);

Namco_Taunt = sprite_get("NamcoTaunt")
//Namco_Taunt_Sound = sound_get("enter")

sprite_change_offset("NamcoTaunt", 14, 15)

sprite_change_offset("plat", 64, 94);


sprite_change_offset("zetterburn", 18, 20);
sprite_change_offset("orcane", 26, 16);
sprite_change_offset("wrastor", 28, 20);
sprite_change_offset("kragg", 20, 20);
sprite_change_offset("maypul", 30, 16);
sprite_change_offset("absa", 20, 22);
sprite_change_offset("etalus", 34, 22);
sprite_change_offset("clairen", 36, 20);
sprite_change_offset("forsburn", 30, 22);
sprite_change_offset("sylvanos", 40, 20);
sprite_change_offset("ranno", 26, 22);
sprite_change_offset("elliana", 24, 20);
sprite_change_offset("ori", 20, 18);
sprite_change_offset("shovelknight", 18, 18);
sprite_change_offset("jerma", 14, 40);




sprite_change_offset("fspecial2", 64, 126);
sprite_change_offset("fstrong2", 64, 126);
sprite_change_offset("jab2", 42, 126);
sprite_change_offset("ftilt1", 34, 78);
sprite_change_offset("sandstar_hurt", 40, 78);
set_victory_bg( sprite_get("victor"));
if (get_player_color(player) == 8)
{
set_victory_portrait( sprite_get("jerma_victory"));

set_victory_theme( sound_get( "jerma_win" ) );
}
else
{
set_victory_bg( sprite_get("victor"));
set_victory_portrait( sprite_get("portrait"));
set_victory_theme( sound_get( "Victory" ) );
}