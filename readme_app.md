# Get all programs installed into the Applications folder

Most of them are default (which you don't have to install on the new computer)

Some are installed via brew (should be fixed by brew)

But there might be one that you will need, and isn't installed via osx or brew....

(living on the edge probably)

```bash
ls /Applications > applications_list.txt
# possible to get all apps installed on computer
sudo find / -iname *.app > applications_all_list.txt
```
