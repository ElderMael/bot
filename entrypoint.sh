#!/usr/bin/env bash

echo "Configuring Atomist with workspace: ${ATOMIST_WORKSPACE_ID}"
atomist config --api-key "${ATOMIST_API_KEY}" --workspace-id "${ATOMIST_WORKSPACE_ID}"

echo "Starting SDM"
atomist start "$@"
