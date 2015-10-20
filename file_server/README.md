```
    $ erl
      Eshell V7.1  (abort with ^G)
      1> c(afile_server). 
      {ok,afile_server}
      2> 
      2> PidServer = afile_server:start("."). 
      <0.41.0>
      3> 
      3> %send a message to require the operation 
      3> PidServer ! {self(), list_dir}.         
      {<0.34.0>,list_dir}
      4> 
      4> %this process has a msg in its queue, so receve it
      4> receive Msg -> Msg end. 
      {<0.41.0>,{ok,["afile_server.beam","afile_server.erl"]}}
      5> 
      5> 
```
