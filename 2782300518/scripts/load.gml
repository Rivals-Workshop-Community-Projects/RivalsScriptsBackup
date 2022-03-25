//This file is much longer than load characters on other characters due to every animation having a bike version
sprite_change_offset("idle", 40, 78);
sprite_change_offset("idle2", 40, 78);
sprite_change_offset("hurt", 40, 78);
sprite_change_offset("hurt_bike", 40, 82);
sprite_change_offset("bighurt", 40, 78);
sprite_change_offset("bighurt_bike", 40, 78);
sprite_change_offset("spinhurt", 40, 78);
sprite_change_offset("tumble_bike", 40, 84);
sprite_change_offset("crouch", 40, 78);
sprite_change_offset("crouch2", 40, 78);
sprite_change_offset("walk", 40, 78);
sprite_change_offset("walk2", 40, 78);
sprite_change_offset("walkturn", 40, 78);
sprite_change_offset("walkturn2", 40, 78);
sprite_change_offset("dash", 40, 78);
sprite_change_offset("dash2", 40, 78);
sprite_change_offset("dashstart", 40, 78);
sprite_change_offset("dashstart2", 40, 78);
sprite_change_offset("dashstop", 40, 78);
sprite_change_offset("dashstop2", 40, 78);
sprite_change_offset("dashturn", 40, 78);
sprite_change_offset("dashturn2", 40, 78);

sprite_change_offset("jumpstart", 40, 78);
sprite_change_offset("jumpstart2", 40, 78);
sprite_change_offset("jump", 40, 78);
sprite_change_offset("jump2", 40, 78);
sprite_change_offset("doublejump", 32, 78);
sprite_change_offset("doublejump2", 50, 78);
sprite_change_offset("walljump", 40, 78);
sprite_change_offset("walljump2", 40, 78);
sprite_change_offset("pratfall", 40, 78);
sprite_change_offset("pratfall2", 40, 78);
sprite_change_offset("land", 40, 78);
sprite_change_offset("land2", 40, 78);
sprite_change_offset("landinglag", 40, 78);
sprite_change_offset("landinglag2", 40, 78);
sprite_change_offset("bike_idle_air", 40, 80);

sprite_change_offset("parry", 40, 78);
sprite_change_offset("parry2", 40, 80);
sprite_change_offset("roll_forward", 40, 70);
sprite_change_offset("roll_forward2", 40, 66);
sprite_change_offset("roll_backward", 40, 70);
sprite_change_offset("roll_backward2", 40, 66);
sprite_change_offset("airdodge", 40, 78);
sprite_change_offset("airdodge2", 40, 78);
sprite_change_offset("waveland", 40, 78);
sprite_change_offset("waveland2", 40, 78);
sprite_change_offset("tech", 40, 66);
sprite_change_offset("tech2", 30, 78);

sprite_change_offset("jab", 32, 78);
sprite_change_offset("jab2", 40, 84);
sprite_change_offset("dattack", 30, 78);
sprite_change_offset("dattack2", 30, 78);
sprite_change_offset("ftilt", 32, 78);
sprite_change_offset("ftilt2", 40, 84);
sprite_change_offset("dtilt", 32, 68);
sprite_change_offset("dtilt2", 40, 84);
sprite_change_offset("utilt", 27, 78);
sprite_change_offset("utilt2", 40, 88);
sprite_change_offset("nair", 37, 84);
sprite_change_offset("nair2", 56, 116);
sprite_change_offset("fair", 32, 78);
sprite_change_offset("fair2", 10, 78);
sprite_change_offset("bair", 40, 78);
sprite_change_offset("bair2", 126, 78);
sprite_change_offset("uair", 40, 88);
sprite_change_offset("uair2", 40, 156);
sprite_change_offset("dair", 35, 78);
sprite_change_offset("dair2", 40, 78);
sprite_change_offset("dair2_proj", 42, 82);
sprite_change_offset("fstrong", 32, 78);
sprite_change_offset("fstrong2", 56, 116);
sprite_change_offset("ustrong", 40, 110);
sprite_change_offset("ustrong2", 56, 116);
sprite_change_offset("dstrong", 44, 66);
sprite_change_offset("dstrong2", 40, 78);
sprite_change_offset("nspecial", 32, 78);
sprite_change_offset("nspecial_air", 32, 78);
sprite_change_offset("nspecial2", 42, 88);
sprite_change_offset("fspecial", 32, 78);
sprite_change_offset("fspecial2", 56, 78);
sprite_change_offset("uspecial", 32, 78);
sprite_change_offset("uspecial2", 32, 78);
sprite_change_offset("dspecial", 40, 78);
sprite_change_offset("dspecial2", 40, 78);
sprite_change_offset("taunt", 40, 78);
sprite_change_offset("taunt2", 40, 98);
sprite_change_offset("pounce", 40, 66);

sprite_change_offset("get_on_bike", 40, 78);
sprite_change_offset("bike_hurtbox", 40, 78);
sprite_change_offset("bike_crouch_hurtbox", 40, 78);
sprite_change_offset("energy_shield", 51, 86);

sprite_change_offset("nitro_boost", 50, 50)

sprite_change_offset("plat", 50, 0);

sprite_change_offset("kirby_carol", 44, 56);

//Set victory theme based on alt
if (get_player_color(player) == 5 || get_player_color(player) == 20)
{
    set_victory_theme(sound_get ( "fp2_victory"));   
}
else
{
    set_victory_theme( sound_get( "victory" ) );
}
set_victory_bg(sprite_get("custom"));