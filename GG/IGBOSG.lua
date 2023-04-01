local library = loadstring(game:HttpGet("https://kosmos-studios.github.io/wallyv3.lua"))()

local window = library:CreateWindow("GG")

local folder = window:CreateFolder("Scripts")

folder:Button("Show Path",function()
    for i,v in pairs(game:GetService("Workspace")["Glass Bridge"].GlassPane:GetDescendants()) do
        if v:IsA("BasePart") then
            if v.CanCollide == true then
            v.Color = Color3.fromRGB(0, 0, 0)
            else
          
          v.Color = Color3.fromRGB(255, 255, 255)
            
            end
        end
        end
end)

folder:Button("Goto End",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1085.91223, 60.9356651, 115.678078, -0.0414121114, -4.62709444e-08, -0.99914217, -1.12823579e-11, 1, -4.63102019e-08, 0.99914217, -1.90653049e-09, -0.0414121114)
end)
    
