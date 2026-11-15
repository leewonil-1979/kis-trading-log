#!/bin/bash
set -e
mkdir -p ~/fp && cd ~/fp
curl -sSfL -o site.tgz "https://raw.githubusercontent.com/leewonil-1979/kis-trading-log/family-planner-tmp/site.tgz?t=$(date +%s)"
tar xzf site.tgz
firebase deploy --only hosting --project family-planner-ca48a --non-interactive 2>&1 | tail -3
echo DEPLOY_END
