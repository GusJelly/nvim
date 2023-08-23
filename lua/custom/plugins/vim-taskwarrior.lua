return {
  'blindFS/vim-taskwarrior',
  init = function()
    vim.g.task_rc_override = 'rc.defaultwidth=0'
    vim.g.task_rc_override = 'rc.defaultheight=0'
  end
}
