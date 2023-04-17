#!/bin/bash

declare -a common=(
  "date (Y-m-d H:i:s)"
  "user_ip (IPv4)"
  "country (3-letter ISO)"
  "idlanguage (int)"
  "site_hostname (varchar)"
  "idadvertiser (int)"
  "idpublisher (int)"
  "idsite (int)"
  "idzone (int)"
  "idcategory (int)"
  "idcampaign (int)"
  "idvariation (int)"
  "idos (int)"
  "idbrowser (int)"
  "iddevice (int)"
  "idcarrier (int)"
  "idisp (int)"
  "sub (int)"
  "value (float)"
  "publisher_rate (int)"
  "publisher_currency (3-letter ISO)"
  "campaign_currency (3-letter ISO)"
  "exchange_to_publisher (float)"
  "exchange_to_network (float)"
)

declare -a impressions=(
  "ad_type (int)"
  "ad_format (varchar)"
  "idnetwork (int)"
  "country_original (3-letter ISO)"
  "http_x_forwarded_for (IPv4)"
  "idproduct_category (int)"
  "pricing_model (int)"
  "https (int)"
  "screen_resolution (varchar)"
  "user_id (varchar)"
  "url_hash (varchar)"
  "impression_status (int)"
  "impression_invalid_reason (int)"
  "referer_site_hostname (varchar)"
  "adblock (int)"
  "idoffer (int)"
  "idlanding_page (int)"
  "execution_time (float)"
  "position (int)"
  "iddatacenter (int)"
  "idcarrier_source (int)"
  "noscript (int)"
  "incognito_mode (int)"
  "test_mode (int)"
  "region_geoname_id (int)"
  "is_trusted_proxy (int)"
  "idpartner (int)"
  "city_geoname_id (int)"
  "netacuity_proxy_type (varchar)"
  "netacuity_proxy_description (varchar)"
  "adblock_ver (varchar)"
  "impression_all_invalid_reasons (bigint)"
  "container_resolution (varchar)"
  "sub2 (int)"
  "sub3 (int)"
  "script_type (string)"
  "script_name (string)"
  "script_ver (string)"
  "browser_ver (int)"
  "vr (int)"
  "is_internal (int)"
  "is_no_funds (int) (with name in PHP: no_funds)"
  "idresponsive_layout (int)"
  "idmultizone (int)"
  "email_isp (int)"
  "script_detail (int)"
  "script_version (int)"
  "refresh_iteration (int)"
)

declare -a clicks=(
  "click_status (int, 0 or 1)"
  "invalid_reason (varchar)"
  "ad_type (int)"
  "ad_format (varchar)"
  "idnetwork (int)"
  "country_original (3-letter ISO)"
  "http_x_forwarded_for (IPv4)"
  "idproduct_category (int)"
  "pricing_model (int)"
  "https (int)"
  "screen_resolution (varchar)"
  "user_id (varchar)"
  "url_hash (varchar)"
  "impression_status (int)"
  "impression_invalid_reason (int)"
  "clickx (int)"
  "clicky (int)"
  "referer_site_hostname (varchar)"
  "adblock (int)"
  "idoffer (int)"
  "idlanding_page (int)"
  "position (int)"
  "iddatacenter (int),"
  "idcarrier_source (int)"
  "noscript (int)"
  "incognito_mode (int)"
  "test_mode (int)"
  "region_geoname_id (int)"
  "is_trusted_proxy (int)"
  "idpartner (int)"
  "city_geoname_id (int)"
  "netacuity_proxy_type (varchar)"
  "netacuity_proxy_description (varchar)"
  "adblock_ver (varchar)"
  "impression_all_invalid_reasons (bigint)"
  "click_all_invalid_reasons (bigint)"
  "email_status (int)"
  "sub2 (int)"
  "sub3 (int)"
  "script_type (string)"
  "script_name (string)"
  "script_ver (string)"
  "browser_ver (int)"
  "vr (int)"
  "is_internal (int)"
  "is_no_funds (int) (with name in PHP: no_funds)"
  "idresponsive_layout (int)"
  "idmultizone (int)"
  "email_isp (int)"
  "script_detail (int) "
  "script_version (int)"
  "refresh_iteration (int)"
)

