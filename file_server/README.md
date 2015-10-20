# using the client
```
$erl
    Eshell V7.1  (abort with ^G)
    1> c([afile_server], [afile_client]). 
    {ok,afile_server}
    2> 
    2> [c(Module) || Module <- [afile_server, afile_client]].
    [{ok,afile_server},{ok,afile_client}]
    3> Server = afile_server:start("."). 
    <0.54.0>
    4> 
    4> afile_client:ls(Server).    
    {ok,["afile_client.erl","afile_client.beam","README.md",
        "afile_server.beam","afile_server.erl"]}
    5> 
    5> afile_client:get_file(Server, "afile_client.erl"). 
    {ok,<<"-module(afile_client).\n-export([ls/1, get_file/2]).\n\nls(Server) ->\n    Server ! {self(), list_dir},\n    rece"...>>}
    6> 
    6> afile_client:get_file(Server, "missing").          
    {error,enoent}
    7> 
```

# directly use the server
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
