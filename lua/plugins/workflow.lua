-- configure the workflow improvement plugins

return {
    {
        "m4xshen/hardtime.nvim",
        opts = {
            -- Make it so Hardtime doesn't actually stop you from doing 
            -- anything, just gives you a hint that you're doing it wrong
            restriction_mode = "hint",
        }
    },
}