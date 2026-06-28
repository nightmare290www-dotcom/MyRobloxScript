https://discord.gg/Ywur2stHj
local URL = "https://raw.githubusercontent.com/nightmare290www-dotcom/MyRobloxScript/main/Main.luau"

local success, err = pcall(function()
    loadstring(game:HttpGet(URL))()
end)

if not success then
    warn("Ошибка загрузки: " .. tostring(err))
end
