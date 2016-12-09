#!/bin/bash
set -x
set -e
export HUB_CONFIG="$PWD/hub_config"
echo "github.com:" > $HUB_CONFIG
echo "- user: $CIRCLE_PROJECT_USERNAME" >> $HUB_CONFIG
echo "  oauth_token: $GITHUB_ACCESS_TOKEN" >> $HUB_CONFIG
hub release create -p -a $APP_DIR/$APPNAME.ipa -m "Build: $CIRCLE_BUILD_NUM" "v`date '+%Y%m%d%H%M%S'`"
