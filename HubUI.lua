-- IceyZHub GUI | by Jayden

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
   Name = "IceyZHub | 99 Nights in the Forest",
   LoadingTitle = "IceyZHub Loading...",
   LoadingSubtitle = "by Jayden",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "IceyZHub",
      FileName = "Settings"
   },
   Discord = {
      Enabled = false,
   },
   KeySystem = false
})

local MainTab = Window:CreateTab("Main", 4483362458)

MainTab:CreateButton({
   Name = "Kill Aura",
   Callback = function()
      while task.wait(0.5) do
         for _,v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:FindFirstChild("Humanoid") and v.Name ~= game.Players.LocalPlayer.Name then
               pcall(function()
                  game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
               end)
            end
         end
      end
   end,
})

MainTab:CreateButton({
   Name = "Auto Fire",
   Callback = function()
      print("Auto Fire aktif")
   end,
})
