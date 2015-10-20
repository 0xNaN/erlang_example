# Hello World with Erlang
compile and running it from the Erlang shell:
```
    $ erl
       Eshell V7.1  (abort with ^G)
       1> c(hello).
       {ok,hello}
       2> hello:start().
       Hello, World!
       ok
       3>
```

compile it from the shell:
```
     $ erlc hello.erl 
     $ erl -noshell -s hello start -s init stop
       Hello, World!
```
