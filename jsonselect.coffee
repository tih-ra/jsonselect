#
# $.jsonSelect utility
#
# Searches arbitrary JSON for a key and returns an array of all matches.
# Intended for use with jQuery 1.4.2
#
# Copyright (c) 2011 Andriy Bazyuta
# www.danconnor.com
#
# Licensed under the MIT:
#   http://www.opensource.org/licenses/mit-license.php
#

$.extend $,
  jsonSelect: (json, key) ->
    found = []
    $.each json, (k, v) ->
      found.push v  if k is key
      if typeof (v) is "string"
        true
      else if $.isArray(v) or $.isPlainObject(v)
        r = $.jsonSelect(v, key)
        found = found.concat(r)  if r.length > 0

    hits
