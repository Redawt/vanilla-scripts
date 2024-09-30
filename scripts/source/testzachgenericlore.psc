Scriptname TestZachGenericLore extends ObjectReference

Keyword Property GenericLoreTerminalEvent Auto Const Mandatory
{Keyword to start the quest that handles this system}

Quest Property GenericLoreQuest Auto Const Mandatory
{Quest that handles this system}

Event OnCellLoad()
    If (GenericLoreQuest.IsRunning())
        GenericLoreQuest.Stop()
    EndIf
    ;TerminalMenu myTerminalMenu = self as TerminalMenu
    GenericLoreTerminalEvent.SendStoryEvent(akloc=self.GetCurrentLocation(),akRef1=Self)
EndEvent

Event OnUnload()
    GenericLoreQuest.Stop()
EndEvent