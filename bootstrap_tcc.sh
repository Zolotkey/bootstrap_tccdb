#!/bin/bash

if [[ "$3" == "/" ]] ; then
    target=""
else
    target="$3"
fi

### Enable Screensharing via Bootstrappr by giving TCC.db the correct lines as if done by System Preferences GUI 

chroot "${3}" sqlite3 "${3}/Library/Application Support/com.apple.TCC/TCC.db" "INSERT INTO \"main\".\"access\" (\"service\", \"client\", \"client_type\", \"allowed\", \"prompt_count\", \"csreq\", \"policy_id\", \"indirect_object_identifier_type\", \"indirect_object_identifier\", \"indirect_object_code_identity\", \"flags\", \"last_modified\") VALUES ('kTCCServicePostEvent', 'com.apple.screensharing.agent', '0', '1', '1', '', '', '', 'UNUSED', '', '0', '1559607267');"
chroot "${3}" sqlite3 "${3}/Library/Application Support/com.apple.TCC/TCC.db" "INSERT INTO \"main\".\"access\" (\"service\", \"client\", \"client_type\", \"allowed\", \"prompt_count\", \"csreq\", \"policy_id\", \"indirect_object_identifier_type\", \"indirect_object_identifier\", \"indirect_object_code_identity\", \"flags\", \"last_modified\") VALUES ('kTCCServiceScreenCapture', 'com.apple.screensharing.agent', '0', '1', '1', '', '', '', 'UNUSED', '', '0', '1559607267');"
