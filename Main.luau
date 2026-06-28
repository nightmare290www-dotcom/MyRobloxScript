-- Основной скрипт
print("✓ Скрипт успешно загружен!")

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

-- Простая функция
local function Notify(text)
    game.StarterGui:SetCore("SendNotification", {
        Title = "Мой Скрипт",
        Text = text,
        Duration = 3
    })
end

-- Создаём простое UI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "MyScriptUI"
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local Button = Instance.new("TextButton")
Button.Size = UDim2.new(0.8, 0, 0, 40)
Button.Position = UDim2.new(0.1, 0, 0.3, 0)
Button.Text = "Нажми меня"
Button.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
Button.TextColor3 = Color3.new(1, 1, 1)
Button.Parent = Frame

Button.MouseButton1Click:Connect(function()
    Notify("Кнопка нажата!")
    print("Кнопка работает!")
end)

Notify("Скрипт загружен!")
