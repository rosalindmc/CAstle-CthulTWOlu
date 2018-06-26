//Reassemble anim from keyframe data

//Update test animation sheet

ordering = ds_priority_create()

with(obj_keyframe)
{
	ds_priority_add(other.ordering,id,x)
}

i = 0

while(!ds_priority_empty(ordering))
{
	ii = ds_priority_delete_min(ordering)
	
	//Assemble Animation
	i ++
}