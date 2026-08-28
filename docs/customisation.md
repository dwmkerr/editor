# Customisation

## Machine-specific setup

`dispatch.sh` needs whatever your machine uses to reach a model, such as an API
key. That setup does not belong in the repo, so the script sources the first of
these files that exists:

1. `$EDITOR_DISPATCH_LOCAL`, if set
2. `dispatch.local.sh`, next to `dispatch.sh`
3. `~/.config/editor/dispatch.local.sh`

Use the third when the skill is installed globally, since `npx skills` copies
the skill into the agent's directory and a file next to a checkout will not
travel with it.

```sh
mkdir -p ~/.config/editor
cat > ~/.config/editor/dispatch.local.sh <<'SETUP'
#!/usr/bin/env bash
export AI_GATEWAY_API_KEY="..."
SETUP
```

The file is sourced, not executed, so exports reach the model command. Anything
alongside a checkout is gitignored.

## Models and harnesses

The `case` block in `dispatch.sh` maps an alias to a command. Add a model by
adding a branch:

```sh
sonnet)
  claude -p --model sonnet < "$prompt_file"
  ;;
```

To use a different harness, replace the command. The rest of the skill only
knows about the alias and the prompt file.
