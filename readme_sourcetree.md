# sourcetree

You'll want to backup

`~/Library/Application Support/SourceTree/browser.plist` and
`~/Library/Application Support/SourceTree/hostingservices.plist`

firstly. This will restore the bookmarks and the hosting services in your hosting list in SourceTree.

Secondly, you'll want to backup all your repositories and restore them to the exact same location afterwards. Even the username of the user needs to be the same as we use absolute paths. For example if it was /Users/Steven/Documents/Repositories/ and there was a load of repositories in there, then that's where they'll need to go afterwards.

If you use SSH keys then you'd need to the contents of `~/.ssh/` also.

For things in the Keychain, you can export/import keys but not passwords. Just hit Cmd+Space and type "Keychain Access" and take a look at what you might need. For HTTPS you may need to re-enter and remember passwords for them to be put back in the keychain when you restore everything.

Hope that helps
