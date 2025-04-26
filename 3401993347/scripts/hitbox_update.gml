//update hitboxes				
if (attack == AT_NSPECIAL && hbox_num == 2) {
    if (hitbox_timer == 1 && player == player_id.player && !was_parried) {
        //create a nspecial article to accompany the hitbox
        var nspecial_article = instance_create(x, y - 32, "obj_article1");
        nspecial_article.followingOrb = true;
        nspecial_article.followingOrbID = id;
        nspecial_article.orbPower = player_id.shadowBallCharge;
        nspecial_article.player = player;
        nspecial_article.sprite_index = asset_get("empty_sprite");
        //transfer the orbs on the player

        //determine amount based on shadowBallCharge
        shadowBallOrbStacks = [];
        var amount = ceil((player_id.shadowBallCharge-3)/2);

        //or just simply take 3 orbs
        amount = 3;

        //before copying any orbs, check if the orbs are about to EXPLODE
        if(array_length(player_id.mewtwoOrbStacks) <= 0 || player_id.mewtwoOrbStacks[0].exploding > 0){
            amount = 0;
        }

        

        if(amount <= 0) {
            amount = 0;
        } else {
            rest = array_length(player_id.mewtwoOrbStacks) - amount;

            var temp = []
            array_copy(temp, 0, player_id.mewtwoOrbStacks, 0, rest + amount);

            //temp now has all stacks
            player_id.mewtwoOrbStacks = [];
            //copy first amount orbs to shadowBallOrbStacks
            array_copy(shadowBallOrbStacks, 0, temp, 0, amount);
            //copy the rest of the orbs back to mewtwoOrbStacks
            array_copy(player_id.mewtwoOrbStacks, 0, temp, amount, rest);

        }
        player_id.shadowBallCharge = 0

        
    }
}

#define array_cut(_array, _index)
var _array_cut = array_create(array_length_1d(_array)-1);
var j = 0;
for (var i = 0; i < array_length_1d(_array); i++) {
	if i != _index {
		_array_cut[@j] = _array[i];
		j++;
	}
}
return _array_cut;