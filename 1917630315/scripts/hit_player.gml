//take_damage(player, -1, hit_player); //applies (hit_player) damage to the workshop character

var myice = asset_get("obj_article_solid");
if (instance_exists(myice)) {
    if (instance_exists(myice.myhitbox)) {
        if (my_hitboxID.id == myice.myhitbox.id && !myice.knockedback) {
        myice.hsp = -0.5 * sign(myice.hsp);
        myice.vsp = -10;
        }
    }
}