with(obj_editor)
{
	minValue = 1000000
	value = -1000000
	maxValue = -100000
}

global.contentSelected = 0
		
with(obj_keyframe)
{
	if select = true
	{
		global.contentSelected ++
		
		with(obj_editor)
		{
			minValue = min(minValue,other.animation[code])
			value = other.animation[code]
			maxValue = max(maxValue,other.animation[code])
		}
	}
}
//Special 

updateAnimation()