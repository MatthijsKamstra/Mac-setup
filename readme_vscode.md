# synicing up vscode

Install : https://marketplace.visualstudio.com/items?itemName=Shan.code-settings-sync

## backing up vscode

Do this by hand

Get list of all extensions

```
code --list-extensions
```

write that list to a file

```
code --list-extensions >> vs_code_extensions_list.txt
```

Install all

```
cat vs_code_extensions_list.txt | xargs -n 1 code --install-extension
```

Uninstall all

```
code --list-extensions | xargs -n 1 code --uninstall-extension
```
