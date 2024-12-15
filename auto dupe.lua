---@diagnostic disable-next-line: undefined-global
local UI = {}

UI["1"] = Instance.new("ScreenGui", game:GetService("CoreGui"))
UI["1"]["Name"] = [[DupeMenu]]
UI["1"]["IgnoreGuiInset"] = true
UI["1"]["ResetOnSpawn"] = false
UI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling

UI["2"] = Instance.new("TextButton", UI["1"])
UI["2"]["BorderSizePixel"] = 0
UI["2"]["TextSize"] = 14
UI["2"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["2"]["Size"] = UDim2.new(0.04832, 0, 0.01911, 0)
UI["2"]["BackgroundTransparency"] = 0.8
UI["2"]["Name"] = [[DupeButton]]
UI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["2"]["Text"] = [[Dupe ▼]]
UI["2"]["Position"] = UDim2.new(0.338, 0, 0, 0)

UI["3"] = Instance.new("Frame", UI["1"])
UI["3"]["BorderSizePixel"] = 0
UI["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["3"]["Size"] = UDim2.new(0, 149, 0, 0) --0.221
UI["3"]["Position"] = UDim2.new(0.32766, 0, 0.02113, 0)
UI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
UI["3"]["Name"] = [[DupeFrame]]
UI["3"]["Visible"] = false 
UI["3"]["BackgroundTransparency"] = 1

UI["4"] = Instance.new("ScrollingFrame", UI["3"])
UI["4"]["Active"] = true
UI["4"]["BorderSizePixel"] = 0
UI["4"]["CanvasSize"] = UDim2.new(0, 0, 0, 2050)
UI["4"]["BackgroundColor3"] = Color3.fromRGB(57, 57, 73)
UI["4"]["Name"] = [[Props]]
UI["4"]["Size"] = UDim2.new(1.07383, 0, 1, 0)
UI["4"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0)
UI["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

UI["5"] = Instance.new("ImageButton", UI["4"])
UI["5"]["BorderSizePixel"] = 0
UI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
UI["5"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]]
UI["5"]["Size"] = UDim2.new(0, 50, 0, 50)
UI["5"]["BackgroundTransparency"] = 1
UI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)

UI["6"] = Instance.new("TextBox", UI["3"])
UI["6"]["CursorPosition"] = -1
UI["6"]["ClearTextOnFocus"] = false
UI["6"]["TextColor3"] = Color3.fromRGB(0, 0, 0)
UI["6"]["BorderSizePixel"] = 0
UI["6"]["TextSize"] = 14
UI["6"]["BackgroundColor3"] = Color3.fromRGB(36, 37, 58)
UI["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
UI["6"]["PlaceholderText"] = [[Count]]
UI["6"]["Size"] = UDim2.new(0, 160, 0, 15)
UI["6"]["Position"] = UDim2.new(0, 0, 1, 0)
UI["6"]["BorderColor3"] = Color3.fromRGB(255, 255, 255)
UI["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255)
UI["6"]["Text"] = [[]]

local tools = {
	{ "rbxassetid://12554754417", "Iphone" },
	{ "rbxassetid://12555126024", "Ipad" },
	{ "rbxassetid://14240155280", "PropMaker" },
	{ "http://www.roblox.com/asset/?id=4529206312", "Laptop" },
	{ "http://www.roblox.com/asset/?id=4689532181", "ShoppingCart" },
	{ "http://www.roblox.com/asset/?id=5177680375", "Paperbag" },
	{ "rbxassetid://14240155925", "Sign" },
	{ "http://www.roblox.com/asset/?id=5211786405", "Book" },
	{ "rbxassetid://14240155098", "Envelope" },
	{ "http://www.roblox.com/asset/?id=6431718392", "Paper" },
	{ "http://www.roblox.com/asset/?id=4551084336", "ClipBoard" },
	{ "rbxassetid://14240155516", "Ticket" },
	{ "rbxassetid://14240156176", "Licence" },
	{ "http://www.roblox.com/asset/?id=4529249187", "BabyBoy" },
	{ "http://www.roblox.com/asset/?id=4529249377", "BabyGirl" },
	{ "http://www.roblox.com/asset/?id=5528668898", "BabyBottle" },
	{ "http://www.roblox.com/asset/?id=4529218345", "Stroller" },
	{ "http://www.roblox.com/asset/?id=5528669302", "BabyHippo" },
	{ "http://www.roblox.com/asset/?id=5528668413", "BabyMonkey" },
	{ "rbxassetid://17869452509", "Animals" },
	{ "http://www.roblox.com/asset/?id=6607753154", "Wagon" },
	{ "http://www.roblox.com/asset/?id=4826313379", "Stretcher" },
	{ "http://www.roblox.com/asset/?id=4678807315", "Stethoscope" },
	{ "rbxassetid://11450993492", "Medicine" },
	{ "http://www.roblox.com/asset/?id=4689446576", "Ear" },
	{ "http://www.roblox.com/asset/?id=5484924743", "Toothbrush" },
	{ "http://www.roblox.com/asset/?id=5480682123", "Hairbrush" },
	{ "http://www.roblox.com/asset/?id=6431694637", "Trophy" },
	{ "http://www.roblox.com/asset/?id=6100222503", "CarryOn" },
	{ "http://www.roblox.com/asset/?id=6170344779", "PlaneTicket" },
	{ "http://www.roblox.com/asset/?id=5211788217", "SWATShield" },
	{ "http://www.roblox.com/asset/?id=4531411830", "Cuffs" },
	{ "http://www.roblox.com/asset/?id=5211787934", "Taser" },
	{ "http://www.roblox.com/asset/?id=4529287960", "Glock" },
	{ "http://www.roblox.com/asset/?id=4529288285", "GlockBrown" },
	{ "http://www.roblox.com/asset/?id=4529288149", "Shotgun" },
	{ "http://www.roblox.com/asset/?id=4529288610", "Assault" },
	{ "rbxassetid://15208272302", "Sniper" },
	{ "rbxassetid://15343364442", "SwordWood" },
	{ "rbxassetid://15343371329", "Bow" },
	{ "http://www.roblox.com/asset/?id=4587924290", "Bomb" },
	{ "http://www.roblox.com/asset/?id=4529193474", "DuffleBag" },
	{ "http://www.roblox.com/asset/?id=4587924680", "DuffleBagMoney" },
	{ "http://www.roblox.com/asset/?id=4535110571", "Money" },
	{ "http://www.roblox.com/asset/?id=4557319271", "CreditCardBoy" },
	{ "http://www.roblox.com/asset/?id=4557319090", "CreditCardGirl" },
	{ "http://www.roblox.com/asset/?id=6351262697", "Binocks" },
	{ "rbxassetid://8252122471", "HandRadio" },
	{ "rbxassetid://8779427352", "GhostMeter" },
	{ "http://www.roblox.com/asset/?id=4551018166", "FlashLight" },
	{ "http://www.roblox.com/asset/?id=6714351549", "Marshmello" },
	{ "http://www.roblox.com/asset/?id=6714550577", "SleepingBag" },
	{ "rbxassetid://9781746828", "FishingRod" },
	{ "http://www.roblox.com/asset/?id=4529231608", "Umbrella" },
	{ "http://www.roblox.com/asset/?id=6239256158", "Balloon" },
	{ "rbxassetid://13470272651", "Present" },
	{ "http://www.roblox.com/asset/?id=5211788490", "Roses" },
	{ "http://www.roblox.com/asset/?id=4622190558", "Microphone" },
	{ "http://www.roblox.com/asset/?id=4529167642", "Camcorder" },
	{ "http://www.roblox.com/asset/?id=4024378214", "Guitar" },
	{ "http://www.roblox.com/asset/?id=4024378910", "ElectricGuitar" },
	{ "http://www.roblox.com/asset/?id=5480681758", "Axe" },
	{ "http://www.roblox.com/asset/?id=4553362764", "Hammer" },
	{ "http://www.roblox.com/asset/?id=4553365967", "Wrench" },
	{ "http://www.roblox.com/asset/?id=4678811002", "FireX" },
	{ "rbxassetid://14240222574", "StopSign" },
	{ "rbxassetid://16101387234", "Cones" },
	{ "http://www.roblox.com/asset/?id=5211862721", "Ladder" },
	{ "http://www.roblox.com/asset/?id=5480682683", "LawnMower" },
	{ "http://www.roblox.com/asset/?id=4617189079", "Shovel" },
	{ "http://www.roblox.com/asset/?id=4617189290", "Bucket" },
	{ "http://www.roblox.com/asset/?id=5480684131", "WateringCan" },
	{ "rbxassetid://14240155698", "Box" },
	{ "rbxassetid://14982217383", "LaundryBasket" },
	{ "http://www.roblox.com/asset/?id=5480918435", "Vacuum" },
	{ "http://www.roblox.com/asset/?id=4539801080", "Mop" },
	{ "http://www.roblox.com/asset/?id=4598172149", "SoccerBall" },
	{ "http://www.roblox.com/asset/?id=4594819654", "Basketball" },
	{ "http://www.roblox.com/asset/?id=7336231299", "Weights" },
	{ "rbxassetid://11556980707", "FoodCart" },
	{ "http://www.roblox.com/asset/?id=5946785931", "FoodTray" },
	{ "rbxassetid://14240154561", "TakeOut" },
	{ "rbxassetid://14240154894", "TakeOutHappyBurger" },
	{ "http://www.roblox.com/asset/?id=6239256493", "TakeOutPizza" },
	{ "rbxassetid://10897693168", "PrisonTray" },
	{ "http://www.roblox.com/asset/?id=4550403278", "BurgerTray" },
	{ "rbxassetid://7550751455", "BreakfestPlate1" },
	{ "rbxassetid://7550751718", "LunchPlate1" },
	{ "rbxassetid://13268293800", "DinnerPlate3" },
	{ "rbxassetid://7550749793", "DinnerPlate1" },
	{ "rbxassetid://7550751199", "DinnerPlate2" },
	{ "http://www.roblox.com/asset/?id=4549503313", "Apple" },
	{ "http://www.roblox.com/asset/?id=4548051724", "Banana" },
	{ "http://www.roblox.com/asset/?id=4549503602", "AppleGreen" },
	{ "rbxassetid://5814230667", "Popcorn" },
	{ "http://www.roblox.com/asset/?id=4548052138", "Chips" },
	{ "http://www.roblox.com/asset/?id=5211787314", "Hamburger" },
	{ "rbxassetid://7550750852", "HotDog" },
	{ "rbxassetid://7550749946", "Burrito" },
	{ "rbxassetid://7550751862", "Taco" },
	{ "rbxassetid://7550750347", "Sandwich" },
	{ "rbxassetid://7550749589", "Guda" },
	{ "http://www.roblox.com/asset/?id=4549492371", "Pizza" },
	{ "rbxassetid://7550751347", "Pretzel" },
	{ "http://www.roblox.com/asset/?id=5664163065", "Waffle" },
	{ "rbxassetid://7550751581", "MuffinBlueBerry" },
	{ "rbxassetid://7550750594", "YummyBread" },
	{ "rbxassetid://7550750055", "CookieChip" },
	{ "rbxassetid://7550750449", "Donut" },
	{ "http://www.roblox.com/asset/?id=6239256320", "CakePink" },
	{ "rbxassetid://11556178274", "CottonCandyPurple" },
	{ "http://www.roblox.com/asset/?id=4548053815", "Reeses" },
	{ "http://www.roblox.com/asset/?id=4548053095", "Hershey" },
	{ "http://www.roblox.com/asset/?id=4548053271", "Icecream" },
	{ "rbxassetid://7550750989", "ShakeChocolate" },
	{ "rbxassetid://7550750255", "FrapStrawberry" },
	{ "rbxassetid://7550750171", "FrapMint" },
	{ "rbxassetid://7550750730", "Mocha" },
	{ "rbxassetid://14240154728", "Milk" },
	{ "http://www.roblox.com/asset/?id=5480684668", "BottledWater" },
	{ "http://www.roblox.com/asset/?id=4548051862", "Bloxaide" },
	{ "http://www.roblox.com/asset/?id=4548052009", "Coke" },
	{ "rbxassetid://8201012265", "CandySwirl" },
}

--local scroll = UI["4"]
--local ex = UI["5"]
function dupe(count, toolName)
    if count == 0 then return end
    function FindEvent(Name)
        local path = game:GetService("ReplicatedStorage")["RE"]
        local nameEdited = {}
        local tmp = ""
        for i = 1,#Name do
            if i == 1 then 
                tmp = Name:sub(i,i) 
            elseif i == #Name then 
                nameEdited[#nameEdited+1] = tmp
                nameEdited[#nameEdited+1] = Name:sub(#Name,#Name) 
            else
                local char = Name:sub(i,i)
                if string.upper(char) == char and #tmp>2 then
                    nameEdited[#nameEdited+1] = tmp:sub(1,#tmp-1)
                    tmp = tmp:sub(#tmp,#tmp) .. char
                else
                    tmp = tmp .. char
                end
            end
        end
        local foundEvent
        for _,event in pairs(path:GetChildren()) do
            local access = true
            for _,name in pairs(nameEdited) do
                if not event.Name:find(name) or #event.Name > #Name+#nameEdited then
                    access = false
                    break;
                end
            end
            if access then
                foundEvent = event
                break
            end
        end
        return foundEvent
    end

    local lplr = game.Players.LocalPlayer
    local char = lplr.Character
    local root = char.HumanoidRootPart
    local part = Instance.new("Part", workspace)
    part.Size = Vector3.new(10,0.01, 10)
    part.Anchored = true
    part.CFrame = CFrame.new(0,-503,0)
    root.CFrame = CFrame.new(0,-500,0)
    wait()
    local event = FindEvent("Tool")
    for i = 1, count do
        event:InvokeServer("PickingTools", toolName)
        local tool = lplr.Backpack:WaitForChild(toolName)
        tool.Parent = char
        wait()
        tool.Parent = lplr.Backpack
        tool.Grip = CFrame.new(0,0,0)
        tool.Parent = char
        tool:WaitForChild("Handle"):Remove()
        tool.Parent = lplr.Backpack
        tool.Parent = char
        local rp = 0
        local retries = 0
        repeat
            rp = rp + 1
            task.wait()
            if rp > 200 then
                if retries >= 3 then
                    event:InvokeServer("PickingTools", toolName)
                    break
                end
                retries = retries + 1
                tool.Parent = lplr.Backpack
                task.wait(0.5)
                tool.Parent = char
                rp = 0
            end
        until lplr.Character:FindFirstChild(toolName, true) == nil
    end
    root.Anchored = false
    part:Remove()
end

local counter = 0
for _, tool in pairs(tools) do
	counter = counter + 1
	local clon = UI["5"]:Clone()
	local mul = 0
	if counter % 3 == 0 then
		mul = 2
	elseif counter % 3 == 1 then
		mul = 0
	elseif counter % 3 == 2 then
		mul = 1
	end
	clon.Position = UDim2.fromOffset(mul * 50, ((counter - 1) // 3) * 50)
	clon.Parent = UI["4"]
	clon.BackgroundTransparency = 1
	clon.Image = tool[1]
	clon.Name = tool[2]
    clon.MouseButton1Click:Connect(function()
        dupe(tonumber(UI["6"].Text), tool[2])
    end)
end
UI["5"]:Destroy()

local toggle = false
local TS = game:GetService("TweenService")
UI["2"].MouseButton1Click:Connect(function()
    toggle = not toggle
    UI["3"]["Visible"] = toggle 
    if toggle then
        TS:Create(UI["3"], TweenInfo.new(0.5), {Size = UDim2.new(0, 149, 0.221, 0)}):Play()
    else
        TS:Create(UI["3"], TweenInfo.new(0.5), {Size = UDim2.new(0, 149, 0, 0)}):Play()
    end
end)