declare -a goals=(
  "idgoal (varchar)"
  "ad_type (int)"
  "ad_format (varchar)"
  "idnetwork (int)"
  "country_original (3-letter ISO)"
  "http_x_forwarded_for (IPv4)"
  "idproduct_category (int)"
  "pricing_model (int)"
  "https (int)"
  "screen_resolution (varchar)"
  "user_id (varchar)"
  "url_hash (varchar)"
  "impression_status (int)"
  "impression_invalid_reason (int)"
  "referer_site_hostname (varchar)"
  "adblock (int)"
  "idoffer (int)"
  "idlanding_page (int)"
  "position (int)"
  "iddatacenter (int),"
  "idcarrier_source (int)"
  "noscript (int)"
  "incognito_mode (int)"
  "test_mode (int)"
  "region_geoname_id (int)"
  "is_trusted_proxy (int)"
  "idpartner (int)"
  "city_geoname_id (int)"
  "netacuity_proxy_type (varchar)"
  "netacuity_proxy_description (varchar)"
  "adblock_ver (varchar)"
  "impression_all_invalid_reasons (bigint)"
  "sub2 (int)"
  "sub3 (int)"
  "script_type (string)"
  "script_name (string)"
  "script_ver (string)"
  "browser_ver (int)"
  "vr (int)"
  "is_internal (int)"
  "is_no_funds (int) (with name in PHP: no_funds)"
  "idresponsive_layout (int)"
  "idmultizone (int)"
  "email_isp (int)"
  "script_detail (int)"
  "script_version (int)"
  "conversion_value_eur (float)"
  "conversion_value_usd (float)"
)

declare -a video_views=(
  "ad_type (int)"
  "ad_format (varchar)"
  "idnetwork (int)"
  "country_original (3-letter ISO)"
  "http_x_forwarded_for (IPv4)"
  "idproduct_category (int)"
  "pricing_model (int)"
  "https (int)"
  "screen_resolution (varchar)"
  "user_id (varchar)"
  "url_hash (varchar)"
  "impression_status (int)"
  "impression_invalid_reason (int)"
  "referer_site_hostname (varchar)"
  "adblock (int)"
  "idoffer (int)"
  "idlanding_page (int)"
  "video_event (int) - 2: (10 seconds being watched)"
  "errorcode (int)"
  "iddatacenter (int)"
  "idcarrier_source (int)"
  "noscript (int)"
  "incognito_mode (int)"
  "test_mode (int)"
  "region_geoname_id (int)"
  "is_trusted_proxy (int)"
  "idpartner (int)"
  "city_geoname_id (int)"
  "netacuity_proxy_type (varchar)"
  "netacuity_proxy_description (varchar)"
  "adblock_ver (varchar)"
  "impression_all_invalid_reasons (bigint)"
  "sub2 (int)"
  "sub3 (int)"
  "script_type (string)"
  "script_name (string)"
  "script_ver (string)"
  "browser_ver (int)"
  "vr (int)"
  "is_internal (int)"
  "is_no_funds (int) (with name in PHP: no_funds)"
  "idresponsive_layout (int)"
  "idmultizone (int)"
  "email_isp (int)"
  "script_detail (int)"
  "script_version (int)"
)

declare -a video_hits=(
  "ad_type (int)"
  "ad_format (varchar)"
  "idnetwork (int)"
  "country_original (3-letter ISO)"
  "http_x_forwarded_for (IPv4)"
  "idproduct_category (int)"
  "pricing_model (int)"
  "https (int)"
  "screen_resolution (varchar)"
  "user_id (varchar)"
  "url_hash (varchar)"
  "impression_status (int)"
  "impression_invalid_reason (int)"
  "referer_site_hostname (varchar)"
  "adblock (int)"
  "idoffer (int)"
  "idlanding_page (int)"
  "execution_time (float)"
  "iddatacenter (int)"
  "idcarrier_source (int)"
  "noscript (int)"
  "incognito_mode (int)"
  "test_mode (int)"
  "region_geoname_id (int)"
  "is_trusted_proxy (int)"
  "idpartner (int)"
  "city_geoname_id (int)"
  "netacuity_proxy_type (varchar)"
  "netacuity_proxy_description (varchar)"
  "adblock_ver (varchar)"
  "impression_all_invalid_reasons (bigint)"
  "sub2 (int)"
  "sub3 (int)"
  "script_type (string)"
  "script_name (string)"
  "script_ver (string)"
  "browser_ver (int)"
  "vr (int)"
  "is_internal (int)"
  "is_no_funds (int) (with name in PHP: no_funds)"
  "idresponsive_layout (int)"
  "idmultizone (int)"
  "email_isp (int)"
  "script_detail (int)"
  "script_version (int)"
)

