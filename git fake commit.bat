git filter-branch --env-filter '


if [ "$GIT_COMMITTER_EMAIL" = "hujat@live.com" ]; then
    export GIT_COMMITTER_NAME="FMN"
    export GIT_COMMITTER_EMAIL="kevin.dream730@gmail.com"
fi
if [ "$GIT_AUTHOR_EMAIL" = "hujat@live.com" ]; then
    export GIT_AUTHOR_NAME="FMN"
    export GIT_AUTHOR_EMAIL="kevin.dream730@gmail.com"
fi
' --tag-name-filter cat -- --branches --tags