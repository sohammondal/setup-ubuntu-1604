# Source - https://stackoverflow.com/questions/22697688/how-to-cat-eof-a-file-containing-code/22698106
# Source - https://bash.cyberciti.biz/guide/If..else..fi

cat <<EOF > ~/.gitconfig-personal
[user]
name = sohammondal
email = soham.pf.mondal@gmail.com
EOF



cat <<EOF > ~/.gitconfig-work
[user]
name = 
email = 
EOF

cat <<EOF > ~/.gitconfig
[includeIf "gitdir:~/Work/"]
  path = .gitconfig-work

[includeIf "gitdir:~/Personal/"]
  path = .gitconfig-personal
EOF

if mkdir ~/Work
then
    echo 'Office Workspace created.'
else
    echo 'Office Workspace exists.'
fi

if mkdir ~/Personal
then
    echo 'Personal Workspace created.'
else
    echo 'Personal Workspace exists.'
fi