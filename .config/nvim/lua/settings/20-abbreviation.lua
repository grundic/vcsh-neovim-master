-- Abbreviation for easing life.
--
-- Easy edit of files in the same directory.
-- For example, while editing file /some/path/myfile.txt, typing :e %%/ on the
-- command line will expand to  :e /some/path/.
vim.cmd([[
cabbr <expr> %% expand('%:p:h')
]])
