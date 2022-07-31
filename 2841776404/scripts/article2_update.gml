with (player_id){
    if (instance_exists(standby_suit)){
        var suit = standby_suit;
        with other{
            x = suit.x;
            y = suit.y;
            if (suit.should_die == true){
                instance_destroy();
                exit;
            }
        }
    }
}