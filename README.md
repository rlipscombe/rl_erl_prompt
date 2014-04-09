# rl_erl_prompt

It turns out that you can replace the prompt in the Erlang shell. See
http://www.erlang.org/doc/man/shell.html#prompt_func-1.

I've taken advantage of this to display the current Pid in the prompt.

On top of that: colours! **Which are broken; see [#1](https://github.com/rlipscombe/rl_erl_prompt/issues/1)**

## Installation

Compile it:

    mkdir -p ~/ebin
    erlc -o ~/ebin rl_prompt.erl

Add the following to your ~/.erlang file:

    code:add_patha(filename:join(os:getenv("HOME"), "ebin")).
    shell:prompt_func({rl_erl_prompt, prompt_func}).

Or you could just use `example.erlang`.
