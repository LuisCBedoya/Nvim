require("fidget").setup({
    text = {
        spinner = "grow_vertical", -- animation shown when tasks are ongoing
        done = "✔", -- character shown when all tasks are complete
        commenced = "Started", -- message shown when task starts
        completed = "Completed", -- message shown when task completes
    },
    align = {
        bottom = false, -- align fidgets along bottom edge of buffer
        right = true, -- align fidgets along right edge of buffer
    },
    window = {
        relative = "editor", -- where to anchor, either "win" or "editor"
        blend = 100, -- &winblend for the window
        zindex = nil, -- the zindex value for the window
        border = "none", -- style of border for the fidget window
    },
    fmt = {
        leftpad = true, -- right-justify text in fidget box
        stack_upwards = true, -- list of tasks grows upwards
        max_width = 0, -- maximum width of the fidget box
        -- function to format fidget title
        fidget = function(fidget_name, spinner)
            return string.format("%s %s", spinner, fidget_name)
        end,
        -- function to format each task line
        task = function(task_name, message, percentage)
            if #message > 42 then
                message = string.format("%.39s...", message)
            end
            if #task_name > 42 then
                task_name = string.format("%.39s...", task_name)
            end
            return string.format(
                "%s%s [%s]",
                message,
                percentage and string.format(" (%s%%)", percentage) or "",
                task_name
            )
        end,
    },
})
