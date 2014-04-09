%%% @doc Custom prompt for the Erlang shell. Same as the normal one, but also
%%% displays the shell's pid.
-module(rl_erl_prompt).
-export([prompt_func/1]).

-define(Reset, "\e[0m").
-define(IGreen, "\e[0;92m").
-define(IYellow, "\e[0;93m").
-define(IBlue, "\e[0;94m").
-define(IPurple, "\e[0;95m").
-define(ICyan, "\e[0;96m").
-define(IWhite, "\e[0;97m").

prompt_func([{history, N}]) ->
    prompt_func(self(), node(), N).

prompt_func(Pid, 'nonode@nohost', N) ->
    io_lib:format(?IPurple "~p " ?IWhite "~B> " ?Reset, [Pid, N]);
prompt_func(Pid, Node, N) ->
    io_lib:format(?IPurple "~p " ?IBlue "(~s) " ?IWhite "~B> " ?Reset, [Pid, Node, N]).