declare -a rtb=(
  "ad_type (int)"
  "ad_format (varchar)"
  "idnetwork (int)"
  "country_original (3-letter ISO)"
  "http_x_forwarded_for (IPv4)"
  "idproduct_category (int)"
  "pricing_model (int)"
  "https (int)"
  "screen_resolution (varchar)"
  "user_id (varchar)"
  "url_hash (varchar)"
  "referer_site_hostname (varchar)"
  "adblock (int)"
  "idoffer (int)"
  "idlanding_page (int)"
  "imp_id (int)"
  "bid_id (varchar)"
  "http_code (int)"
  "rtb_total_time (int)"
  "rtb_content_size (float)"
  "bid_status (varchar)"
  "error_reason (varchar)"
  "rtb_query_status (int)"
  "rtb_value (float)"
  "iddatacenter (int)"
  "idcarrier_source (int)"
  "rtb_request_type (int) (1 - advertiser; 2 - publisher)"
  "noscript (int)"
  "incognito_mode (int)"
  "test_mode (int) (Always 0 for RTB)"
  "region_geoname_id (int)"
  "is_trusted_proxy (int)"
  "idpartner (int)"
  "city_geoname_id (int)"
  "netacuity_proxy_type (varchar)"
  "netacuity_proxy_description (varchar)"
  "adblock_ver (varchar)"
  "impression_all_invalid_reasons (bigint)  - this field is not used, so will be set to 0 in the log"
  "sub2 (int)"
  "sub3 (int)"
  "script_type (string)"
  "script_name (string)"
  "script_ver (string)"
  "browser_ver (int)"
  "vr (int)"
  "is_internal (int)"
  "sampling (int)"
  "is_no_funds (int) (with name in PHP: no_funds)"
  "email_isp (int)"
  "script_detail (int)"
  "script_version (int)"
)

declare -a wpn_events=(
  "ad_type (int)"
  "ad_format (varchar)"
  "idnetwork (int)"
  "country_original (3-letter ISO)"
  "http_x_forwarded_for (IPv4)"
  "idproduct_category (int)"
  "pricing_model (int)"
  "https (int)"
  "screen_resolution (varchar)"
  "user_id (varchar)"
  "url_hash (varchar)"
  "referer_site_hostname (varchar)"
  "adblock (int)"
  "idoffer (int)"
  "idlanding_page (int)"
  "execution_time (float)"
  "position (int)"
  "iddatacenter (int)"
  "idcarrier_source (int)"
  "noscript (int)"
  "incognito_mode (int)"
  "test_mode (int)"
  "region_geoname_id (int)"
  "is_trusted_proxy (int)"
  "idpartner (int)"
  "city_geoname_id (int)"
  "netacuity_proxy_type (varchar)"
  "netacuity_proxy_description (varchar)"
  "adblock_ver (varchar)"
  "container_resolution (varchar)"
  "wpn_event (int)"
  "sub2 (int)"
  "sub3 (int)"
  "script_type (string)"
  "script_name (string)"
  "script_ver (string)"
  "browser_ver (int)"
  "vr (int)"
  "is_internal (int)"
  "is_no_funds (int) (with name in PHP: no_funds)"
  "email_isp (int)"
  "script_detail (int)"
  "script_version (int)"
)

declare -a ad_requests=(
  "ad_type (int)"
  "ad_format (varchar)"
  "idnetwork (int)"
  "country_original (3-letter ISO)"
  "http_x_forwarded_for (IPv4)"
  "idproduct_category (int)"
  "pricing_model (int)"
  "https (int)"
  "screen_resolution (varchar)"
  "user_id (varchar)"
  "url_hash (varchar)"
  "impression_status (int)"
  "impression_invalid_reason (int)"
  "referer_site_hostname (varchar)"
  "adblock (int)"
  "idoffer (int)"
  "idlanding_page (int)"
  "execution_time (float)"
  "position (int)"
  "iddatacenter (int)"
  "idcarrier_source (int)"
  "noscript (int)"
  "incognito_mode (int)"
  "test_mode (int)"
  "region_geoname_id (int)"
  "is_trusted_proxy (int)"
  "idpartner (int)"
  "city_geoname_id (int)"
  "netacuity_proxy_type (varchar)"
  "netacuity_proxy_description (varchar)"
  "adblock_ver (varchar)"
  "impression_all_invalid_reasons (bigint)"
  "container_resolution (varchar)"
  "sub2 (int)"
  "sub3 (int)"
  "script_type (string)"
  "script_name (string)"
  "script_ver (string)"
  "browser_ver (int)"
  "vr (int)"
  "is_internal (int)"
  "sampling (int)"
  "is_no_funds (int) (with name in PHP: no_funds)"
  "email_isp (int)"
  "script_detail (int)"
  "script_version (int)"
  "refresh_iteration (int)"
)

