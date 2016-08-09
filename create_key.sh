#!/bin/bash

set -e

./clear_key.sh

gpg --gen-key --batch ./keys/gen-key-script
gpg --no-default-keyring --secret-keyring ./keys/admin.sec --keyring ./keys/admin.pub --export-secret-key --armor >keys/admin.pem
