# Source

https://github.com/pnpm/pnpm/issues/5883

> pnpm add -g fails on no global bin dir


```
mkdir -p ~/.pnpm/store
export PNPM_HOME=~/.pnpm/store
pnpm setup
source ~/.zshrc
```
