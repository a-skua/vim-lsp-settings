augroup vimlsp_settings_gopls
  au!
  autocmd User lsp_setup ++once call lsp#register_server({
      \ 'name': 'gopls',
      \ 'cmd': {server_info->lsp_settings#get('gopls', 'cmd', [lsp_settings#exec_path('gopls')])},
      \ 'initialization_options': lsp_settings#get('gopls', 'initialization_options', {"diagnostics": "true"}),
      \ 'root_uri':{server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), ['.git/', 'go.mod']))},
      \ 'whitelist': lsp_settings#get('gopls', 'whitelist', ['go']),
      \ 'blacklist': lsp_settings#get('gopls', 'blacklist', []),
      \ 'config': lsp_settings#get('gopls', 'config', {}),
      \ 'workspace_config': lsp_settings#get('gopls', 'workspace_config', {}),
      \ })
augroup END
