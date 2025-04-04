local root = vim.fn.getcwd()
local project_file = root .. '/project.lua'
if vim.fn.filereadable(project_file) == 1 then
    dofile(project_file)
end
