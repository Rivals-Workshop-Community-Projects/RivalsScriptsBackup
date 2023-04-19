//hit_player.gml

//Find what attack Oxob is using and how much damage it deals
var hit_damage = my_hitboxID.damage;
var hit_attack = my_hitboxID.attack;

if (hit_attack == AT_USPECIAL || hit_attack == AT_USPECIAL_2){
    uspecial_target = hit_player_obj;
}

if(hit_attack == AT_NSPECIAL_2 && nspec_vfx != noone){
    nspec_vfx.pause = hitstop;
}

switch hit_attack{
    case AT_USPECIAL:
        if my_hitboxID.hbox_num == 3 {
            sound_play(asset_get("sfx_absa_kickhit"))
        }
    break;
    
    case AT_DAIR:
    case AT_FSTRONG:
        sound_play(asset_get("sfx_absa_kickhit"))
    break;
    
    case AT_FAIR:
        if my_hitboxID.hbox_num == 1 {
            sound_play(asset_get("sfx_holy_lightning"))
        }
    break;
    
    case AT_USTRONG:
        if my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2{
            sound_play(asset_get("sfx_absa_kickhit"))
        }
    break;
    
    case AT_DSTRONG:
        sound_play(sound_get("theunmatchedpowerofgod"))
        sound_play(asset_get("sfx_absa_kickhit"))
    break;
    
    case AT_USPECIAL_2:
        if my_hitboxID.hbox_num == 2 {
            sound_play(sound_get("theunmatchedpowerofgod"), 0, noone, 1.5, .95)
            sound_play(asset_get("sfx_blow_heavy1"))
        }
    break;
}

//FIELD SYSTEM HIT_PLAYER.GML (by Delta Parallax)

//Basically checks to see if our field exists and does something based on the result of that check.
//If it DOES, if the player we hit has our field, increase the field's radius by some amount, capping the result at the maximum radius that the field can have.
//If it DOES NOT, create it and stick it to the hit player.

var fobj = player_field_vars.field_obj;
//Check to see if the field exists.
if !(instance_exists(fobj) and !hit_player_obj.clone)
{
    //Create the field, stick it to the hit player.
    player_field_vars.field_obj = instance_create(floor(hit_player_obj.x),floor(hit_player_obj.y-(hit_player_obj.char_height/2)),"obj_article1");
    player_field_vars.field_obj.stuck_player = hit_player_obj;
    var fobj = player_field_vars.field_obj;
    fobj.radius = min(fobj.radius + (hit_damage*player_field_vars.hitplayer_growth), player_field_vars.bounds[1]);
}
else
{
    //Check to see if the player that we hit has our field.
    if (player_field_vars.field_obj.stuck_player == hit_player_obj)
    {
        //Increase the radius and cap it.
        fobj.radius = min(fobj.radius + (hit_damage*player_field_vars.hitplayer_growth), player_field_vars.bounds[1]);
        //Stop field decay if it is decaying.
        fobj.should_decay = false;
    }
}

if(attack == AT_USPECIAL_2 && my_hitboxID.hbox_num == 2){
    var fobj = player_field_vars.field_obj;
    //Check to see if the field exists.
    if instance_exists(fobj)
    {
        fobj.radius = player_field_vars.bounds[0] + 3;
        fobj.should_decay = true;
    }
}