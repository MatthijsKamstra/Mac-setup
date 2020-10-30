# Fonts

```
EXPORT_FOLDER=export_don_t_upload

# create folder (if needed)
mkdir -p ${EXPORT_FOLDER}

echo '├── Fonts'
mkdir -p ${EXPORT_FOLDER}/fonts
# open ~/Library/Fonts
# copy content
cp -r ~/Library/Fonts/ ${EXPORT_FOLDER}/fonts
# create instructions
touch ${EXPORT_FOLDER}/fonts/__delete__this__file.txt
echo "~/Library/Fonts" > ${EXPORT_FOLDER}/fonts/__delete__this__file.txt
# zip it because we can
zip -r ${EXPORT_FOLDER}/fonts.zip ${EXPORT_FOLDER}/fonts
```

## install fonts

mono developers fonts

```
sh _font.sh
```

```
brew search "/font-/"
brew search "/font-/" > brew_fonts_install.txt
```
