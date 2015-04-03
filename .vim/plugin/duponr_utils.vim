" Misc vim helper functions

:function MyLoop(n)
:   for i in range(1, a:n)
:       echo "Looping... i: " i
:   endfor
:endfunction

:function CVSLog()
:   let s:filename = expand('%:p')
:   let s:cvs_log = system("cvs log " .  s:filename)
:   echo "CVS log:\n"
:   echo s:cvs_log
:endfunction


