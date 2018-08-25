local PREFIX = "[Murloc] "
local ADDON_VERSION = GetAddOnMetadata("Mgrler", "Version")

local function MgrlerAddonCommands(txt, editbox)
    if txt ~= "" then
        -- Obtain the ID of the chat and other player if applicable
        local chatID = editbox:GetAttribute("chatType")
        local whoID = editbox:GetAttribute("tellTarget")

        if chatID == "WHISPER" then
            SendChatMessage(PREFIX..Nerglish.Translate(txt), chatID, nil, whoID)
        else
            SendChatMessage(PREFIX..Nerglish.Translate(txt), chatID, nil)
        end
    else
        -- Display addon information if no txt was found
        print("|cFFFFFF00Welcome to Mgrler the Nerglish chat addon.|r")
        print("|cFFFFFF00Version: "..ADDON_VERSION.."|r")
        print("|cFFFFFF00Use: /ngl <some text here>.|r")
    end
end

SLASH_NGL1 = '/ngl'
SlashCmdList["NGL"] = MgrlerAddonCommands
