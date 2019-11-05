#!/usr/bin/env python3

import iterm2
import sys

theme = "Dark"
if len(sys.argv) >= 2:
    theme = sys.argv[1]

async def main(connection):

    # change theme for all windows
    app = await iterm2.async_get_app(connection)
    # Query for the list of profiles so we can search by name. This returns a
    # subset of the full profiles so it's fast.
    partialProfiles = await iterm2.PartialProfile.async_query(connection)
    # Iterate over each partial profile
    for partial in partialProfiles:
        if partial.name == theme:
            # This is the one we're looking for. Change the current session's
            # profile.
            full = await partial.async_get_full_profile()
            for window in app.windows:
                await window.current_tab.current_session.async_set_profile(full)

    # set this theme as default theme
    all_profiles = await iterm2.PartialProfile.async_query(connection)
    for profile in all_profiles:
        if profile.name == theme:
            await profile.async_make_default()
            return

iterm2.run_until_complete(main)
