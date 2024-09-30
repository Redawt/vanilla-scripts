;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname Fragments:TopicInfos:TIF_SE_SD02_00132BA2 Extends TopicInfo Hidden Const

;BEGIN FRAGMENT Fragment_End
Function Fragment_End(ObjectReference akSpeakerRef)
Actor akSpeaker = akSpeakerRef as Actor
;BEGIN CODE
HailingShip.GetShipReference().StartCombat(PlayerShip.GetShipReference())
EscortShip01.GetShipReference().StartCombat(PlayerShip.GetShipReference())
MinerShip01.GetShipReference().StartCombat(PlayerShip.GetShipReference())
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

ReferenceAlias Property HailingShip Auto Const

ReferenceAlias Property PlayerShip Auto Const

ReferenceAlias Property EscortShip01 Auto Const

ReferenceAlias Property MinerShip01 Auto Const
