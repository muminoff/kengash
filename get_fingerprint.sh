#!/bin/bash

set -e

gpg --no-default-keyring --secret-keyring ./keys/admin.sec --keyring ./keys/admin.pub --list-secret-keys --fingerprint |grep Key |awk '{print $4$5$6$7$8$9$10$11$12$13}'
