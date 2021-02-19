//hit_player - called when one of your hitboxes hits a player

if my_hitboxID.damage > 0 and my_hitboxID.type == 1{
    combo += 1;
}

// Add super
var attacklist = [AT_EXTRA_1, AT_EXTRA_2, AT_EXTRA_3, AT_UTHROW, AT_FSTRONG_2]
if (my_hitboxID.type == 1 or !golden) and !za_warudo and not(array_find_index(attacklist, attack) != -1 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR)){
    var supersnd = super != 100
    var supersnd2 = super < 33
    var superadd = my_hitboxID.damage * (1 + ((combo - 1) * 0.25)) * 0.5;
    super = clamp(super + min(superadd,5), 0, 100)
    if supersnd and super = 100{
        sound_play(sound_get("supermeter"));
        sound_play(sound_get("demonlaugh"));
    }
    if supersnd2 and super >= 33 and (runeL or runeM){
        sound_play(sound_get("supermetersmall"));
    }
}

// Willowisp random 999%
if my_hitboxID.attack == AT_DTHROW and my_hitboxID.hbox_num == 1{
    if random_func_2(5,19,true) == 1{
        sound_play(sound_get("willowispcrit"))
        set_player_damage( hit_player_obj.player, 999 )
    }
}

// Award soul points when hitting soul siphon
if my_hitboxID.attack == AT_DTHROW and my_hitboxID.hbox_num == 2{
    soul_points += 1 + (golden * 4);
    soul_flash_timer = 40;
}

// Lazer hitsparks
if my_hitboxID.attack == AT_EXTRA_1 and my_hitboxID.hbox_num == 1{
    var rand1 = 50 - random_func( 0, 100, true )
    var rand2 = 50 - random_func( 1, 100, true )
    if get_gameplay_time() % 2 = 0{
        spawn_hit_fx( hit_player_obj.x + rand1, (hit_player_obj.y - 32) + rand2, hitsparksuper );
    }
    else{
        spawn_hit_fx( hit_player_obj.x + rand1, (hit_player_obj.y - 32) + rand2, hitsparkheavy );
    }
}

if my_hitboxID.attack == AT_UTHROW and my_hitboxID.hbox_num == 1{
    spawn_hit_fx( hit_player_obj.x, (hit_player_obj.y - hit_player_obj.char_height * 1), hitsparkheavy );
}

if my_hitboxID.attack == AT_FSTRONG_2 and golden{
	set_player_damage(hit_player_obj.player, 999);
	sound_play(sound_get("willowispcrit"));
	sound_play(sound_get("willowispcrit"));
}

// killing lol
if awakening{
    set_player_stocks( has_hit_id.player, 1)
    create_deathbox(
        has_hit_id.x,
        has_hit_id.y,
        99999,
        99999,
        has_hit_id.player,
        true,
        1,
        10,
        0
    )
    hit_player_obj.y = room_height * 10
    set_player_stocks( has_hit_id.player, 0)
    has_hit_id.player = player
    sound_play(sound_get("nuke"))
    set_attack(AT_TAUNT_2)
    window = 3
    window_timer = 0
    for (var i = 0; i < instance_number(hit_player_obj); ++i){
        var inst = instance_find(hit_player_obj,i);
        instance_destroy( inst );
    }
}