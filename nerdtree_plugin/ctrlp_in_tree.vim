if exists('g:loaded_nerdtree_ctrlp_in_tree')
    finish
endif
let g:loaded_nerdtree_ctrlp_in_tree = 1

function! g:NERDTREEOpenCtrlPInRoot()
	let l:root = b:NERDTree.root.path.str()
	let l:ctrlp_invocation = g:ctrlp_cmd . ' ' . l:root
	exec l:ctrlp_invocation
endfun

function! s:bindCtrlPInNERDTree()
	let l:map_invocation = 'nnoremap <buffer> ' . g:ctrlp_map . ' :call g:NERDTREEOpenCtrlPInRoot()<CR>'
	exec l:map_invocation
endfun

autocmd FileType nerdtree call <SID>bindCtrlPInNERDTree()

