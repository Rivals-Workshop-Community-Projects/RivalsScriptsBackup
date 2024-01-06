// hit_player.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/event_scripts.html#hit-player-gml
// Called when you hit another character.

var h = my_hitboxID; //hitbox
var e = hit_player_obj; //enemy

if(e != self && get_player_team(e.player) != get_player_team(player)){
    if(get_hitbox_value(h.attack, h.hbox_num, HG_SLUDGE_EFFECT) > 0){
        if(e.diseased_id == noone){
            e.sludge_amount += get_hitbox_value(h.attack, h.hbox_num, HG_SLUDGE_EFFECT) * (10 - has_rune("M") * 5) * e.damage_scaling;
            e.sludge_amount = ceil(e.sludge_amount);
            e.sludge_decay_lockout = 240;
            e.sludged_id = self;
            if(e.sludge_amount >= e.sludge_max){
                e.sludge_amount = 0;
                e.sludged_id = noone;
                e.diseased_id = self;
                e.diseased_timer = e.diseased_timer_max;
            }
        } else {
            e.diseased_id = self;
        }
    } else {
        if(e.sludged_id != noone){
            e.sludge_decay_lockout = max(150, e.sludge_decay_lockout);
        }
    }
}
