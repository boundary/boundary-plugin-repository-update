#!/usr/bin/env luvit
-- Copyright 2015 Boundary, Inc.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--    http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

-- Add require statements for built-in libaries we wish to use
local fs = require('fs')
local json = require('json')
local math = require('math')
local os = require('os')
local string = require('string')
local timer = require('timer')

local params = json.parse(fs.readFileSync('param.json'))

-- Source of our metric
local SOURCE = params.source or os.hostname()

-- How often to output a measurement
local POLL_INTERVAL = params.pollInterval

-- Define our function that "samples" our measurement value
function poll()

    -- Generate random number between 0 and 1.0
    local value = string.format("%.2f", math.random(0, 100)/100.0)

    -- Get the current time
    local timestamp = os.time()

    -- Output our measurement record to standard out
    print(string.format("%s %s %s %s", "BOUNDARY_REPOSITORY_UPDATE", value, SOURCE, timestamp))

end

-- Set the timer interval in milli-seconds and call back function poll(). Multiple input configuration
timer.setInterval(POLL_INTERVAL, poll)

