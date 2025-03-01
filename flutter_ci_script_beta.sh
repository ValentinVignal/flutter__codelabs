#!/usr/bin/env bash

set -e -o pipefail

DIR="${BASH_SOURCE%/*}"
source "$DIR/flutter_ci_script_shared.sh"

declare -a CODELABS=(
  "adaptive_app"
  "animated-responsive-layout"
  # TODO(DomesticMouse): Sort directive sections alphabetically.
  # "boring_to_beautiful"
  "cupertino_store"
  "dart-patterns-and-records"
  "dartpad_codelabs"
  "deeplink_cookbook"
  # TODO(DomesticMouse): Windows is not happy
  # "ffigen_codelab"
  "firebase-auth-flutterfire-ui"
  "firebase-emulator-suite"
  "firebase-get-to-know-flutter"
  # TODO(DomesticMouse): Sort directive sections alphabetically.
  # "flame-building-doodle-dash"
  "github-client"
  "google-maps-in-flutter"
  "haiku_generator"
  "in_app_purchases"
  "namer"
  "next-gen-ui"
  "pesto_flutter"
  "star_counter"
  "testing_codelab"
  "tfagents-flutter"
  "tfrs-flutter"
  "tfserving-flutter"
  "tooling"
  "webview_flutter"
  )

ci_codelabs "beta" "${CODELABS[@]}"

echo "== END OF TESTS"
