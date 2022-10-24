#!/bin/bash

source _utils.sh

# ------------------------------------------------------------------------------

e_pending "Testing messaging"

e_pending "e_pending"
e_failure "e_failure"
e_success "e_success"
e_settled "e_settled"

e_pending "Testing verifications"

test_command "ls"
test_brew "python"
test_path "Downloads"
test_app "Safari"

e_pending "Testing user input"

get_consent "get_consent"
if has_consent; then
  e_success "has_consent"
else
  e_failure "has_consent"
fi

e_settled "Tests complete!"
