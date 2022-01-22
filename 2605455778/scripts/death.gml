armorpoints = 0;
swallow = false;
swallowarmor = false;
has_rock = false;
nextarmor = false;
swallowinput = 0;
with(obj_article1){
    if(self.player_id == other){
        destroy = true;
    }
}