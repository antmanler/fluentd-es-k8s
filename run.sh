#!/bin/bash

# Copyright 2014 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# listen or wait until elasticsearch got connected
echo -e "\033[1;36mWaiting and trying to connect to elasticsearch\033[0m"
while ! nc -q 1 elasticsearch.rest.local 9200 </dev/null 2>&1; do
  echo -e "  \033[1;33mConnecting failed, retry after 30s\033[0m"
  sleep 30
done

echo -e "\033[1;36mStarting Fluentd\033[0m"
/usr/sbin/td-agent -qq "$@"
