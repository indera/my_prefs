# my_prefs

Things too good to lose :)

# Todo

Consider switching to [YADM](https://yadm.io/docs/getting_started)

See a list of tools https://dotfiles.github.io/utilities/
See example repo with configs git@github.com:sheharyarn/dotfiles.git

# Installation

Minimal example:

```
    ln -s ~/git/my_prefs/.zshrc ~/.zshrc
    ln -s ~/git/my_prefs/aliases ~/aliases
```

# Personal ssh key

For a personal github account use a `includeIf` statement
to reference the `.gitconfig-personal` file
and change the ~/.ssh/config file to use a dedicated domain

```
Host github.com-personal
	HostName github.com
	User git
	IdentityFile ~/.ssh/id_ed25519_personal
```

Note: the repository file .git/config needs to be updated to match the `github.com-personal` domain
