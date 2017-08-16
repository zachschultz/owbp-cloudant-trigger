#!/bin/sh

# Vars
runtime_token="{{ runtime }}"
runtime=$RUNTIME
runtime_extension_token="{{ runtime_extension }}"
case "${runtime}" in
  "python") runtime_extension="py"
  ;;
  "swift") runtime_extension="swift"
  ;;
  "php") runtime_extension="php"
  ;;
  "node") runtime_extension="js"
  ;;
esac

echo ${runtime_token} = ${runtime}
echo ${runtime_extension_token} = ${runtime_extension}

# Find and replace
sed -e "s/${runtime_token}/${runtime}/g" \
    -e "s/${runtime_extension_token}/${runtime_extension}/g" \
    < manifest-template.yaml \
    > manifest.yaml
