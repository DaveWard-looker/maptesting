connection: "bigquery_personal_instance"

# include all the views
include: "/views/**/*.view"

datagroup: map_testing_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: map_testing_default_datagroup

explore: ge_2020_ie_constituency_details {}
