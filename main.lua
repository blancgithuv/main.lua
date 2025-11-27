-- SIMPLE LOADER COIN PREDICTOR

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/YourLibraryHere/GuiLib/main.lua"))()
local window = library:CreateWindow("Coin Flip Predictor")

-- VARIABLES
local sides = {"Heads", "Tails"}

-- Prediction function
local function predictFlip()
    -- Simple “weighted” prediction
    return sides[math.random(1,2)]
end

-- Flip function
local function flipCoin()
    local prediction = predictFlip()
    local result = sides[math.random(1,2)]
    
    if result == prediction then
        return prediction, result, true
    else
        return prediction, result, false
    end
end

-- UI ELEMENTS
window:Button("Flip Coin", function()
    local pred, res, correct = flipCoin()
    print("Prediction: "..pred)
    print("Result: "..res)
    if correct then
        print("✅ Prediction correct!")
    else
        print("❌ Prediction wrong.")
    end
end)

window:Label("Click the button to flip the coin.")
