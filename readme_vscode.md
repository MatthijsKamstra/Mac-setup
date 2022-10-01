# syncing up vscode

Install : https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync

the you don't have to do anything




## backing up vscode by hand

Do this by hand

Get list of all extensions

```bash
code --list-extensions
```

write that list to a file

```bash
code --list-extensions >> vs_code_extensions_list.txt
```

Install all

```bash
cat vs_code_extensions_list.txt | xargs -n 1 code --install-extension
```

Uninstall all

```bash
code --list-extensions | xargs -n 1 code --uninstall-extension
```
