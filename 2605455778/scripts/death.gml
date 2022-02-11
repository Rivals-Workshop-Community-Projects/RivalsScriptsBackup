swallowups = false;
armorpoints = 0;
swallow = false;
swallowarmor = false;
has_rock = false;
nextarmor = false;
swallowinput = 0;
upcancel = false;
with(obj_article1){
    if(self.player_id == other){
        destroy = true;
    }
}