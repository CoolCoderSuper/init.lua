local root = vim.fn.getcwd()
local project_file = root .. '/project.lua'
if vim.fn.filereadable(project_file) == 1 then
    local project = dofile(project_file)
    if project.setup then
        project.setup()
    end
end
