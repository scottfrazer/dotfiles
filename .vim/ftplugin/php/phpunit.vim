" Use nmap, not nnoremap, since we do want to use an existing mapping 

if exists("g:loaded_rununittest") 
  finish
endif
" let g:loaded_rununittest = 1

command! Test :call RunAllTests() 
map <silent> <Leader>t :call RunUnitTest()<CR>
map <silent> <Leader>f :call RunTestFilter()<CR>

let g:bsdunitCommand = "/home/sfrazer/sites/framework/test/bsdunit"


function! RunAllTests()

    execute "!".g:bsdunitCommand." --skip-db --colors"

endfunction

function! InTestFile()
    let curfile = expand("%")

    return curfile =~ '.*Test.php$'
endfunction

function! RunTestFilter()
    let inTestFile = InTestFile()

    if inTestFile
        echo "In test file"
        let curFuncLine = search('function\s\+\w\+(', 'bcnW')

        let filter = substitute(getline(curFuncLine), '^.*function\s\+\([^()]*\)(.*$', '\1', 'g')

        mark F

        let cur_file = expand('%')
        let g:testFilterCommand = g:bsdunitCommand . " --skip-db --colors --filter=" . filter  . " " . cur_file
    endif

    call RunTestCommand(g:testFilterCommand)
endfunction

function! RunTestCommand(command)

    execute "!(echo -e \"running Test Command: \\n\"" . a:command . ")  && " . a:command

endfunction

function! RunUnitTest() 
    " Save b register 

    let cur_file = expand('%')
    if !exists("s:current_unit_test_file")  || (cur_file =~ '.*Test.php$')
        let s:current_unit_test_file = cur_file
        let basename = substitute(expand('%') , '.*\/\(.*\).php$', '\1', "g") 

        let class_def = search('class.*extends', 'wn')

        let class_def = substitute(getline(class_def), '.*class \([^ ]*\) extends.*$', '\1', 'g')

        let s:current_unit_test = class_def

    endif

    if(exists("s:current_unit_test_file") )
        let command =  g:bsdunitCommand . " --skip-db --colors " . s:current_unit_test_file
        execute "!(echo -e \"running test: ".s:current_unit_test." \\n\\n\")  && " command
    else
        echo "No test Found"
    endif
endfunction
