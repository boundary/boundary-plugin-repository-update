# Boundary Repository Update Plugin

The Boundary Repository Update Core Plugin is a dummy plugin for testing changing the repository source for a sub-module in the graphdat/contrib repository

## Prerequisites

### Supported OS

|     OS    | Linux | Windows | SmartOS | OS X |
|:----------|:-----:|:-------:|:-------:|:----:|
| Supported |   v   |    v    |    v    |  v   |

#### Boundary Meter Versions V4.0 or later

- To install new meter go to Settings->Installation or [see instructons|https://help.boundary.com/hc/en-us/sections/200634331-Installation]. 
- To upgrade the meter to the latest version - [see instructons|https://help.boundary.com/hc/en-us/articles/201573102-Upgrading-the-Boundary-Meter].


|  Runtime | node.js | Python | Java |
|:---------|:-------:|:------:|:----:|
| Required |    +    |        |      |

- [How to install node.js?](https://help.boundary.com/hc/articles/202360701)

### Plugin Setup

None

#### Plugin Configuration Fields

|Field Name       |Description                                                                        |
|:----------------|:----------------------------------------------------------------------------------|
|Poll Interval    |How often (in milliseconds) to poll the system for metrics (default: 1000).        |
|Source           |The Source to display in the legend.  It will default to the hostname of the server|

### Metrics Collected

|Metric Name               |Description                      |
|:-------------------------|:--------------------------------|
|Boundary Repository Update|Boundary Repository Update metric|
