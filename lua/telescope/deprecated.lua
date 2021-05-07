
local deprecated = {}

deprecated.picker_window_options = function(opts)
  local messages = {}

  -- Deprecated: PR:823, 2021/05/17
  -- Can be removed in a few weeks.

  if opts.width then
    table.insert(messages, "'opts.width' is no longer valid. Please use 'layout_config.width' instead")
  end

  if opts.height then
    table.insert(messages, "'opts.height' is no longer valid. Please use 'layout_config.height' instead")
  end

  if opts.results_height then
    table.insert(messages, "'opts.results_height' is no longer valid. Please see ':help telescope.changelog-823'")
  end

  if opts.results_width then
    table.insert(messages,
      "'opts.results_width' actually didn't do anything. Please see ':help telescope.changelog-823'"
    )
  end

  if opts.prompt_position then
    table.insert(messages,
      "'opts.prompt_position' is no longer valid. Please use 'layout_config.prompt_position' instead."
    )
  end

  if opts.preview_cutoff then
    table.insert(messages,
      "'opts.preview_cutoff' is no longer valid. Please use 'layout_config.preview_cutoff' instead."
    )
  end

  if #messages > 0 then
    table.insert(messages, 1, "Deprecated window options. Please see ':help telescope.changelog'")
    vim.api.nvim_err_write(table.concat(messages, "\n \n   ") .. "\n \nPress <Enter> to continue\n")
  end
end

return deprecated