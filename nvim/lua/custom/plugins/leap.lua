
return {
    {
        "ggandor/leap.nvim",
        config = function()
            require('leap').create_default_mappings()
        end

        -- TUTORIAL:
        -- s = forward
        -- S = backward
        --
        -- Enter 2 chars
        --
        -- space or tab to go forward back
    }
}

