//Update the fields on the editor
with(obj_editor)
{
	if object_index = obj_editReal
	{
		minValue = 1000000
		value = -1000000
		maxValue = -1000000
	}
}

global.contentSelected = 0
		
with(obj_content)
{
	if active = true
	{
		global.contentSelected ++
		
		with(obj_editor)
		{
			if object_index = obj_editString
			{
				value = other.texts[code]
			}
			else if object_index = obj_editReal
			{
				minValue = min(minValue,other.attributes[code])
				value = other.attributes[code]
				maxValue = max(maxValue,other.attributes[code])
			}	
			else if object_index = obj_editColour
			{
				value = other.attributes[code]
			}
			else if object_index = obj_editAnim
			{
				//Temp
			}
		}
		
		//Build Anim Keyframes out of selected anims
		if global.menu = 4
		{
			//Clear Existing Keyframe
			with(obj_keyframe)
			{
				instance_destroy()
			}
			
			with(obj_animTrack)
			{
				other.i = id
				time = max(other.attributes[animFld.animDuration],.5)
			}
			
			global.keyFrameSelected = 0
			
			for(vi = 0; vi < attributes[animFld.animlength]; vi ++)
			{
				ii = instance_create_depth(i.x,i.y-2,-50,obj_keyframe)
				ii.host = i
				
				ii.ix = animation[animFld.keyLength,vi]*(150/ii.host.time)
				ii.x = ii.host.x+ii.ix
				
				for(v = 0; v < 40; v++)
				{
					ii.animation[v] = animation[v,vi]
				}
			}			
		}
	}
}


