;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
Scriptname Fragments:Scenes:SF_MQ102_007_SarahVenusSce_0028C697_1 Extends Scene Hidden Const

;BEGIN FRAGMENT Fragment_Begin
Function Fragment_Begin()
;BEGIN AUTOCAST TYPE mq102script
mq102script kmyQuest = GetOwningQuest() as mq102script
;END AUTOCAST
;BEGIN CODE
kmyquest.BlockSpaceTravel()
;
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_End
Function Fragment_End()
;BEGIN AUTOCAST TYPE mq102script
mq102script kmyQuest = GetOwningQuest() as mq102script
;END AUTOCAST
;BEGIN CODE
kmyquest.UnBlockSpaceTravel()
GetOwningQuest().SetStage(410)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment
