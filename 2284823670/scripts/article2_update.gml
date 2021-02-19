//

var target_x = center + distances[died] * side + (side == -1 ? -32 : 0);
x = lerp(x, target_x, 0.3);
y = (round(floor(exist_timer / 2)) % 32) * -1;

var small = center - distances[died] + 10;
var big   = center + distances[died] - 10;

with oPlayer{
	var h = (y > other.y) * 10;
	x = clamp(x, small + h, big - h);
}

exist_timer++;