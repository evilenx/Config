#!/bin/bash
# Path to the Chromium user data directory
CHROMIUM_DIR="$HOME/Library/Application Support/Chromium"
LOCAL_STATE="$CHROMIUM_DIR/Local State"

# List of experimental flags to enable
FLAGS=(
  "bookmark-bar-ntp@1"
  "custom-ntp"
  "extension-mime-request-handling@2"
  "glic-zero-state-suggestions@2"
  "most-visited-tiles-new-scoring@4"
  "ntp-realbox-contextual-and-trending-suggestions@2"
  "omnibox-autocomplete-filtering@1"
  "omnibox-calc-provider@2"
  "omnibox-domain-suggestions@2"
  "omnibox-dynamic-max-autocomplete@8"
  "omnibox-enterprise-search-aggregator@5"
  "omnibox-max-zero-suggest-matches@13"
  "omnibox-ml-url-scoring@8"
  "omnibox-on-device-tail-suggestions@2"
  "omnibox-rich-autocompletion-promising@7"
  "omnibox-url-suggestions-on-focus@8"
  "omnibox-zero-suggest-in-memory-caching@2"
  "omnibox-zero-suggest-prefetch-debouncing@8"
  "omnibox-zero-suggest-prefetching-on-srp@2"
  "omnibox-zero-suggest-prefetching-on-web@2"
  "omnibox-zero-suggest-prefetching@2"
  "organic-repeatable-queries@6"
  "visited-url-ranking-service-history-visibility-score-filter@2"
)

echo "Looking for the Chromium Local State file..."
if [[ ! -f "$LOCAL_STATE" ]]; then
  echo "Local State file not found at: $LOCAL_STATE"
  echo "Open Chromium once before running this script."
  exit 1
fi

echo "Backing up the current Local State file..."
cp "$LOCAL_STATE" "$LOCAL_STATE.bak"

echo "Injecting flags into Local State..."

# Convert FLAGS array into JSON list
FLAGS_JSON=$(printf '"%s",' "${FLAGS[@]}" | sed 's/,$//')

# Use jq to modify the JSON (jq must be installed)
if command -v jq &> /dev/null; then
  jq ".browser.enabled_labs_experiments = [${FLAGS_JSON}]" "$LOCAL_STATE" > "$LOCAL_STATE.tmp" && mv "$LOCAL_STATE.tmp" "$LOCAL_STATE"
else
  echo "Error: jq is not installed."
  echo "Install it with: brew install jq"
  exit 1
fi

echo "Flags have been successfully restored."
echo "Restart Chromium to apply the changes."


