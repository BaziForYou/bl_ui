---@class KeyDifficultyConfig
---@field difficulty number The difficulty of the game (1-100)
---@field numberOfKeys number The amount of keys to press

--- NumberSlide Game
---@param iterations number The amount of iterations to run
---@param difficulty number The difficulty of the game (1-100)]
---@param numberOfKeys number The amount of keys to press
---@return boolean
function NumberSlide(iterations, difficulty, numberOfKeys)
    local promise = promise:new()

    ---@type KeyDifficultyConfig
    local config = {
        difficulty = difficulty,
        numberOfKeys = numberOfKeys,
    }

    local result = StartGame(GameTypes.NumberSlide, iterations, config)
    promise:resolve(result)

    return Citizen.Await(promise)
end
exports("NumberSlide", NumberSlide)