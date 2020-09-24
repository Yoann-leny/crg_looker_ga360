
include: "/views/**/*.view"
view: ga_sessions {
  extends: [ga_sessions_base]

  sql_table_name: `@{DJ_PROJECT_NAME}.@{DJ_GA_PROPERTY_ID}.ga_sessions_*` ;;

}
