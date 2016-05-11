#!/bin/bash

set -ex

# Install pbench from internal repo (not avail outside ATM)
sudo -i wget -O /etc/yum.repos.d/pbench.repo http://pbench.perf.lab.eng.bos.redhat.com/repo/yum.repos.d/pbench.repo
sudo -i dnf install pbench-agent-internal

# verify installation
rpm -ql pbench-agent-internal

# register default pbench tools
sudo -i bash
pbench-register-tool-set
