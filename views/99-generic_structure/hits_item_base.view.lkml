view: hits_item_base {
  extension: required

  dimension: id {
    primary_key: yes
    sql: ${hits.id} ;;
  }
  dimension: transactionId {label: "Transaction ID"}
  dimension: productName {
    label: "Product Name"
  }

  dimension: productCategory {label: "Product Catetory"}
  dimension: productSku {label: "Product Sku"}

  dimension: itemQuantity {
    description: "Should only be used as a dimension"
    label: "Item Quantity"
    hidden: yes
  }
  dimension: itemRevenue {
    description: "Should only be used as a dimension"
    label: "Item Revenue"
    hidden: yes
  }
  dimension: curencyCode {label: "Curency Code"}
  dimension: localItemRevenue {
    label:"Local Item Revenue"
    description: "Should only be used as a dimension"
  }

  measure: product_count {
    type: count_distinct
    sql: ${productSku} ;;
    drill_fields: [productName, productCategory, productSku, total_item_revenue]
  }
}
