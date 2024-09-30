Scriptname DefaultCollectionChangeAV extends RefCollectionAlias Default
{Sets, mods, or damages one or more actor values when references are added to this collection.}

Struct ActorValueDatum
	ActorValue ActorValueToChange
	{An actor value to change.}
	float NewValue
	{The amount to set this actor value to, mod the value by, or damage the value by.}
	int TypeOfChange
	{DEFAULT=0. 0=Set, 1=Mod, 2=Damage, 3=Restore}
EndStruct

ActorValueDatum[] property ActorValueData Auto Const Mandatory
{Struct of actor values to be changed.}

;TypeOfChange Consts
int CONST_TypeOfChange_Set = 0 Const
int CONST_TypeOfChange_Mod = 1 Const
int CONST_TypeOfChange_Damage = 2 Const
int CONST_TypeOfChange_Restore = 3 Const

Event OnAliasChanged(ObjectReference akObject, bool abRemove)
	if (!abRemove)
		int i = 0
		While (i < ActorValueData.Length)
			ActorValueDatum current = ActorValueData[i]
			if (current.TypeOfChange == CONST_TypeOfChange_Set)
				akObject.SetValue(current.ActorValueToChange, current.NewValue)
			ElseIf (current.TypeOfChange == CONST_TypeOfChange_Mod)
				akObject.ModValue(current.ActorValueToChange, current.NewValue)
			ElseIf (current.TypeOfChange == CONST_TypeOfChange_Damage)
				akObject.DamageValue(current.ActorValueToChange, current.NewValue)
			ElseIf (current.TypeOfChange == CONST_TypeOfChange_Restore)
				akObject.RestoreValue(current.ActorValueToChange, current.NewValue)
			EndIf
			i = i + 1
		EndWhile
	EndIf
EndEvent