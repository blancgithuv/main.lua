-- SIMPLE COIN PREDICTOR LOADER

print("Loader online ✅")

local sides = {"Heads", "Tails"}

local function predictFlip()
    return sides[math.random(1,2)]
end

local function flipCoin()
    local prediction = predictFlip()
    local result = sides[math.random(1,2)]
    print("Prediction: "..prediction)
    print("Result: "..result)
    if prediction == result then
        print("✅ Prediction correct!")
    else
        print("❌ Prediction wrong.")
    end
end

-- Simulate a button click
print("Type flipCoin() in the executor to flip a coin")
