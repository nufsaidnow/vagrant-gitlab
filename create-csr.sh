#!/usr/bin/env bash
# arg1 CN Common Name
# arg2 O Organization
# arg3 ST State or province
# arg4 C Country (2 characters)

mkdir -p certs/{private,csr,public}
chmod 700 certs/private

openssl genrsa -out certs/private/$1.key 2048
chmod 400 certs/private/$1.key

openssl req -subj "/CN=$1/O=$2/ST=$3/C=$4" \
      -key certs/private/$1.key \
      -new -sha256 -out certs/csr/$1.csr