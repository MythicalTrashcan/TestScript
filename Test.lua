local Player = game.Players.LocalPlayer
local Humanoid = Player.Character.Humanoid
local RootPart = Humanoid.RootPart

game:GetService("RunService").RenderStepped:Connect(function ()
    if game.Players.LocalPlayer.Character.Humanoid:GetState() == Enum.HumanoidStateType.Climbing then
        RootPart.Velocity = Vector3.new(RootPart.Velocity.X, Humanoid.JumpPower * 1.1, RootPart.Velocity.Z)
    end
end)
