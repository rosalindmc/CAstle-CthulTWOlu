//Reassemble anim from keyframe data

//Update test animation sheet

ordering = ds_priority_create()

with(obj_keyframe)
{
	ds_priority_add(other.ordering,id,x)
}

with(obj_content)
{
	if active = true
	{
		other.iv = id
	}
}

i = 0
v = 0

iv.attributes[animFld.animDuration] = obj_animTrack.time

while(!ds_priority_empty(ordering))
{
	ii = ds_priority_delete_min(ordering)
	
	//Assemble Animation
	for(iii = 0; iii < 40; iii++)
	{
		iv.animation[iii,i] = ii.animation[iii]
	}
	iv.animation[animFld.keyLength,i] = ii.host.time*((ii.x-ii.host.x)/150)
	
	i ++
	
	if ii.select = true
	{
		v = i
	}
}

iv.attributes[animFld.animlength] = i


with(global.animSheet)
{
	animationImport(other.iv)
}

/*
with(global.animDoll)
{
	animKeyframe(global.animSheet,other.v,0)
	animDelay[0] = .1
	animIndex[0] = global.animSheet
}
