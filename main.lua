print("Main.lua loaded!")

local addonName = ...

local PREFIX = "[Murloc] "
local ADDON_VERSION = "0.1"

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

local function OnEvent(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == addonName then
        print(addonName .. " loaded successfully!")
        -- Example: Fetch metadata safely
        local version = GetAddOnMetadata(addonName, "Version")
        print("Version: " .. (version or "unknown"))
    end
end

-- Create a frame to listen for events
local frame = CreateFrame("Frame")
frame:RegisterEvent("ADDON_LOADED")
frame:SetScript("OnEvent", OnEvent)
