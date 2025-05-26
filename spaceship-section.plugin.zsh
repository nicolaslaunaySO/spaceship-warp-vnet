#
# warp-cli
#

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_WARP_VNET_SHOW="${SPACESHIP_WARP_VNET_SHOW=true}"
SPACESHIP_WARP_VNET_ASYNC="${SPACESHIP_WARP_VNET_ASYNC=true}"
SPACESHIP_WARP_VNET_PREFIX="${SPACESHIP_WARP_VNET_PREFIX="via "}"
SPACESHIP_WARP_VNET_SUFFIX="${SPACESHIP_WARP_VNET_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_WARP_VNET_SYMBOL="${SPACESHIP_WARP_VNET_SYMBOL="⛅️"}"
SPACESHIP_WARP_VNET_COLOR="${SPACESHIP_WARP_VNET_COLOR="yellow"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show warp-cli status
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_warp_vnet() {
  # If SPACESHIP_WARP_VNET_SHOW is false, don't show warp-cli section
  [[ $SPACESHIP_WARP_VNET_SHOW == false ]] && return

  # Check if warp-cli command is available for execution
  spaceship::exists warp-cli || return

  local current_id=$(warp-cli vnet | awk -F': ' '/Currently selected:/ { print $2 }')
  # Display the vnet name, or "No vnet" if no vnet is selected
  local vnet_name=$(warp-cli vnet | awk -v id="$current_id" 'BEGIN {found=0; name=""}
      /^  ID:/ {this_id=$2; if (this_id==id) found=1; else found=0}
      /^  Name:/ && found==1 {name=$2; exit}
      END {print name}')

  [[ -z "$vnet_name" ]] && vnet_name="No vnet"

  # Display warp-cli section
  # spaceship::section utility composes sections. Flags are optional
  spaceship::section::v4 \
    --color "$SPACESHIP_WARP_VNET_COLOR" \
    --prefix "$SPACESHIP_WARP_VNET_PREFIX" \
    --suffix "$SPACESHIP_WARP_VNET_SUFFIX" \
    --symbol "$SPACESHIP_WARP_VNET_SYMBOL" \
    "$vnet_name"
}