# Read inputs from the command line
fileName="$1"

getOutputFromRemoteMachine() {

  # Insert your own path above
  changeMe="/home/joao/sys-vagrant"

  if [ ! -d "$changeMe" ]; then
    echo "ERROR: Folder $changeMe does not exist."
    exit 1
  fi

  cd "$changeMe"

  # Connect to remote machine and execute commands
  output=$(vagrant ssh web -c "cd /var/exads/data/ad-server/ && tail -n 1 $fileName.log")
  exit_status=$?

  # Print the output case it doesn't contain the delimiter
  if [[ $exit_status -ne 0 ]]; then
    echo "ERROR: Be sure that the .log exists and your remote machine is running"
    exit 1
  fi

  # Removing the spaces at the end of CLI output
  outputFromCLI=$(echo "$output" | sed "s/[[:space:]]*$//")

  IFS='|' read -ra fields <<<"$outputFromCLI"

}

joinArraysAndAssociateAsKeyValue() {
  case "$fileName" in
  "impressions")
    logFile=("${common[@]}" "${impressions[@]}")
    ;;
  "clicks")
    logFile=("${common[@]}" "${clicks[@]}")
    ;;
  "goals")
    logFile=("${common[@]}" "${goals[@]}")
    ;;
  "video_views")
    logFile=("${common[@]}" "${video_views[@]}")
    ;;
  "video_hits")
    logFile=("${common[@]}" "${video_hits[@]}")
    ;;
  "rtb")
    logFile=("${common[@]}" "${rtb[@]}")
    ;;
  "wpn_events")
    logFile=("${common[@]}" "${wpn_events[@]}")
    ;;
  "ad_requests")
    logFile=("${common[@]}" "${ad_requests[@]}")
    ;;
  *) ;;
  esac

  # Associate arrays with keys => values
  for i in "${!fields[@]}"; do
    count[i]=$((i + 1))
    keys+=("${logFile[$i]}")
    values+=("${fields[$i]}")
  done
}

findColumnsMaxLength() {
  first_col_max_length=$(printf '%s\n' "${count[@]}" | awk '{ print length }' | sort -rn | head -1)
  second_col_max_length=$(printf '%s\n' "${keys[@]}" | awk '{ print length }' | sort -rn | head -1)
  third_col_max_length=$(printf '%s\n' "${values[@]}" | awk '{ print length }' | sort -rn | head -1)
}

printTableHeader() {
  printf "+-%-${first_col_max_length}s-+-%-${second_col_max_length}s-+-%-${third_col_max_length}s-+\n" "$(printf '%.0s-' $(seq 1 "$first_col_max_length"))" "$(printf '%.0s-' $(seq 1 "$second_col_max_length"))" "$(printf '%.0s-' $(seq 1 "$third_col_max_length"))"
}

printTable() {
  printTableHeader
  for i in "${!keys[@]}"; do
    printf "| %-${first_col_max_length}s | %-${second_col_max_length}s | %-${third_col_max_length}s |\n" "${count[$i]}" "${keys[$i]}" "${values[$i]}"
    printf "+-%-${first_col_max_length}s-+-%-${second_col_max_length}s-+-%-${third_col_max_length}s-+\n" "$(printf '%.0s-' $(seq 1 "$first_col_max_length"))" "$(printf '%.0s-' $(seq 1 "$second_col_max_length"))" "$(printf '%.0s-' $(seq 1 "$third_col_max_length"))"
  done
}

main() {
  getOutputFromRemoteMachine
  joinArraysAndAssociateAsKeyValue
  findColumnsMaxLength
  printTable
}

main
