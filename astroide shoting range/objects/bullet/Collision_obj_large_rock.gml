score = score + 10;

with (other)
{
	instance_destroy();
	if (sprite_index == spr_rock_big)
	{
		repeat(2)
		{
			var new_asteriod = instance_create_layer(x, y, "Instances", obj_large_rock);
			new_asteriod.sprite_index = spr_rock_small;
		}
	}
	else
	{
	var xx = choose(
	irandom_range(0, room_width * 0.3),
	irandom_range(room_width * 0.7, room_width)
	);
	
	var yy = choose(
	               irandom_range(0, room_height * 0.3),
				   irandom_range(room_height * 0.7, room_height)		   
	);
	var new_asteriod = instance_create_layer(xx, yy, "Instances", obj_large_rock);
	new_asteriod.sprite_index = spr_rock_big;
	}
}
instance_destroy();
