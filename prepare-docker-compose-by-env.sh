#!/usr/bin/env bash

exports=$(python3 -c "import yaml
for k, v in yaml.load(open('global-config.yml', 'r'))['environment']['$TRACY_ENV'].items():
    print('{}=\"{}\"'.format(k, v))")

echo $exports docker-compose \"\$@\" > docker-compose
chmod +x docker-compose
