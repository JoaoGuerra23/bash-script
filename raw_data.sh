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
    "video_event (int) - 2: '10 seconds being watched'"
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

{
   #Jump to sys-vagrant directory
   cd /home/joao/sys-vagrant

   # Connect to remote machine and execute commands
   outputFromCLI=$(vagrant ssh web -c "cd /var/exads/data/ad-server/ && tail -n 1 $fileName.log")

} || {
    exit
}

declare -a keys=()
declare -a values=()
IFS='|' read -ra fields <<< "$outputFromCLI"

# Select the appropriate array based on the outputFromCLI array name
case "$fileName" in
    "impressions")
        impressions=("${common[@]}" "${impressions[@]}")
        for i in "${!fields[@]}"; do
            keys+=("${impressions[$i]}")
            values+=("${fields[$i]}")
        done
        ;;
    "clicks")
        clicks=("${common[@]}" "${clicks[@]}")
        for i in "${!fields[@]}"; do
            keys+=("${clicks[$i]}")
            values+=("${fields[$i]}")
        done
        ;;
    "goals")
        goals=("${common[@]}" "${goals[@]}")
        for i in "${!fields[@]}"; do
            keys+=("${goals[$i]}")
            values+=("${fields[$i]}")
        done
        ;;
    "video_views")
        video_views=("${common[@]}" "${video_views[@]}")
        for i in "${!fields[@]}"; do
            keys+=("${video_views[$i]}")
            values+=("${fields[$i]}")
        done
        ;;
    "video_hits")
        video_hits=("${common[@]}" "${video_hits[@]}")
        for i in "${!fields[@]}"; do
            keys+=("${video_hits[$i]}")
            values+=("${fields[$i]}")
        done
        ;;
    "rtb")
        rtb=("${common[@]}" "${rtb[@]}")
        for i in "${!fields[@]}"; do
            keys+=("${rtb[$i]}")
            values+=("${fields[$i]}")
        done
        ;;
    "wpn_events")
        wpn_events=("${common[@]}" "${wpn_events[@]}")
        for i in "${!fields[@]}"; do
            keys+=("${wpn_events[$i]}")
            values+=("${fields[$i]}")
        done
        ;;
    "ad_requests")
        ad_requests=("${common[@]}" "${ad_requests[@]}")
        for i in "${!fields[@]}"; do
            keys+=("${ad_requests[$i]}")
            values+=("${fields[$i]}")
        done
        ;;
    *)
        echo "Error: Unknown .log file name"
        exit 1
        ;;
esac

# TODO: improve this function
joinArraysAndAssociateAsKeyValue() {
  local join=("${common[@]}" "${fileName[@]}")

  # Associate the fields array with the keys and values arrays
  for i in "${!fields[@]}"; do
    keys+=("${join[$i]}")
    values+=("${fields[$i]}")
  done
}

# Find the maximum length of each column
first_col_max_length=3
second_col_max_length=$(printf '%s\n' "${keys[@]}" | awk '{ print length }' | sort -rn | head -1)
third_col_max_length=$(printf '%s\n' "${values[@]}" | awk '{ print length }' | sort -rn | head -1)

# Print the table header
printf "+-%-${first_col_max_length}s-+-%-${second_col_max_length}s-+-%-${third_col_max_length}s-+\n" "$(printf '%.0s-' $(seq 1 $first_col_max_length))" "$(printf '%.0s-' $(seq 1 "$second_col_max_length"))" "$(printf '%.0s-' $(seq 1 "$third_col_max_length"))"

# Print the table rows
for i in "${!keys[@]}"; do
  printf "| %-${first_col_max_length}s | %-${second_col_max_length}s | %-${third_col_max_length}s |\n" "$((i+1))" "${keys[$i]}" "${values[$i]}"
  printf "+-%-${first_col_max_length}s-+-%-${second_col_max_length}s-+-%-${third_col_max_length}s-+\n" "$(printf '%.0s-' $(seq 1 $first_col_max_length))" "$(printf '%.0s-' $(seq 1 "$second_col_max_length"))" "$(printf '%.0s-' $(seq 1 "$third_col_max_length"))"
done
