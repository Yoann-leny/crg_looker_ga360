connection: "@{CONNECTION_NAME}"

# include all the views
include: "/views/**/*"
include: "/explores/**/*"

# include all the dashboards
#include: "*.dashboard"

explore: dj_ga_sessions {
  label: "GA 360 Sessions"
  extends: [ga_sessions_block]
}
