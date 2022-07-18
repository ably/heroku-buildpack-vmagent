# The version of vmagent to install, check https://github.com/VictoriaMetrics/VictoriaMetrics/releases
if [ -f $ENV_DIR/VMAGENT_VERSION ]; then
  VMAGENT_VERSION=$(cat $ENV_DIR/VMAGENT_VERSION)
fi
VMAGENT_VERSION="${VMAGENT_VERSION:-v1.79.0}"

# The SHA256 hash of the "vmagent-prod" binary extracted from the vmutils archive.
#
# The value can be found in the released vmutils checksum file, for example in:
# https://github.com/VictoriaMetrics/VictoriaMetrics/releases/download/v1.79.0/vmutils-linux-arm64-v1.79.0_checksums.txt
if [ -f $ENV_DIR/VMAGENT_SHA256 ]; then
  VMAGENT_SHA256=$(cat $ENV_DIR/VMAGENT_SHA256)
fi
VMAGENT_SHA256="${VMAGENT_SHA256:-bedd743eb4ceb8be920fa8124cf7e060981e614203a84cf1b5a31a717aa4b8df}"
